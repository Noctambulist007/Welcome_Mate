from django.db import models
import uuid

class EmergencyContact(models.Model):
    TYPE_CHOICES = (
        ('emergency', 'Emergency'),
        ('embassy', 'Embassy'),
        ('helpline', 'Helpline'),
    )

    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=255)
    number = models.CharField(max_length=50)
    description = models.TextField(blank=True)
    country_code = models.CharField(max_length=10)
    type = models.CharField(max_length=20, choices=TYPE_CHOICES)
    
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.name} ({self.country_code})"
