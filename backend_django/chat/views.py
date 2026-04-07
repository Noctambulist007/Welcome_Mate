from rest_framework import views, permissions, status, generics
from rest_framework.response import Response
from django.conf import settings
from django.utils import timezone
from .models import ChatHistory
from .serializers import ChatHistorySerializer
from guides.models import Guide
from checklists.models import UserChecklistProgress
import google.generativeai as genai
import json
import time

class ChatView(views.APIView):
    permission_classes = (permissions.IsAuthenticated,)

    def post(self, request):
        start_time = time.time()
        user = request.user
        message = request.data.get('message')
        client_context = request.data.get('context', {})

        if not message:
            return Response({"error": "Message is required"}, status=status.HTTP_400_BAD_REQUEST)

        # 1. Gather Context
        # User Profile
        user_context = {
            "full_name": user.full_name,
            "country_code": user.country_code,
            "university": user.university.name if user.university else None,
            "arrival_date": str(user.arrival_date) if user.arrival_date else None,
            "role": user.role
        }

        # Recent Checklist Progress
        recent_progress = UserChecklistProgress.objects.filter(user=user, completed=True).order_by('-completed_at')[:5]
        progress_context = [f"Completed: {p.item.title}" for p in recent_progress]

        # Relevant Guides 
        keywords = message.split()
        relevant_guides = Guide.objects.filter(country_code=user.country_code or 'UK')
        # Very basic filtering
        matched_guides = []
        for guide in relevant_guides:
            if any(k.lower() in guide.title.lower() for k in keywords) or any(k.lower() in guide.body_markdown.lower() for k in keywords):
                matched_guides.append(guide)
        
        # Limit to top 3
        matched_guides = matched_guides[:3]
        guide_context = [{"id": str(g.id), "title": g.title, "snippet": g.body_markdown[:200]} for g in matched_guides]

        full_context = {
            "user": user_context,
            "progress": progress_context,
            "client_context": client_context,
            "guides": guide_context
        }

        # 2. Call Gemini
        genai.configure(api_key=settings.GEMINI_API_KEY)
        
        system_prompt = f"""You are WelcomeMate assistant for international students arriving in {user.country_code or 'the UK'}. 
Always cite at least one verified guide id when giving administrative advice if available in the context, and offer stepwise actions.
If the question is ambiguous ask 1 clarifying Q max.

Context:
User: {json.dumps(user_context)}
Recent Progress: {json.dumps(progress_context)}
Relevant Guides: {json.dumps(guide_context)}
"""

        try:
            model = genai.GenerativeModel('gemini-2.5-flash-lite')
            
            full_prompt = f"{system_prompt}\n\nUser: {message}"
            
            response = model.generate_content(full_prompt)
            reply_text = response.text
        except Exception as e:
            return Response({"error": f"Gemini API Error: {str(e)}"}, status=status.HTTP_503_SERVICE_UNAVAILABLE)

        # 3. Save History
        ChatHistory.objects.create(
            user=user,
            message=message,
            bot_reply=reply_text,
            context_snapshot=full_context
        )

        return Response({
            "replyText": reply_text,
            "sources": [], 
            "latencyMs": int((time.time() - start_time) * 1000)
        })

class ChatHistoryView(generics.ListAPIView):
    serializer_class = ChatHistorySerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        return ChatHistory.objects.filter(user=self.request.user).order_by('-created_at')
