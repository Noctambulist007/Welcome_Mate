from django.urls import path
from rest_framework_simplejwt.views import TokenRefreshView
from .views import SignupView, LoginView, LogoutView, UserMeView

urlpatterns = [
    path('auth/signup', SignupView.as_view(), name='signup'),
    path('auth/login', LoginView.as_view(), name='login'),
    path('auth/refresh', TokenRefreshView.as_view(), name='token_refresh'),
    path('auth/logout', LogoutView.as_view(), name='logout'),
    path('users/me', UserMeView.as_view(), name='user_me'),
]
