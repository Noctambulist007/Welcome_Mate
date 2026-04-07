from rest_framework import generics, permissions, status, views
from rest_framework.response import Response
from django.db.models import F
from .models import Post, Comment, PostUpvote
from .serializers import PostSerializer, CommentSerializer

class PostListView(generics.ListCreateAPIView):
    serializer_class = PostSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def get_queryset(self):
        queryset = Post.objects.all()
        country = self.request.query_params.get('country')
        tag = self.request.query_params.get('tag')
        
        if country:
            queryset = queryset.filter(country_code=country)
        if tag:
            queryset = queryset.filter(tags__contains=[tag])
            
        return queryset

    def perform_create(self, serializer):
        serializer.save(author=self.request.user)

class PostDetailView(generics.RetrieveDestroyAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def perform_destroy(self, instance):
        if instance.author != self.request.user and self.request.user.role != 'admin':
             raise permissions.PermissionDenied("You cannot delete this post.")
        instance.delete()

class CommentCreateView(generics.CreateAPIView):
    serializer_class = CommentSerializer
    permission_classes = (permissions.IsAuthenticated,)

    def perform_create(self, serializer):
        post_id = self.kwargs.get('post_id')
        post = Post.objects.get(id=post_id)
        serializer.save(author=self.request.user, post=post)

class PostUpvoteView(views.APIView):
    permission_classes = (permissions.IsAuthenticated,)

    def post(self, request, pk):
        try:
            post = Post.objects.get(pk=pk)
        except Post.DoesNotExist:
            return Response({"error": "Post not found"}, status=status.HTTP_404_NOT_FOUND)

        upvote, created = PostUpvote.objects.get_or_create(user=request.user, post=post)
        
        if created:
            post.upvotes_count = F('upvotes_count') + 1
            post.save()
            return Response({"ok": True, "upvoted": True})
        else:
            upvote.delete()
            post.upvotes_count = F('upvotes_count') - 1
            post.save()
            return Response({"ok": True, "upvoted": False})
