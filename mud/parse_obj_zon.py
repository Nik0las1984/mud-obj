#!/usr/bin/env python
# encoding: utf-8

import codecs
import sys

import os

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "mud.settings")
from django.conf import settings
import django
django.setup()

from zones.models import *
from objects.models import *

zon_ignore = [int(i) for i in file('zon.ignore')]

for i in sys.argv[1:]:
    vnum = i.split('/')[-1]
    vnum = int(vnum[:vnum.find('.')])
    if vnum not in zon_ignore:
        #print vnum
        q = Zone.objects.filter(vnum = vnum)
        if q.count() > 0:
            z = q[0]
            f = file(i)
            l = f.readline()
            while l:
                if l[0] == '#':
                    l = f.readline()
                    l = f.readline().strip()[:-1]
                    oq = Object.objects.filter(name__iexact = l)
                    if oq.count() > 0:
                        o = oq[0]
                        o.zones.add(z)
                        o.save()
                l = f.readline()
            f.close()
 
