#!/usr/bin/env python
# encoding: utf-8

import codecs
import sys
import re
import datetime

from django.core.management import setup_environ
from mud import settings

setup_environ(settings)

from squad.models import *

p = sys.argv[1]
d = codecs.open(p, "r", "utf-8").read()

for s in re.split(ur'[\n\n]{2}', d):
    l = s.strip().split(u'\n')
    if len(l) > 1:
        d = datetime.datetime.strptime(l[0].strip(), "%Y-%m-%d %H:%M:%S.%f")
        squads = list(Squad.objects.all())
        for i in l[3:]:
            sq = squad_update(i.strip(), d)
            if sq:
                for j in squads:
                    if j.pk == sq.pk:
                        squads.remove(j)
                        break
        for sq in squads:
            if sq.active == True:
                SquadActivityLog.get_or_create(sq, d, False)
                sq.active = False
                sq.save()
