from django.conf.urls import patterns, url

from zones import views

urlpatterns = patterns('',
    url(ur'^graph/', views.zones_graph, name='zones_graph'),
    url(ur'^index/', views.index, name='zones_index'),
)