from django.contrib import admin
from .models import Guide

@admin.register(Guide)
class GuideAdmin(admin.ModelAdmin):
    list_display = ('title', 'country_code', 'verified_by', 'verified_at')
    list_filter = ('country_code', 'verified_at')
    search_fields = ('title', 'body_markdown')
