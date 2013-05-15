from django.conf.urls import patterns, url

from boards import views

urlpatterns = patterns('',
    url(ur'^all/', views.all, name='all'),
    url(ur'^news/', views.news, name='news'),
    url(ur'^veche/', views.veche, name='veche'),
    url(ur'^anons/', views.anons, name='anons'),
    url(ur'^ideas/', views.ideas, name='ideas'),
    url(ur'^message/(?P<id>[\d]+)/$', views.message, name='message'),
)
