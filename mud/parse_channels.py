#!/usr/bin/env python
# encoding: utf-8

import codecs
import sys
import re

from django.core.management import setup_environ
from mud import settings

setup_environ(settings)

from channels.models import *

p = sys.argv[1]
d = codecs.open(p, "r", "utf-8").read()
ch = re.split(ur'[\n\n]{2}', d)

p = p[p.rfind('/') + 1:]

type = -1
if p.startswith('offtop_'):
    type = Channel.OFFTOP
if p.startswith('bolt_'):
    type = Channel.BOLT
if p.startswith('scream_'):
    type = Channel.SCREAM

if type == -1:
    print "Error"
    sys.exit(1)
    
for c in ch:
    if c.strip() == '':
        continue
    d = Channel.get_time_from_string(c.strip())
    if not Channel.has_message(d, type):
        Channel.create_from_string(c.strip(), type)



