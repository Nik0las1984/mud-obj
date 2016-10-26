from django.conf.urls import *

from objects import views

urlpatterns = [
    url(ur'^obj/(?P<id>[\d]+)/$', views.obj, name='obj'),
    url(ur'^obj/(?P<name>.+)/$', views.obj_by_name, name='obj_by_name'),
    url(ur'^obj_json/(?P<name>.+)/$', views.obj_by_name_json, name='obj_by_name_json'),
    url(r'^shop/', views.shop, name='shop'),
    url(r'^params/', views.params, name='params'),
    url(r'^add/', views.add, name='add'),
    url(r'^add_json/', views.add_by_bot, name='add_by_bot'),
    url(r'^comment/', views.comment, name='comment'),
    url(r'^$', views.index, name='index')
]

