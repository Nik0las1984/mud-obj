from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404

from channels.models import *

def channel(request, type, template):
    o = Channel.objects.filter(type__exact = type)
    
    paginator = Paginator(o.order_by('date').reverse(), 50)
    page = request.GET.get('page')
    try:
        o = paginator.page(page)
    except PageNotAnInteger:
        o = paginator.page(1)
    except EmptyPage:
        o = paginator.page(paginator.num_pages)

    context = {'messages': o, }
    return render(request, template, context)


def offtop(request):
    return channel(request, Channel.OFFTOP, 'channels/offtop.html')

def bolt(request):
    return channel(request, Channel.BOLT, 'channels/bolt.html')

def scream(request):
    return channel(request, Channel.SCREAM, 'channels/scream.html')
