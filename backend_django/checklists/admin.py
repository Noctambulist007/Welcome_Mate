from django.contrib import admin
from .models import Checklist, ChecklistItem, UserChecklistProgress

class ChecklistItemInline(admin.TabularInline):
    model = ChecklistItem
    extra = 1

@admin.register(Checklist)
class ChecklistAdmin(admin.ModelAdmin):
    list_display = ('title', 'country_code', 'stage', 'order')
    list_filter = ('country_code', 'stage')
    search_fields = ('title',)
    inlines = [ChecklistItemInline]

@admin.register(UserChecklistProgress)
class UserChecklistProgressAdmin(admin.ModelAdmin):
    list_display = ('user', 'item', 'completed', 'completed_at')
    list_filter = ('completed', 'item__checklist')
    search_fields = ('user__email', 'item__title')
