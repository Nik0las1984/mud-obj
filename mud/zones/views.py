# coding=utf-8

import re

from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404
from django.http import Http404

from zones.models import *

def zones_graph(request):
    context = {'links': ZoneLink.objects.all(), 'menu_selected': 'zones',}
    return render(request, 'zones/graph.html', context)

def index(request):
    context = {'zones': Zone.objects.order_by('name').all(), 'menu_selected': 'zones', }
    return render(request, 'zones/index.html', context)

def zone(request, id):
    z = get_object_or_404(Zone, pk = id)
    return render(request, 'zones/zone.html', {'z': z, 'menu_selected': 'zones',})
