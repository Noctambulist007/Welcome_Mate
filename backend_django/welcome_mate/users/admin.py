from django.contrib import admin
from .models import User, University

@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    list_display = ('email', 'full_name', 'role', 'country_code', 'is_active')
    search_fields = ('email', 'full_name')
    list_filter = ('role', 'is_active', 'country_code')

@admin.register(University)
class UniversityAdmin(admin.ModelAdmin):
    list_display = ('name', 'city', 'country')
    search_fields = ('name', 'city', 'country')
