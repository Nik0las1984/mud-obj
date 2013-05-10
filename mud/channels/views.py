# coding=utf-8

from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404

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


def offtop(request):
    return channel(request, Channel.objects.filter(type__exact = Channel.OFFTOP), u'Оффтоп')

def bolt(request):
    return channel(request, Channel.objects.filter(type__exact = Channel.BOLT), u'Болтать')

def scream(request):
    return channel(request, Channel.objects.filter(type__exact = Channel.SCREAM), u'Орать')

def all(request):
    return channel(request, Channel.objects.all(), u'Все')
