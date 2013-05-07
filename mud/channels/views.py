from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404

from channels.models import *

def offtop(request):
    o = Channel.objects.filter(type__exact = Channel.OFFTOP)
    
    paginator = Paginator(o.order_by('date').reverse(), 50)
    page = request.GET.get('page')
    try:
        o = paginator.page(page)
    except PageNotAnInteger:
        o = paginator.page(1)
    except EmptyPage:
        o = paginator.page(paginator.num_pages)

    context = {'messages': o, }
    return render(request, 'channels/offtop.html', context)

