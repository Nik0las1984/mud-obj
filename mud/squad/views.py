# coding=utf-8

import re
import datetime
import time

from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404
from django.http import Http404

from squad.models import *

def index(request):
    context = {'squads': Squad.objects.order_by('name').all(), }
    return render(request, 'squad/index.html', context)

def by_name(request, name):
    f = Squad.objects.filter(short_name__iexact = name)
    if f.count() > 0:
        sq = f[0]
        d = datetime.datetime.now() - datetime.timedelta(days = 30)
        info = sq.info.filter(date__gt = d).order_by("date")
        xdata = []
        exp_30 = []
        exp_total = []
        population = []
        for i in info:
            xdata.append(time.mktime(i.date.timetuple()))
            exp_30.append(i.exp_30 / 1000)
            exp_total.append(i.exp_total / 1000)
            population.append(i.population)
        
        extra = {"tooltip": {"y_start": "", "y_end": ""},
                   "date_format": "%d %b",}
        
        cd_exp_30 = {
            'x': xdata,
            'name1': u'Опыта за 30 дней (тыс)', 'y1': exp_30, 'extra1': extra,}
        
        cd_exp_total = {
            'x': xdata,
            'name1': u'Всего опыта (тыс)', 'y1': exp_total, 'extra1': extra,}
        
        cd_population = {
            'x': xdata,
            'name1': u'Людей', 'y1': population, 'extra1': extra,}
        
        charttype = "stackedAreaChart"
        
        req = {
            'charttype': charttype,
            'cd_exp_30': cd_exp_30,
            'cd_exp_total': cd_exp_total,
            'cd_population': cd_population,
            'squad': sq,
            'extra': {
            'x_is_date': True,
            'x_axis_format': "%d %b",
            'tag_script_js': True,
            'jquery_on_ready': True,
            
        },
    }
        return render(request, 'squad/squad.html', req)
    raise Http404
