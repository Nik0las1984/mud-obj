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

from map import Map

m = Map()

for z in m.zones.values():
    z1 = Zone.get_by_name(z.name)
    if z1:
        for e in z.exits.values():
            z2 = Zone.get_by_name(e.name)
            if z2 and not ZoneLink.has_link(z1, z2):
                zl = ZoneLink()
                zl.z1 = z1
                zl.z2 = z2
                zl.type = ZoneLink.WALK
                zl.save()
                #print zl
                
    else:
        print 'Cant find zone:', z.name
        if z.name and sys.argv[1] == 'yes':
            nz = Zone()
            nz.level = 0
            nz.name = z.name
            nz.save()
            print nz
            
