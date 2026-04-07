from rest_framework import serializers
from .models import Notification, AdminAudit

class NotificationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Notification
        fields = ('id', 'type', 'payload', 'sent_at', 'read_at')
        read_only_fields = ('id', 'sent_at')

class AdminAuditSerializer(serializers.ModelSerializer):
    admin_email = serializers.CharField(source='admin.email', read_only=True)

    class Meta:
        model = AdminAudit
        fields = ('id', 'admin', 'admin_email', 'action', 'target_type', 'target_id', 'details', 'created_at')
        read_only_fields = ('id', 'created_at', 'admin')
