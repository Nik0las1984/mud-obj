#!/usr/bin/env python
# encoding: utf-8

import codecs
import sys

from django.core.management import setup_environ
from mud import settings

setup_environ(settings)

from objects.models import *

if len(sys.argv) > 1:
    for i in Object.objects.filter(name__contains = sys.argv[1].decode(sys.getfilesystemencoding())).all():
        i.out()
        print
else:
    for i in Object.objects.all():
        print i

