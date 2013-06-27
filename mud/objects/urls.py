from django.conf.urls import patterns, url

from objects import views

urlpatterns = patterns('',
    url(ur'^obj/(?P<id>[\d]+)/$', views.obj, name='obj'),
    url(ur'^obj/(?P<name>.+)/$', views.obj_by_name, name='obj_by_name'),
    url(r'^shop/', views.shop, name='shop'),
    url(r'^params/', views.params, name='params'),
    url(r'^add/', views.add, name='add'),
    url(r'^$', views.index, name='index')
)
