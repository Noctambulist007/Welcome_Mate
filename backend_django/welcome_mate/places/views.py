from rest_framework import views, permissions, status
from rest_framework.response import Response
from django.conf import settings
from django.utils import timezone
from datetime import timedelta
from .models import PlacesCache
import requests
import json

class NearbyPlacesView(views.APIView):
    permission_classes = (permissions.IsAuthenticated,)

    def get(self, request):
        lat = request.query_params.get('lat')
        lng = request.query_params.get('lng')
        place_type = request.query_params.get('type', 'bank')
        radius = request.query_params.get('radius', 2000)

        if not lat or not lng:
            return Response({"error": "lat and lng are required"}, status=status.HTTP_400_BAD_REQUEST)

        lat_round = round(float(lat), 3)
        lng_round = round(float(lng), 3)
        cache_key = f"{lat_round}_{lng_round}_{place_type}"

        api_key = getattr(settings, 'GOOGLE_MAPS_API_KEY', None)
        if not api_key:
             return Response({"error": "Google Maps API Key not configured"}, status=status.HTTP_503_SERVICE_UNAVAILABLE)

        url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json"
        params = {
            "location": f"{lat},{lng}",
            "radius": radius,
            "type": place_type,
            "key": api_key
        }

        try:
            resp = requests.get(url, params=params)
            data = resp.json()
            
            results = []
            if data.get('status') == 'OK':
                for result in data.get('results', []):
                    place_id = result.get('place_id')
                    
                    PlacesCache.objects.update_or_create(
                        id=place_id,
                        defaults={
                            "raw_response": result,
                            "lat": result['geometry']['location']['lat'],
                            "lng": result['geometry']['location']['lng'],
                            "place_type": place_type,
                            "fetched_at": timezone.now()
                        }
                    )
                    
                    results.append({
                        "placeId": place_id,
                        "name": result.get('name'),
                        "address": result.get('vicinity'),
                        "rating": result.get('rating'),
                        "user_ratings_total": result.get('user_ratings_total'),
                        "geometry": result.get('geometry')
                    })
            
            return Response(results)

        except Exception as e:
            return Response({"error": str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
