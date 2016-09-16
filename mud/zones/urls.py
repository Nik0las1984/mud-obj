from django.conf.urls import *

from zones import views

urlpatterns = [
    url(ur'^graph/', views.zones_graph, name='zones_graph'),
    url(ur'^index/', views.index, name='zones_index'),
    url(ur'^zone/(?P<id>[\d]+)/$', views.zone, name='zone'),
]

