#!/usr/bin/env python
# encoding: utf-8

import codecs
import sys

from django.core.management import setup_environ
from mud import settings

setup_environ(settings)

from core.models import *

path = sys.argv[1]

for l in codecs.open(path, "r", "utf-8").readlines():
    print Statistic.add(l)
