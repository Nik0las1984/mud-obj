#!/usr/bin/env python
# encoding: utf-8

import codecs
import sys
import os

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "mud.settings")
from django.conf import settings
import django
django.setup()

from objects.models import *

d = codecs.open(sys.argv[1], "r", "utf-8").read()
if d[0] != u'П':
    d = d[1:]
objs = re.split(ur'[\n\r]{3}', d)

for o in objs:
    if o.strip() != "":
        if not Object.has_obj_by_desc(o):
            print o
            Object.create_or_get_from_string(o).out()

print "Total:", Object.objects.count()

