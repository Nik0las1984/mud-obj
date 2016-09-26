# coding=utf-8

import datetime
import time

from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404

import qsstats

from .models import *
from core.models import Log

def channel(request, o, title, tab_selected = 'all'):
    paginator = Paginator(o.order_by('date'), 50)
    page = request.GET.get('page')
    try:
        o = paginator.page(page)
    except PageNotAnInteger:
        o = paginator.page(paginator.num_pages)
    except EmptyPage:
        o = paginator.page(paginator.num_pages)
    
    Log.log(u'Просмотр каналов', request)

    context = {'mud_messages': o, 'title': title, 'menu_selected': 'channels', 'tab_selected': tab_selected,}
    return render(request, 'channels/index.html', context)


def by_user(request, user):
    q = Channel.objects.filter(user__name__iexact = user)
    return channel(request, q, u'Каналы пользователя %s (%s)' % (user, q.count()))
    
def offtop(request):
    return channel(request, Channel.objects.filter(type__exact = Channel.OFFTOP), u'Оффтоп', 'offtop')

def bolt(request):
    return channel(request, Channel.objects.filter(type__exact = Channel.BOLT), u'Болтать', 'bolt')

def scream(request):
    return channel(request, Channel.objects.filter(type__exact = Channel.SCREAM), u'Орать', 'scream')

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
    extra1 = {"tooltip": {"y_start": "", "y_end": ""},
                   "date_format": tooltip_date, "color": "#00aaaa",}
    extra2 = {"tooltip": {"y_start": "", "y_end": ""},
                   "date_format": tooltip_date, "color": "#cdcd00",}
    extra3 = {"tooltip": {"y_start": "", "y_end": ""},
                   "date_format": tooltip_date, "color": "#ffff00",}
    
    chartdata = {
        'x': xdata,
        'name1': u'Оффтоп', 'y1': map(lambda x: x[1], offtop), 'extra1': extra1,
        'name2': u'Болтать', 'y2': map(lambda x: x[1], bolt), 'extra2': extra2,
        'name3': u'Орать', 'y3': map(lambda x: x[1], scream), 'extra3': extra3,
    }
    
    charttype = "stackedAreaChart"
    data = {
        'charttype': charttype,
        'chartdata': chartdata,
        #'td': td,
        'title': title,
        'desc': desc,
        'extra': {
            'x_is_date': True,
            'x_axis_format': td,
            'tag_script_js': True,
            'jquery_on_ready': True,
        },
        'menu_selected': 'channels',
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
