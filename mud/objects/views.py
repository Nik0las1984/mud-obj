# coding=utf-8

import re

from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404

from objects.models import *
from objects.forms import *

def add(request):
    info = ''
    added = []
    exists = []
    o = None
    clazz = CreateObjectForm
    if request.user.is_authenticated():
        clazz = CreateObjectFormNoCaptcha
    
    f = clazz()
        
    if request.method == 'POST':
        f = clazz(request.POST)
    if f.is_valid():
        d = re.split(ur'\n\s*\n', f.cleaned_data['text'].strip().replace('\r', ''))
        print len(d)
        for i in d:
            try:
                name = Object.get_name_from_desc(i)
                t = Object.get_type_from_desc(i)
                if Object.has_obj(name or '', t):
                    o = Object.get_obj(name, t)
                    exists.append(o)
                else:
                    o = Object.create_from_string(i)
                    o.checked = False
                    o.save()
                    added.append(o)
            except:
                pass
        
    context = {'form': f, 'added': added, 'exists': exists, }
    return render(request, 'objects/add.html', context)

def index(request):
    objs = Object.objects
    
    name = request.GET.get('name')
    if name:
        objs = objs.filter(name__icontains = name)
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

def obj(request, id):
    o = get_object_or_404(Object, pk = id)
    return render(request, 'objects/object.html', {'obj': o})

def shop(request):
    data = request.POST.get('data')
    if data:
        objs = Object.parse_baz(data)
        if len(objs['bad']) < 1 and len(objs['good']) < 1:
            objs = Object.parse_shop(data)
        if len(objs['bad']) < 1 and len(objs['good']) < 1:
            objs = Object.parse_inv(data)
    else:
        objs = []
        data = ''
    context = {'objs': objs, 'data': data, }
    return render(request, 'objects/shop.html', context)

def params(request):
    f = ParamsForm()
    if request.method == 'GET':
        f = ParamsForm(request.GET)
    f.is_valid()
    
    objs = Object.objects.all()
    if f.cleaned_data['name'] != '':
        objs = objs.filter(name__icontains = f.cleaned_data['name'])
    if f.cleaned_data['weapon']:
        objs = objs.filter(weapon = f.cleaned_data['weapon'])
    if f.cleaned_data['wear']:
        objs = objs.filter(wear = f.cleaned_data['wear'])
    if f.cleaned_data['type']:
        objs = objs.filter(type = f.cleaned_data['type'])
    if f.cleaned_data['material']:
        objs = objs.filter(material = f.cleaned_data['material'])
    if f.cleaned_data['no_avail']:
        objs = objs.filter(no_use = f.cleaned_data['no_use'])
    if f.cleaned_data['no_avail']:
        objs = objs.filter(no_avail = f.cleaned_data['no_avail'])
    if f.cleaned_data['extra']:
        objs = objs.filter(extra = f.cleaned_data['extra'])
    if f.cleaned_data['affects']:
        objs = objs.filter(affects = f.cleaned_data['affects'])
    if f.cleaned_data['prop']:
        objs = objs.filter(prop = f.cleaned_data['prop'])
    
    c = objs.count()
    objs = objs[:30]
    context = {'form': f, 'objs': objs, 'count': c}
    return render(request, 'objects/params.html', context)
    