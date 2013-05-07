# encoding: utf-8
import datetime

from django.db import models

from core.models import User

class Channel(models.Model):
    OFFTOP = 0
    BOLT   = 1
    SCREAM = 2
    CHANNEL_TYPES = (
        (OFFTOP, u'Оффтоп'),
        (BOLT,   u'Болтать'),
        (SCREAM, u'Орать')
    )
    
    date = models.DateTimeField()
    user = models.ForeignKey(User)
    text = models.TextField()
    type = models.IntegerField(choices = CHANNEL_TYPES)
    
    def __unicode__(self):
        return u'%s %s : %s' % (self.date, self.user, self.text)
    
    @staticmethod
    def has_message(date, type):
        return Channel.objects.filter(type__exact = type).filter(date__exact = date).count() > 0
    
    @staticmethod
    def create(date, user, text, type):
        m = Channel()
        m.date = date
        m.user = user
        m.text = text
        m.type = type
        m.save()
        return m
   
    @staticmethod
    def get_time_from_string(s):
        l = s
        d = l[:l.index(' ')]
        l = l[l.index(' ') + 1:]
        d = '%s %s' % (d, l[:l.index(' ')])
        return datetime.datetime.strptime(d, '%Y-%m-%d %H:%M:%S.%f')
    
    @staticmethod
    def create_from_string(s, t):
        # Получаем дату
        l = s
        d = l[:l.index(' ')]
        l = l[l.index(' ') + 1:]
        d = '%s %s' % (d, l[:l.index(' ')])
        l = l[l.index(' ') + 1:]
        date = datetime.datetime.strptime(d, '%Y-%m-%d %H:%M:%S.%f')
        
        # Получаем имя
        n = l[:l.index(' ')]
        l = l[l.index(' ') + 1:]
        u = User.get_or_create(n)
        
        return Channel.create(date, u, l, t)
       