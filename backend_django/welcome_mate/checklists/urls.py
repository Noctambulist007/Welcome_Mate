from django.urls import path
from .views import ChecklistListView, ChecklistDetailView, ChecklistProgressView

urlpatterns = [
    path('checklists', ChecklistListView.as_view(), name='checklist_list'),
    path('checklists/<uuid:pk>', ChecklistDetailView.as_view(), name='checklist_detail'),
    path('users/me/checklist-progress', ChecklistProgressView.as_view(), name='checklist_progress'),
]
