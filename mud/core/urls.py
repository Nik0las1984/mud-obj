from django.conf.urls import patterns, url

from core import views

urlpatterns = patterns('',
    url(ur'^core/charts/day/', views.charts_day, name='charts_day'),
    url(ur'^core/charts/month/', views.charts_month, name='charts_month'),
    url(ur'^core/charts/3month/', views.charts_3month, name='charts_3month'),
    url(ur'^$', views.news, name='news'),
)
