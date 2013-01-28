from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404

from objects.models import *

def index(request):
    objs = Object.objects
    
    name = request.GET.get('name')
    if name:
        objs = objs.filter(name__contains = name)
    else:
        name = ''
    
    paginator = Paginator(objs.order_by('name'), 25)
    page = request.GET.get('page')
    try:
        o = paginator.page(page)
    except PageNotAnInteger:
        o = paginator.page(1)
    except EmptyPage:
        o = paginator.page(paginator.num_pages)

    context = {'objects': o, 'name': name, }
    return render(request, 'objects/index.html', context)

def obj(request, name):
    o = get_object_or_404(Object, name = name)
    return render(request, 'objects/object.html', {'obj': o})
