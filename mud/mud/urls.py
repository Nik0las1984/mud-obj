from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
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
    url(r'^$', include('core.urls')),
)

# Captcha
urlpatterns += patterns('',
    url(r'^captcha/', include('captcha.urls')),
)

