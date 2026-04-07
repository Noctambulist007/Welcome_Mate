from django.contrib import admin
from .models import PlacesCache

@admin.register(PlacesCache)
class PlacesCacheAdmin(admin.ModelAdmin):
    list_display = ('id', 'place_type', 'lat', 'lng', 'fetched_at')
    list_filter = ('place_type', 'fetched_at')
