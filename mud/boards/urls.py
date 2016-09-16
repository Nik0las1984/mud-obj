from django.conf.urls import *

from boards import views

urlpatterns = [
    url(ur'^all/', views.all, name='all'),
    url(ur'^news/', views.news, name='news'),
    url(ur'^veche/', views.veche, name='veche'),
    url(ur'^anons/', views.anons, name='anons'),
    url(ur'^ideas/', views.ideas, name='ideas'),
    url(ur'^coder/', views.coder, name='coder'),
    url(ur'^message/(?P<id>[\d]+)/$', views.message, name='message'),
]
