from django.conf.urls import patterns, url

from core import views

urlpatterns = patterns('',
    url(ur'^charts/day/', views.charts_day, name='charts_day'),
    url(ur'^charts/month/', views.charts_month, name='charts_month'),
)
