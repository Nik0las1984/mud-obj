# coding=utf-8

auto_login = False

try:
    from local_config import *
except ImportError, e:
    print 'Unable to load local_config.py:', e

