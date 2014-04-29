from django.conf.urls import patterns, url

from squad import views

urlpatterns = patterns('',
    url(ur'^index/', views.index, name='squad_index'),
    url(ur'^squad/(?P<name>.+)/$', views.by_name, name='squad_by_name'),
)
