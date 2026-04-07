from rest_framework import generics, permissions, status, views
from rest_framework.response import Response
from django.utils import timezone
from .models import Checklist, ChecklistItem, UserChecklistProgress
from .serializers import ChecklistSerializer, UserChecklistProgressSerializer

class ChecklistListView(generics.ListAPIView):
    serializer_class = ChecklistSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        country = self.request.query_params.get('country', 'UK')
        return Checklist.objects.filter(country_code=country).prefetch_related('items')

class ChecklistDetailView(generics.RetrieveAPIView):
    queryset = Checklist.objects.all()
    serializer_class = ChecklistSerializer
    permission_classes = (permissions.IsAuthenticated,)

class ChecklistProgressView(views.APIView):
    permission_classes = (permissions.IsAuthenticated,)

    def get(self, request):
        progress = UserChecklistProgress.objects.filter(user=request.user)
        serializer = UserChecklistProgressSerializer(progress, many=True)
        return Response(serializer.data)

    def post(self, request):
        item_id = request.data.get('itemId')
        completed = request.data.get('completed', True)
        
        try:
            item = ChecklistItem.objects.get(id=item_id)
        except ChecklistItem.DoesNotExist:
            return Response({"error": "Item not found"}, status=status.HTTP_404_NOT_FOUND)

        progress, created = UserChecklistProgress.objects.get_or_create(user=request.user, item=item)
        progress.completed = completed
        if completed:
            progress.completed_at = timezone.now()
        else:
            progress.completed_at = None
        progress.save()

        return Response({"ok": True, "completed": completed})
