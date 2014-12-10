#!/usr/bin/env python
# encoding: utf-8

import codecs
import sys

from django.core.management import setup_environ
from mud import settings

setup_environ(settings)

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
 
