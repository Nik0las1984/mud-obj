from django.conf.urls import patterns, url

from channels import views

urlpatterns = patterns('',
    url(ur'^offtop/', views.offtop, name='offtop'),
)
