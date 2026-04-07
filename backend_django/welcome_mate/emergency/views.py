from rest_framework import generics, permissions
from .models import EmergencyContact
from .serializers import EmergencyContactSerializer

class EmergencyContactListView(generics.ListAPIView):
    serializer_class = EmergencyContactSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        country = self.request.query_params.get('country', 'UK')
        return EmergencyContact.objects.filter(country_code=country)
