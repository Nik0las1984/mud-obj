from django.conf.urls import patterns, url

from objects import views

urlpatterns = patterns('',
    url(ur'^obj/(?P<name>[\w\s-]+)/$', views.obj, name='obj'),
    url(r'^$', views.index, name='index')
)
