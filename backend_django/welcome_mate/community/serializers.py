from rest_framework import serializers
from .models import Post, Comment, PostUpvote

class CommentSerializer(serializers.ModelSerializer):
    author_name = serializers.CharField(source='author.full_name', read_only=True)

    class Meta:
        model = Comment
        fields = ('id', 'post', 'author', 'author_name', 'body', 'parent_comment', 'created_at')
        read_only_fields = ('id', 'author', 'created_at', 'post')

class PostSerializer(serializers.ModelSerializer):
    author_name = serializers.CharField(source='author.full_name', read_only=True)
    comments_count = serializers.SerializerMethodField()
    comments = CommentSerializer(many=True, read_only=True)
    is_upvoted = serializers.SerializerMethodField()

    class Meta:
        model = Post
        fields = ('id', 'author', 'author_name', 'title', 'body', 'country_code', 'tags', 'upvotes_count', 'comments_count', 'comments', 'is_upvoted', 'created_at')
        read_only_fields = ('id', 'author', 'upvotes_count', 'created_at')

    def get_comments_count(self, obj):
        return obj.comments.count()

    def get_is_upvoted(self, obj):
        user = self.context.get('request').user
        if user.is_authenticated:
            return PostUpvote.objects.filter(user=user, post=obj).exists()
        return False
