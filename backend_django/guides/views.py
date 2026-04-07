from rest_framework import generics, permissions
from .models import Guide
from .serializers import GuideSerializer

class GuideListView(generics.ListAPIView):
    serializer_class = GuideSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        country = self.request.query_params.get('country', 'UK')
        stage = self.request.query_params.get('stage')
        queryset = Guide.objects.filter(country_code=country)
        if stage:
            queryset = queryset.filter(tags__contains=[stage]) 
        return queryset

class CareerResourcesView(generics.ListAPIView):
    serializer_class = GuideSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        country = self.request.query_params.get('country', 'UK')
        return Guide.objects.filter(country_code=country, category='career')

class GuideDetailView(generics.RetrieveAPIView):
    queryset = Guide.objects.all()
    serializer_class = GuideSerializer
    permission_classes = (permissions.IsAuthenticated,)
