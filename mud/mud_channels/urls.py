from django.conf.urls import *

from . import views

urlpatterns = [
    url(ur'^offtop/', views.offtop, name='offtop'),
    url(ur'^bolt/', views.bolt, name='bolt'),
    url(ur'^scream/', views.scream, name='scream'),
    url(ur'^all/', views.all, name='all'),
    url(ur'^charts/day/', views.charts_day, name='charts_day'),
    url(ur'^charts/week/', views.charts_week, name='charts_week'),
    url(ur'^charts/month/', views.charts_month, name='charts_month'),
    url(ur'^charts/3month/', views.charts_3month, name='charts_3month'),
    url(ur'^user/(?P<user>.+)/', views.by_user, name='by_user'),
    url(r'^add_json/', views.add_by_bot, name='add_by_bot'),
]
