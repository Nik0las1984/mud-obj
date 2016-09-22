# -*- coding: utf-8 -*-

from __future__ import unicode_literals

from django.conf.urls import url

from . import views


urlpatterns = [
    url(r'^$', views.IndexView.as_view(), name='index'),

    url(r'^(?P<pk>\d+)/$', views.detail, kwargs={'slug': "", }, name='detail'),
    url(r'^(?P<pk>\d+)/(?P<slug>[\w-]+)/$', views.detail, name='detail'),
]