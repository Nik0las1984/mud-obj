#!/usr/bin/env python
# encoding: utf-8

import codecs
import sys

from django.core.management import setup_environ
from mud import settings

setup_environ(settings)

from objects.models import *

objs = codecs.open(sys.argv[1], "r", "utf-8").read().split("\n\n")

for o in objs:
    print Object.create_or_get_from_string(o)

