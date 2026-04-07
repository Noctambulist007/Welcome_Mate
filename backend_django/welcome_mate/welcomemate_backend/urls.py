from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('users.urls')),
    path('api/', include('checklists.urls')),
    path('api/', include('guides.urls')),
    path('api/', include('community.urls')),
    path('api/', include('chat.urls')),
    path('api/', include('places.urls')),
    path('api/', include('notifications.urls')),
    path('api/', include('emergency.urls')),
]

from django.conf import settings
from django.conf.urls.static import static

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
