# coding=utf-8

import re
import sys
import time

RE_STATUS = re.compile(r'\x1b\[0;32m(\d+)H\x1b\[0;37m \x1b\[0;32m(\d+)M\x1b\[0;37m (\d+)о Зауч:(\d+) (\d+)L (\d+)G Вых:(\S+)>')
RE_STATUS_NO_GROUPS = re.compile(r'\x1b\[\d;\d\dm\d+H\x1b\[\d;\d\dm \x1b\[\d;\d\dm\d+M\x1b\[\d;\d\dm \d+о Зауч:\d+ \d+L \d+G Вых:\S+>')

class MudClient():
    def __init__(self):
        self.transport = None
        self.out = []
        self.lines = ''
        self.paragraphs = ''
        self.plugins = []
        self.commands = {}
    
    def command(self, c):
        if c != '' and c[0] == '#':
            com = c.split(' ')[0][1:].strip()
            if self.commands.has_key(com):
                self.commands[com].on_command(c)
            else:
                self._out('Unknown command: %s\n' % c)
        else:
            self._out(c + '\n')
            self.transport.write(c + '\n')
    
    def _out(self, msg):
        for o in self.out:
            o.write(msg)
            o.flush()
    
    def on_data(self, d):
        self._lines(d)
        self._paragraph(d)
        self._out(d)
        
    def add_out(self, o):
        self.out.append(o)

    def set_transport(self, t):
        self.transport = t
    
    def _lines(self, d):
        self.lines = self.lines + d
        v = self.lines[:self.lines.rfind('\n')]
        for l in v.split('\n'):
            self.on_line(l)
        self.lines = self.lines[self.lines.rfind('\n') + 1:]
    
    def _paragraph(self, d):
        self.paragraphs = self.paragraphs + d
        m = RE_STATUS_NO_GROUPS.search(self.paragraphs)
        if m:
            v = self.paragraphs[:m.endpos]
            for l in RE_STATUS_NO_GROUPS.split(v):
                pass
                if l.strip() != '':
                    self.on_paragraph(l)
            self.paragraphs = self.paragraphs[m.endpos:]
    
    def on_line(self, l):
        for i in self.plugins:
            i.on_line(l)
    
    def on_paragraph(self, l):
        for i in self.plugins:
            i.on_paragraph(l)
    
    def _debug(self, m):
        print m

    def add_plugin(self, l):
        self.plugins.append(l)
        l.set_client(self)
    
    def set_command(self, c, l):
        self.commands[c] = l
        l.set_client(self)
    
    def login(self, u, p):
        time.sleep(1)
        self.command('5')
        time.sleep(1)
        self.command(u)
        time.sleep(1)
        self.command(p)
        self.command('')
    
    def exit(self):
        self.transport.exit()
        