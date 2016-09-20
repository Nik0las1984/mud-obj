# coding=utf-8

import re

from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404
from django.http import Http404

from objects.models import *
from objects.forms import *
from core.models import Log
import reversion

def comment(request):
    if request.method == 'POST':
        f = ObjectCommentForm(request.POST)
    if f.is_valid():
        o = f.cleaned_data['oid']
        o.comment = f.cleaned_data['text']
        with reversion.create_revision():
            o.save()
            reversion.set_comment(o.comment)
    return obj(request, o.pk)

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
        # Set bad object
        try:
            bad = f.cleaned_data['bad']
            bo = Object.objects.filter(pk = bad)
            for b in bo:
                b.bad = True
                b.save()
        except:
            pass
        
        d = re.split(ur'\n\s*\n', f.cleaned_data['text'].strip().replace('\r', ''))
        print len(d)
        for i in d:
            try:
                if Object.has_obj_by_desc(i):
                    o = Object.get_obj_by_desc(i)
                    exists.append(o)
                else:
                    o = Object.create_from_string(i)
                    o.checked = False
                    o.save()
                    added.append(o)
                    
                    # Logging
                    Log.object_added(o.name, request)
            except:
                pass
        
    context = {'form': f, 'added': added, 'exists': exists, 'menu_selected': 'objects', 'tab_selected': 'add', }
    return render(request, 'objects/add.html', context)

def index(request):
    objs = Object.objects
    
    name = request.GET.get('name')
    if name:
        objs = objs.filter(name__icontains = name)
        
        # Logging
        Log.object_search(name, request)
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

    context = {'objects': o, 'name': name, 'menu_selected': 'objects', 'tab_selected': 'all',}
    return render(request, 'objects/index.html', context)

def obj(request, id):
    o = get_object_or_404(Object, pk = id)
    clazz = CreateObjectForm
    if request.user.is_authenticated():
        clazz = CreateObjectFormNoCaptcha
    
    f = clazz(initial = {'bad': o.id})
    fc = ObjectCommentForm(initial = {'text': o.comment, 'oid': o})
    return render(request, 'objects/object.html', {'obj': o, 'form': f, 'comment_form': fc, 'menu_selected': 'objects',})

def obj_by_name(request, name):
    f = Object.objects.filter(name__iexact = name)
    if f.count() == 1:
        clazz = CreateObjectForm
        if request.user.is_authenticated():
            clazz = CreateObjectFormNoCaptcha
        
        form = clazz(initial = {'bad': f[0].id})
        return render(request, 'objects/object.html', {'obj': f[0], 'form' : form, 'menu_selected': 'objects',})
    if f.count() > 1:
        context = {'objects': f, 'name': name, 'menu_selected': 'objects',}
        return render(request, 'objects/index.html', context)
    raise Http404

def shop(request):
    data = request.POST.get('data')
    if data:
        objs = Object.parse_baz(data)
        if len(objs['bad']) < 1 and len(objs['good']) < 1:
            objs = Object.parse_shop(data)
        if len(objs['bad']) < 1 and len(objs['good']) < 1:
            objs = Object.parse_inv(data)
    else:
        objs = {'good': [], 'bad': []}
        data = ''
        
    if request.POST.has_key('list') and request.user.is_superuser and len(objs['good']) > 0:
        if request.POST.get('list').strip() != '':
            l = ObjectsList()
            l.name = request.POST.get('list')
            l.user = request.user
            l.text = data
            l.save()
            for o in objs['good']:
                l.objs.add(o)
            l.save()
        
    context = {'objs': objs, 'data': data, 'menu_selected': 'objects', 'tab_selected': 'shop',}
    return render(request, 'objects/shop.html', context)

def params(request):
    queries_without_page = request.GET.copy()
    if queries_without_page.has_key('page'):
        del queries_without_page['page']

    f = ParamsForm(request.user)
    if request.method == 'GET':
        f = ParamsForm(request.user, request.GET)
    f.is_valid()
    
    objs = Object.objects.all()
    
    if f.cleaned_data['list'] != None:
        objs = f.cleaned_data['list'].objs
    
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
        objs = objs.filter(prop__prop = f.cleaned_data['prop'])
    
    c = objs.count()
    paginator = Paginator(objs.order_by('name'), 25)
    page = request.GET.get('page')
    try:
        o = paginator.page(page)
    except PageNotAnInteger:
        o = paginator.page(1)
    except EmptyPage:
        o = paginator.page(paginator.num_pages)
        
    # Logging
    Log.object_search(u'%s' % c, request)
        
    context = {'form': f, 'objs': o, 'count': c, 'queries': queries_without_page, 'menu_selected': 'objects', 'tab_selected': 'params',}
    return render(request, 'objects/params.html', context)
    