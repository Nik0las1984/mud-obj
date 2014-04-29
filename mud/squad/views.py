# coding=utf-8

import re

from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404
from django.http import Http404

from squad.models import *

def index(request):
    context = {'squads': Squad.objects.order_by('name').all(), }
    return render(request, 'squad/index.html', context)

def by_name(request, name):
    f = Squad.objects.filter(short_name__iexact = name)
    if f.count() > 0:
        return render(request, 'squad/squad.html', { 'squad': f[0], })
    raise Http404
