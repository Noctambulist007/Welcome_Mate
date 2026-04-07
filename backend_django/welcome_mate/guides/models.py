from django.db import models
from django.conf import settings
import uuid

class Guide(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    title = models.CharField(max_length=255)
    body_markdown = models.TextField()
    country_code = models.CharField(max_length=10)
    tags = models.JSONField(default=list, blank=True)
    category = models.CharField(max_length=20, default='settlement', choices=(
        ('settlement', 'Settlement'),
        ('career', 'Career'),
        ('academic', 'Academic'),
        ('other', 'Other'),
    ))
    
    verified_by = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.SET_NULL, null=True, blank=True, related_name='verified_guides')
    verified_at = models.DateTimeField(null=True, blank=True)
    
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title
