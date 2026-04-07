from django.contrib import admin
from .models import Notification, AdminAudit

@admin.register(Notification)
class NotificationAdmin(admin.ModelAdmin):
    list_display = ('user', 'type', 'sent_at', 'read_at')
    list_filter = ('type', 'sent_at')

@admin.register(AdminAudit)
class AdminAuditAdmin(admin.ModelAdmin):
    list_display = ('admin', 'action', 'target_type', 'created_at')
    list_filter = ('action', 'created_at')
