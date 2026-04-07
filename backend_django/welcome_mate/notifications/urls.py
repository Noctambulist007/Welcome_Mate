from django.urls import path
from .views import (
    NotificationListView, NotificationSubscribeView,
    AdminReportListView, AdminVerifyGuideView, AdminBanUserView
)

urlpatterns = [
    # Notifications
    path('notifications', NotificationListView.as_view(), name='notification_list'),
    path('notifications/subscribe', NotificationSubscribeView.as_view(), name='notification_subscribe'),

    # Admin
    path('admin/reports', AdminReportListView.as_view(), name='admin_reports'),
    path('admin/verify-guide/<uuid:pk>', AdminVerifyGuideView.as_view(), name='admin_verify_guide'),
    path('admin/ban-user/<uuid:pk>', AdminBanUserView.as_view(), name='admin_ban_user'),
]
