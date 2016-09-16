# coding=utf-8
import codecs
import datetime
import re

from django.db import models
from django.utils import html
import django

from core.models import User

import deansi

RE_EMAIL = re.compile(ur'\b[\w.]+@+[\w.]+.+[\w.]\b')

class Board(models.Model):
    NEWS  = 0
    VECHE = 1
    ANONS = 2
    IDEAS = 3
    CODER = 4
    BOARD_TYPES = (
        (NEWS,  u'Новости'),
        (VECHE, u'Вече'),
        (ANONS, u'Анонсы'),
        (IDEAS, u'Идеи'),
        (CODER, u'Кодер'),
    )
    
    date = models.DateTimeField(default = django.utils.timezone.now())
    mud_date = models.DateTimeField()
    mud_num = models.IntegerField()
    user = models.ForeignKey(User)
    title = models.TextField()
    title_safe = models.TextField(null = True)
    text = models.TextField()
    text_safe = models.TextField(null = True)
    type = models.IntegerField(choices = BOARD_TYPES)
        
    @staticmethod
    def parse_file(path):
        f = codecs.open(path, "r", "utf-8")
        l = f.readline().strip()
        num = int(l)
        l = f.readline().strip()
        date = datetime.datetime.strptime(l, '%H:%M %d-%m-%Y')
        user = f.readline().strip()
        title = f.readline().strip()
        message = ''
        l = f.readline()
        while l != '':
            message = '%s\n%s' % (message, l)
            l = f.readline()
        f.close()
        return (num, date, user, title, message)
    
    @staticmethod
    def has_message(msg, type):
        f = Board.objects.filter(type = type)
        f = f.filter(mud_date = msg[1])
        f = f.filter(user = User.get_or_create(msg[2]))
        f = f.filter(title = msg[3])
        f = f.filter(text = msg[4])
        print f.count()
        return f.count() > 0
    
    @staticmethod
    def create(msg, type):
        b = Board()
        b.type = type
        b.user = User.get_or_create(msg[2])
        b.mud_num = msg[0]
        b.mud_date = msg[1]
        b.title = msg[3]
        b.title_safe = deansi.deansi(msg[3])
        b.text = msg[4]
        b.text_safe = deansi.deansi(RE_EMAIL.sub(u'[скрыто]', msg[4]))
        b.save()
        return b

    def mdate(self):
        return self.mud_date.strftime('%H:%M %d-%m-%Y')
    
    def __unicode__(self):
        return u'%s (%s) :: %s' % (self.mdate(), self.user.name, self.title_safe)
