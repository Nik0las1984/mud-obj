# coding=utf-8

import datetime
import time

from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404

import qsstats

from channels.models import *

def channel(request, o, title):
    paginator = Paginator(o.order_by('date'), 50)
    page = request.GET.get('page')
    try:
        o = paginator.page(page)
    except PageNotAnInteger:
        o = paginator.page(paginator.num_pages)
    except EmptyPage:
        o = paginator.page(paginator.num_pages)

    context = {'messages': o, 'title': title}
    return render(request, 'channels/index.html', context)


def by_user(request, user):
    q = Channel.objects.filter(user__name__iexact = user)
    return channel(request, q, u'Каналы пользователя %s (%s)' % (user, q.count()))
    
def offtop(request):
    return channel(request, Channel.objects.filter(type__exact = Channel.OFFTOP), u'Оффтоп')

def bolt(request):
    return channel(request, Channel.objects.filter(type__exact = Channel.BOLT), u'Болтать')

def scream(request):
    return channel(request, Channel.objects.filter(type__exact = Channel.SCREAM), u'Орать')

def all(request):
    q = Channel.objects.all()
    return channel(request, q, u'Все (%s)' % q.count())

def charts(request, d1, d2, interval, td, title, desc):
    q = Channel.objects.filter(type = Channel.OFFTOP)
    qss = qsstats.QuerySetStats(q, 'date')
    offtop = qss.time_series(d1, d2, interval = interval)
    
    q = Channel.objects.filter(type = Channel.BOLT)
    qss = qsstats.QuerySetStats(q, 'date')
    bolt = qss.time_series(d1, d2, interval = interval)
    
    q = Channel.objects.filter(type = Channel.SCREAM)
    qss = qsstats.QuerySetStats(q, 'date')
    scream = qss.time_series(d1, d2, interval = interval)
    
    xdata = []
    for i in offtop:
        xdata.append(int(time.mktime(i[0].timetuple()) * 1000))
    
    tooltip_date = td
    extra = {"tooltip": {"y_start": "", "y_end": ""},
                   "date_format": tooltip_date,}
    kw1 = {"color": "#00aaaa",}
    kw2 = {"color": "#cdcd00",}
    kw3 = {"color": "#ffff00",}
    
    chartdata = {
        'x': xdata,
        'name1': u'Оффтоп', 'y1': map(lambda x: x[1], offtop), 'extra1': extra, "kwargs1": kw1,
        'name2': u'Болтать', 'y2': map(lambda x: x[1], bolt), 'extra2': extra, "kwargs2": kw2,
        'name3': u'Орать', 'y3': map(lambda x: x[1], scream), 'extra3': extra, "kwargs3": kw3,
    }
    
    charttype = "stackedAreaChart"
    data = {
        'charttype': charttype,
        'chartdata': chartdata,
        'td': td,
        'title': title,
        'desc': desc,
    }
    return render(request, 'channels/charts.html', data)

def charts_day(request):
    return charts(request,
        datetime.datetime.now() - datetime.timedelta(hours = 24),
        datetime.datetime.now(),
        'hours',
        "%H:00 (%d %b)",
        u'сутки',
        u'показано среднее за час')
    
def charts_week(request):
    return charts(request,
        datetime.datetime.now() - datetime.timedelta(days = 7),
        datetime.datetime.now(),
        'hours',
        "%d %b",
        u'неделю',
        u'показано среднее за час')

def charts_month(request):
    return charts(request,
        datetime.datetime.now() - datetime.timedelta(days = 30),
        datetime.datetime.now(),
        'days',
        "%d %b",
        u'месяц',
        u'показано среднее за сутки')
        
def charts_3month(request):
    return charts(request,
        datetime.datetime.now() - datetime.timedelta(days = 90),
        datetime.datetime.now(),
        'days',
        "%d %b",
        u'3 месяца',
        u'показано среднее за сутки')
