from rest_framework import serializers
from .models import Guide

class GuideSerializer(serializers.ModelSerializer):
    verified_by_name = serializers.CharField(source='verified_by.full_name', read_only=True)

    class Meta:
        model = Guide
        fields = ('id', 'title', 'body_markdown', 'country_code', 'tags', 'verified_by_name', 'verified_at', 'updated_at')
