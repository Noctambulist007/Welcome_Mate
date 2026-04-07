from rest_framework import generics, permissions, status, views
from rest_framework.response import Response
from django.utils import timezone
from .models import Notification, AdminAudit
from .serializers import NotificationSerializer, AdminAuditSerializer
from users.models import User
from guides.models import Guide

class NotificationListView(generics.ListAPIView):
    serializer_class = NotificationSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        return Notification.objects.filter(user=self.request.user)

class NotificationSubscribeView(views.APIView):
    permission_classes = (permissions.IsAuthenticated,)

    def post(self, request):
        token = request.data.get('token')
        return Response({"ok": True})

# Admin Views

class IsAdminUser(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user and request.user.role == 'admin'

class AdminReportListView(generics.ListAPIView):
    permission_classes = (permissions.IsAuthenticated, IsAdminUser)
    serializer_class = AdminAuditSerializer 
    queryset = AdminAudit.objects.all() 

class AdminVerifyGuideView(views.APIView):
    permission_classes = (permissions.IsAuthenticated, IsAdminUser)

    def post(self, request, pk):
        try:
            guide = Guide.objects.get(pk=pk)
            guide.verified_by = request.user
            guide.verified_at = timezone.now()
            guide.save()

            AdminAudit.objects.create(
                admin=request.user,
                action='verify_guide',
                target_type='guide',
                target_id=str(guide.id)
            )
            return Response({"ok": True})
        except Guide.DoesNotExist:
            return Response({"error": "Guide not found"}, status=status.HTTP_404_NOT_FOUND)

class AdminBanUserView(views.APIView):
    permission_classes = (permissions.IsAuthenticated, IsAdminUser)

    def post(self, request, pk):
        try:
            user = User.objects.get(pk=pk)
            user.is_active = False
            user.save()

            AdminAudit.objects.create(
                admin=request.user,
                action='ban_user',
                target_type='user',
                target_id=str(user.id)
            )
            return Response({"ok": True})
        except User.DoesNotExist:
            return Response({"error": "User not found"}, status=status.HTTP_404_NOT_FOUND)
