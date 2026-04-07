from django.urls import path
from .views import GuideListView, GuideDetailView, CareerResourcesView

urlpatterns = [
    path('guides', GuideListView.as_view(), name='guide_list'),
    path('guides/<uuid:pk>', GuideDetailView.as_view(), name='guide_detail'),
    path('career', CareerResourcesView.as_view(), name='career_resources'),
]
