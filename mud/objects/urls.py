from django.conf.urls import patterns, url

from objects import views

urlpatterns = patterns('',
    url(ur'^obj/(?P<name>[\w\s-]+)/$', views.obj, name='obj'),
    url(r'^shop/', views.shop, name='shop'),
    url(r'^params/', views.params, name='params'),
    url(r'^$', views.index, name='index')
)
