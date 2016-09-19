from django.conf.urls import *
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns


# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = [
    # Examples:
    # url(r'^$', 'mud.views.home', name='home'),
    # url(r'^mud/', include('mud.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    url(r'^objects/', include('objects.urls')),
    url(r'^channels/', include('channels.urls')),
    url(r'^boards/', include('boards.urls')),
    url(r'^zones/', include('zones.urls')),
    url(r'^squads/', include('squad.urls')),
    url(r'^core/', include('core.urls')),
    url(r'^', include('core.urls')),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

urlpatterns += staticfiles_urlpatterns()


# Captcha
urlpatterns += [
    url(r'^captcha/', include('captcha.urls')),
]

