from django.conf.urls import *

from squad import views

urlpatterns = [
    url(ur'^index/', views.index, name='squad_index'),
    url(ur'^squad/(?P<name>.+)/$', views.by_name, name='squad_by_name'),
]

