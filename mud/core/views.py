# coding=utf-8

import datetime
import time

from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404
from django.db.models import Avg

import qsstats

from core.models import *

def online(request, data):
    q = data['query']
    qss = qsstats.QuerySetStats(q, 'date', Avg('total'))
    d = qss.time_series(data['date1'], data['date2'], interval = data['interval'])
    xdata = []
    for i in d:
        xdata.append(int(time.mktime(i[0].timetuple()) * 1000))
        
    charttype = "stackedAreaChart"
    extra = {"tooltip": {"y_start": "", "y_end": ""},
                   "date_format": data['td'],}
    kw1 = {"color": "#00aaaa",}
    chartdata = {
        'x': xdata,
        'name1': u'Онлайн', 'y1': map(lambda x: x[1], d), 'extra1': extra, "kwargs1": kw1,
    }
    req = {
        'charttype': charttype,
        'chartdata': chartdata,
        #'td': data['td'],
        'title': data['title'],
        'desc': data['desc'],
        'extra': {
            'x_is_date': True,
            'x_axis_format': data['td'],
            'tag_script_js': True,
            'jquery_on_ready': True,
        },
    }
    return render(request, 'core/charts.html', req)
 
def charts_day(request):
    data = {
        'query': Statistic.objects.all(),
        'date1': datetime.datetime.now() - datetime.timedelta(hours = 24),
        'date2': datetime.datetime.now(),
        'interval': 'hours',
        'td': "%H:00 (%d %b)",
        'title': u'за последние сутки',
        'desc': u'показано среднее за час'
        }
    return online(request, data)

    
def charts_month(request):
    data = {
        'query': Statistic.objects.all(),
        'date1': datetime.datetime.now() - datetime.timedelta(days = 30),
        'date2': datetime.datetime.now(),
        'interval': 'days',
        'td': "%d %b",
        'title': u'за последние 30 дней',
        'desc': u'показано среднее за сутки'
        }
    return online(request, data)
    
def charts_3month(request):
    data = {
        'query': Statistic.objects.all(),
        'date1': datetime.datetime.now() - datetime.timedelta(days = 90),
        'date2': datetime.datetime.now(),
        'interval': 'days',
        'td': "%d %b",
        'title': u'за последние 90 дней',
        'desc': u'показано среднее за сутки'
        }
    return online(request, data)

def news(request):
    q = News.objects
    paginator = Paginator(q.order_by('-date'), 25)
    page = request.GET.get('page')
    try:
        o = paginator.page(page)
    except PageNotAnInteger:
        o = paginator.page(1)
    except EmptyPage:
        o = paginator.page(paginator.num_pages)

    context = {'news': o, }
    return render(request, 'core/news.html', context)
