from django.conf.urls import patterns, url

from channels import views

urlpatterns = patterns('',
    url(ur'^offtop/', views.offtop, name='offtop'),
    url(ur'^bolt/', views.bolt, name='bolt'),
    url(ur'^scream/', views.scream, name='scream'),
    url(ur'^all/', views.all, name='all'),
)
