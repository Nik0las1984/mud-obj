#coding: utf-8

import re
import datetime
import time
from threading import Timer

#import config as cfg

RE_HOUR = re.compile(r'\x1b\[1;31mМинул час\.\x1b\[0;37m')

class LoginPlugin():
    RE_SELECT_ONE = re.compile(r'^  5\) UTF\-8')
    RE_LOGIN = re.compile(r'^\s+Включена поддержка протокола сжатия данных, возьмите клиент ')
    RE_LOGIN1 = re.compile(r'^\s+Для более подробной игровой информации посетите')
    RE_PASSWORD = re.compile(r'Персонаж с таким именем уже существует.')
    RE_EMPTY = re.compile(r'^Последний раз вы заходили к нам')
    
    def __init__(self, login, password):
        self.login = login
        self.password = password
    
    def set_client(self, c):
        self.client = c
    
    def on_line(self, l):
        #print l
        if LoginPlugin.RE_SELECT_ONE.match(l):
            self.client.command('5')
        if LoginPlugin.RE_LOGIN.match(l) or LoginPlugin.RE_LOGIN1.match(l):
            self.client.command(self.login)
            self.client.command(self.password, 1)
        #if LoginPlugin.RE_PASSWORD.match(l):
        if LoginPlugin.RE_EMPTY.match(l):
            self.client.command('')
    
    def on_paragraph(self, p):
        pass
    
    #if config.auto_login:
    #c.login(config.user, config.password)

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
    RE_BOARDS = re.compile(r'\s*\d\)[\s]+([\S]+)[\s]+\[\s*(\d+)\|\s*(\d+)\][\s]+.*')
    RE_MESSAGE = re.compile(r'\[([\d]+)\] (\d\d):(\d\d) (\d\d)-(\d\d)-(\d\d\d\d) \(([^\(^\)]+)\) ::([ \S]*)[\r\n.]*')
    
    RE_NEW1 = re.compile(r'^Вас ожидают сообщения:')
    RE_NEW2 = re.compile(r'^Новое сообщение в разделе')
    
    def __init__(self):
        self.client = None
        self.parse_boards = False
        self.parse_message = False
        
        self.boards = {}
        self.message = None
        
        self.read_new_flag = False
        
        self.bnames = {
            'veche': ('Вече', 'вече %s'),
            'news': ('Новости', 'новости %s'),
            'ideas': ('Идеи', 'идеи %s'),
            'anons': ('Анонсы', 'анонс %s'),
            #'coder': ('Кодер', 'кодер %s'),
            'all': ('Все', '')
            }
    
    def update_boards(self):
        b = self._update_boards()
        print b.keys()
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
            print 'Usage: #boards [all|new|single] [veche|news|anons|ideas|coder|all] num'
            return None
        if c[1] not in ['all', 'new', 'single', 'test']:
            print 'Usage: #boards [all|new|single] [veche|news|anons|ideas|coder|all] num'
            return None
        if c[2] not in self.bnames.keys():
            print 'Usage: #boards [all|new|single] [veche|news|anons|ideas|coder|all] num'
            return None
        
        bns = [c[2],]
        if c[2] == 'all':
            bns = ['veche', 'news', 'anons', 'ideas']
        
        if c[1] == 'test':
            print self.update_boards()
        
        if c[1] == 'single':
            for i in bns:
                self.log(i, self.read_message(i, c[3]))
        
        if c[1] == 'new':
            b = self.update_boards()
            for j in bns:
                cnt = int(b[self.bnames[j][0]][1])
                for i in range(cnt):
                    self.log(j, self.read_message(j, ''))
                
        if c[1] == 'all':
            b = self.update_boards()
            for j in bns:
                cnt = int(b[self.bnames[j][0]][1])
                for i in range(cnt):
                    self.log(j, self.read_message(j, '%s' % (i + 1)))
    
    
    def read_all_new(self):
        #b = self.update_boards()
        self.read_new_flag = False
        self.on_command('#boards new all')
    
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
        if BoardsLogger.RE_NEW1.match(l) or BoardsLogger.RE_NEW2.match(l):
            self.read_new_flag = True
            def t():
                self.read_all_new()
            Timer(3, t).start()


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
        self.log_file = 'statistic_%s.log'
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
                f = open(self.log_file % datetime.datetime.now().strftime('%Y%m%d'), 'a')
                f.write(msg)
                f.close()
    
    def set_client(self, c):
        self.client = c


class SquadLogger():
    HEADER = 'В игре зарегистрированы следующие дружины:'
    def __init__(self):
        self.log_file = 'squad_%s.log'
        self.log_every_hour = 25
        self.counter = 0
    
    def on_line(self, l):
        if RE_HOUR.match(l):
            self.counter = self.counter + 1
        if self.counter == self.log_every_hour:
            self.counter = 0
            self.client.command('др')
    
    def set_client(self, c):
        self.client = c
    def on_paragraph(self, p):
        if p.count(SquadLogger.HEADER) > 0:
            date = datetime.datetime.now()
            f = open(self.log_file % datetime.datetime.now().strftime('%Y%m%d'), 'a')
            f.write('%s\n' % date)
            f.write('%s\n\n' % p)
            f.close()
            