from django.urls import path
from .views import PostListView, PostDetailView, CommentCreateView, PostUpvoteView

urlpatterns = [
    path('posts', PostListView.as_view(), name='post_list'),
    path('posts/<uuid:pk>', PostDetailView.as_view(), name='post_detail'),
    path('posts/<uuid:post_id>/comments', CommentCreateView.as_view(), name='post_comment'),
    path('posts/<uuid:pk>/upvote', PostUpvoteView.as_view(), name='post_upvote'),
]
