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

zon_ignore = [int(i) for i in file('zon.ignore')]

class Zon:
    def __init__(self, path):
        self.parse(path)
    
    def parse(self, path):
        self.vnum = -1
        self.author = ''
        self.name = ''
        f = file(path, 'r')
        for i in f:
            j = i.strip()
            if j[0] == '*':
                continue
            if j[0] == '#' and self.vnum < 0:
                self.vnum = int(j[1:])
            if self.vnum > 0 and self.name == '' and j[-1] == '~':
                self.name = j[:-1]
            if self.author == '' and j[0] == '^' and j[-1] == '~':
                self.author = j[1:-1]
        f.close()


for i in sys.argv[1:]:
    z = Zon(i)
    if z.vnum not in zon_ignore:
        if Zone.objects.filter(vnum = z.vnum).count() > 0:
            print "Ignore zone %s" % z.vnum
        else:
            f = Zone.objects.filter(name = z.name)
            nz = None
            if f.count() > 0:
                nz = f[0]
            else:
                nz = Zone()
                nz.level = 0
            nz.name = z.name
            nz.vnum = z.vnum
            nz.author = z.author
            nz.save()
    