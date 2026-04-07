from django.urls import path
from .views import EmergencyContactListView

urlpatterns = [
    path('emergency', EmergencyContactListView.as_view(), name='emergency-list'),
]
