#coding: utf-8

import re
import datetime

RE_HOUR = re.compile(r'\x1b\[1;31mМинул час\.\x1b\[0;37m')

class HourPlugin():
    def __init__(self):
        pass
    
    def on_line(self, l):
        if RE_HOUR.match(l):
            self.client.command('')

    def on_paragraph(self, p):
        pass
    
    def set_client(self, c):
        self.client = c

class OfftopLogger():
    RE_OFFTOP = re.compile(r'\x1b\[0;36m\[оффтоп\] (\S+) : (.*)[\n\r]*\x1b\[0;37m')
    
    def __init__(self):
        pass
    
    def on_line(self, l):
        pass

    def on_paragraph(self, p):
        s = OfftopLogger.RE_OFFTOP.search(p.strip())
        if s:
            self.log(s.groups())
    
    def set_client(self, c):
        self.client = c
    
    def log(self, m):
        path = 'offtop_%s.txt' % datetime.datetime.now().strftime('%Y%m%d')
        f = open(path, 'a')
        f.write('%s %s %s\n\n' % (datetime.datetime.now(), m[0], m[1]))

class BoltLogger():
    RE_BOLT = re.compile(r'\x1b\[0;33m(.+) заметил.* : (.*)[\n\r]*\x1b\[0;37m')
    
    def __init__(self):
        pass
    
    def on_line(self, l):
        pass

    def on_paragraph(self, p):
        s = BoltLogger.RE_BOLT.search(p.strip())
        if s:
            self.log(s.groups())
    
    def set_client(self, c):
        self.client = c
    
    def log(self, m):
        path = 'bolt_%s.txt' % datetime.datetime.now().strftime('%Y%m%d')
        f = open(path, 'a')
        f.write('%s %s %s\n\n' % (datetime.datetime.now(), m[0], m[1]))

class ScreamLogger():
    RE_SCREAM = re.compile(r'\x1b\[1;33m(.+) заорал.* : (.*)[\n\r]*\x1b\[0;37m')
    
    def __init__(self):
        pass
    
    def on_line(self, l):
        pass

    def on_paragraph(self, p):
        s = ScreamLogger.RE_SCREAM.search(p.strip())
        if s:
            self.log(s.groups())
    
    def set_client(self, c):
        self.client = c
    
    def log(self, m):
        path = 'scream_%s.txt' % datetime.datetime.now().strftime('%Y%m%d')
        f = open(path, 'a')
        f.write('%s %s %s\n\n' % (datetime.datetime.now(), m[0], m[1]))
        