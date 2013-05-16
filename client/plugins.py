#coding: utf-8

import re
import datetime
import time

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

class BoardsLogger():
    RE_BOARDS = re.compile(r'\d\)[\s]+([\S]+)[\s]+\[[\s]*([\d]+)\|([\d]+)\][\s]+.*')
    RE_MESSAGE = re.compile(r'\[([\d]+)\] (\d\d):(\d\d) (\d\d)-(\d\d)-(\d\d\d\d) \(([^\(^\)]+)\) ::([ \S]*)[\r\n.]*')
    def __init__(self):
        self.client = None
        self.parse_boards = False
        self.parse_message = False
        
        self.boards = {}
        self.message = None
        
        self.bnames = {
            'veche': ('Вече', 'вече %s'),
            'news': ('Новости', 'новости %s'),
            'ideas': ('Идеи', 'идеи %s'),
            'anons': ('Анонсы', 'анонс %s'),
            }
    
    def update_boards(self):
        b = self._update_boards()
        if len(b.keys()) != 4:
            b = self._update_boards()
        if len(b.keys()) != 4:
            b = None
        return b
    
    def _update_boards(self):
        self.parse_boards = True
        self.client.command('доски')
        time.sleep(1)
        return self.boards
    
    def log(self, b, m):
        path = 'messages/%s_%s.txt' % (b, datetime.datetime.now().strftime('%Y-%m-%d_%H-%M-%S.%f'))
        f = open(path, 'w')
        f.write('%s\n' % m[0])
        f.write('%s:%s %s-%s-%s\n' % (m[1], m[2], m[3], m[4], m[5]))
        f.write('%s\n' % m[6].strip())
        f.write('%s\n' % m[7].strip())
        f.write('%s\n' % m[8].strip())
        f.close()
    
    def on_command(self, c):
        c = c.split()
        if len(c) < 3:
            print 'Usage: #boards [all|new|single] [veche|news|anons|ideas] num'
            return None
        if c[1] not in ['all', 'new', 'single']:
            print 'Usage: #boards [all|new|single] [veche|news|anons|ideas] num'
            return None
        if c[2] not in self.bnames.keys():
            print 'Usage: #boards [all|new|single] [veche|news|anons|ideas] num'
            return None
            
        if c[1] == 'single':
            self.log(c[2], self.read_message(c[2], c[3]))
        
        if c[1] == 'new':
            b = self.update_boards()
            cnt = int(b[self.bnames[c[2]][0]][1])
            for i in range(cnt):
                self.log(c[2], self.read_message(c[2], ''))
                
        if c[1] == 'all':
            b = self.update_boards()
            cnt = int(b[self.bnames[c[2]][0]][2])
            for i in range(cnt):
                self.log(c[2], self.read_message(c[2], '%s' % (i + 1)))
    
    
    def read_message(self, b, num):
        m = self._read_message(b, num)
        if m is None:
            m = self._read_message(b, num)
        return m
    
    def _read_message(self, b, num):
        c = self.bnames[b][1]
        self.parse_message = True
        self.client.command(c % num)
        time.sleep(1)
        return self.message
    
    def on_line(self, l):
        pass

    def on_paragraph(self, p):
        if self.parse_boards:
            l = p.split('\n')
            self.boards = {}
            for i in l:
                s = BoardsLogger.RE_BOARDS.search(i.strip())
                if s:
                    g = s.groups()
                    self.boards[g[0]] = g
            self.parse_boards = False

        if self.parse_message:
            self.message = None
            s = BoardsLogger.RE_MESSAGE.search(p.strip())
            if s:
                self.message = s.groups() + (BoardsLogger.RE_MESSAGE.sub('', p.strip()),)
                self.parse_message = False

    
    def set_client(self, c):
        if self.client is None:
            self.client = c
            c.set_command('boards', self)
            
            
class StatisticLogger():
    HEADER = '\x1b[1;36mСтатистика по игрокам, находящимся в игре (всего / 25 и выше / ниже 25):\x1b[0;37m'
    RE_LINE = re.compile(r'([\S]+)\s+\x1b\[1;31m\[\x1b\[1;36m\s*(\d+)/\s*(\d+)/\s*(\d+)\s*\x1b\[1;31m\]\x1b\[0;37m\s+([\S]+)\s+\x1b\[1;31m\[\x1b\[1;36m\s*(\d+)/\s*(\d+)/\s*(\d+)\s*\x1b\[1;31m\]\x1b\[0;37m')
    RE_REMORT = re.compile(r'Игроков с перевоплощениями\|без\s+\x1b\[1;31m\[\x1b\[1;36m\s*(\d+)\s*\x1b\[1;31m\|\x1b\[1;36m\s*(\d+)\s*\x1b\[1;31m\]\x1b\[0;37m')
    RE_CLAN = re.compile(r'Клановых\|внеклановых игроков\s+\x1b\[1;31m\[\x1b\[1;36m\s*(\d+)\s*\x1b\[1;31m\|\x1b\[1;36m\s*(\d+)\s*\x1b\[1;31m\]\x1b\[0;37m')
    RE_PK = re.compile(r'Игроков с флагами ПК\|без ПК\s+\x1b\[1;31m\[\x1b\[1;36m\s*(\d+)\s*\x1b\[1;31m\|\x1b\[1;36m\s*(\d+)\s*\x1b\[1;31m\]\x1b\[0;37m')
    
    PROFS = [
        'Лекари',
        'Тати',
        'Наемники',
        'Кудесники',
        'Чернокнижники',
        'Охотники',
        'Купцы',
        'Колдуны',
        'Богатыри',
        'Дружинники',
        'Волшебники',
        'Витязи',
        'Кузнецы',
        'Волхвы'
        ]
    
    def __init__(self):
        self.log_file = 'statistic.log'
        self.log_every_hour = 12
        self.counter = 0
    
    def on_line(self, l):
        if RE_HOUR.match(l):
            self.counter = self.counter + 1
        if self.counter == self.log_every_hour:
            self.counter = 0
            self.client.command('статистика')

    def on_paragraph(self, p):
        if p.count(StatisticLogger.HEADER) > 0:
            date = datetime.datetime.now()
            lines = {}
            remort = None
            clan = None
            pk = None
            for l in p.split('\n'):
                ls = l.strip()
                m = StatisticLogger.RE_LINE.match(ls)
                if m:
                    g = m.groups()
                    lines[g[0]] = (g[1], g[2], g[3])
                    lines[g[4]] = (g[5], g[6], g[7])
                m = StatisticLogger.RE_REMORT.match(ls)
                if m:
                    remort = m.groups()
                m = StatisticLogger.RE_CLAN.match(ls)
                if m:
                    clan = m.groups()
                m = StatisticLogger.RE_PK.match(ls)
                if m:
                    pk = m.groups()
            if remort and clan and pk and len(lines) == 14:
                msg = '%s ' % date
                for i in StatisticLogger.PROFS:
                    n = lines[i]
                    msg = '%s %s %s %s' % (msg, n[0], n[1], n[2])
                msg = '%s %s %s %s %s %s %s\n' % (msg, remort[0], remort[1], clan[0], clan[1], pk[0], pk[1])
                f = open(self.log_file, 'a')
                f.write(msg)
                f.close()
    
    def set_client(self, c):
        self.client = c
