#!/usr/bin/env python
# encoding: utf-8

import codecs
import sys

from django.core.management import setup_environ
from mud import settings

setup_environ(settings)

from boards.models import *

path = sys.argv[1]
p = path[path.rfind('/') + 1:]

type = -1
if p.startswith('news_'):
    type = Board.NEWS
if p.startswith('veche_'):
    type = Board.VECHE
if p.startswith('anons_'):
    type = Board.ANONS
if p.startswith('ideas_'):
    type = Board.IDEAS
    
if type == -1:
    print "Error"
    sys.exit(1)
    
m = Board.parse_file(path)

if Board.has_message(m, type):
    print 'Already exists.'
else:
    Board.create(m, type)




