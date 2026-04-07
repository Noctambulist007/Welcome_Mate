from django.db import models
import uuid

class PlacesCache(models.Model):
    id = models.CharField(max_length=255, primary_key=True) 
    raw_response = models.JSONField()
    lat = models.FloatField()
    lng = models.FloatField()
    place_type = models.CharField(max_length=50)
    fetched_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.id
