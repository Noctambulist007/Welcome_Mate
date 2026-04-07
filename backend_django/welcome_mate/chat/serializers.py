from rest_framework import serializers
from .models import ChatHistory

class ChatHistorySerializer(serializers.ModelSerializer):
    class Meta:
        model = ChatHistory
        fields = ('id', 'user', 'message', 'bot_reply', 'context_snapshot', 'created_at')
        read_only_fields = ('id', 'user', 'created_at')
