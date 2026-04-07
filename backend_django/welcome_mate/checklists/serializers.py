from rest_framework import serializers
from .models import Checklist, ChecklistItem, UserChecklistProgress

class ChecklistItemSerializer(serializers.ModelSerializer):
    is_completed = serializers.SerializerMethodField()

    class Meta:
        model = ChecklistItem
        fields = ('id', 'title', 'description', 'required_docs', 'order', 'is_completed')

    def get_is_completed(self, obj):
        user = self.context.get('request').user
        if user.is_authenticated:
            return UserChecklistProgress.objects.filter(user=user, item=obj, completed=True).exists()
        return False

class ChecklistSerializer(serializers.ModelSerializer):
    items = ChecklistItemSerializer(many=True, read_only=True)

    class Meta:
        model = Checklist
        fields = ('id', 'slug', 'title', 'country_code', 'stage', 'order', 'items')

class UserChecklistProgressSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserChecklistProgress
        fields = ('id', 'item', 'completed', 'completed_at', 'note')
        read_only_fields = ('id', 'completed_at')
