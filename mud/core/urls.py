from django.conf.urls import *

from core import views

urlpatterns = [
    url(ur'^charts/day/', views.charts_day, name='charts_day'),
    url(ur'^charts/month/', views.charts_month, name='charts_month'),
    url(ur'^charts/3month/', views.charts_3month, name='charts_3month'),
    url(ur'^$', views.news, name='news'),
]
