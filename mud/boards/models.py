# coding=utf-8
import codecs
import datetime

from django.db import models

from core.models import User


class Board(models.Model):
    NEWS  = 0
    VECHE = 1
    ANONS = 2
    IDEAS = 3
    BOARD_TYPES = (
        (NEWS,  u'Новости'),
        (VECHE, u'Вече'),
        (ANONS, u'Анонсы'),
        (IDEAS, u'Идеи'),
    )
    
    date = models.DateTimeField(default = datetime.datetime.now())
    mud_date = models.DateTimeField()
    mud_num = models.IntegerField()
    user = models.ForeignKey(User)
    title = models.TextField()
    text = models.TextField()
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
        message = f.read().strip()
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
        b.text = msg[4]
        b.save()
        return b

    def mdate(self):
        return self.mud_date.strftime('%H:%M %d-%m-%Y')
    
    def __unicode__(self):
        return u'%s (%s) :: %s' % (self.mdate(), self.user.name, self.title)
