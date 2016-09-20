from django.conf.urls import *
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from wiki.urls import get_pattern as get_wiki_pattern
from django_nyt.urls import get_pattern as get_nyt_pattern


# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

# Wiki
urlpatterns = [
    url(r'^wiki/notifications/', get_nyt_pattern()),
    url(r'^wiki/', get_wiki_pattern())
]


urlpatterns += [
    # Examples:
    # url(r'^$', 'mud.views.home', name='home'),
    # url(r'^mud/', include('mud.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    url(r'^objects/', include('objects.urls')),
    url(r'^channels/', include('mud_channels.urls')),
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

