#-*- coding: utf-8 -*-

from __future__ import unicode_literals

from django.conf.urls import patterns, url

urlpatterns = patterns("tests.views",
    url(r'^page/$', 'pagination_ajax', name='pagination-ajax'),
    url(r'^page/(?P<pk>\d+)/$', 'pagination_ajax', name='pagination-ajax'),
)