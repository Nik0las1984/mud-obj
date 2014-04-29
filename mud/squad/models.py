# coding=utf-8
import re
import math

from django.db import models

RE_SPLIT = re.compile(ur'\s\s+')

def parse_int(s):
    s = s.split(' ')
    res = int(s[0])
    if len(s) > 1:
        if s[1].strip() == u'тыс':
            res = res * 1000
        if s[1].strip() == u'млн':
            res = res * 1000000
    return res

def int_to_string(s):
    if abs(s) > 1000000000:
        return u'%s млн' % (s / 1000000)
    if abs(s) > 1000:
        return u'%s тыс' % (s / 1000)
    return u'%s' % s

class Squad(models.Model):
    name = models.TextField()
    short_name = models.TextField()
    active = models.BooleanField()
    
    def __unicode__(self):
        return u'%s (%s)' % (self.name, self.short_name)
    
    class Meta:
        ordering = ['name', ]
    
    @staticmethod
    def has(name, short_name):
        return Squad.objects.filter(name__iexact = name).filter(short_name__iexact = short_name).count() > 0
    
    @staticmethod
    def get(name, short_name):
        return Squad.objects.filter(name__iexact = name).filter(short_name__iexact = short_name)[0]
    
    @staticmethod
    def get_or_create(name, short_name):
        if Squad.has(name, short_name):
            return Squad.get(name, short_name)
        s = Squad()
        s.name = name
        s.short_name = short_name
        s.active = True
        s.save()
        return s
    
    def get_exp_total(self):
        if self.info.count() == 0:
            return int_to_string(0)
        return int_to_string(self.info.all()[0].exp_total)
    
    def get_exp_30(self):
        if self.info.count() == 0:
            return int_to_string(0)
        return int_to_string(self.info.all()[0].exp_30)
    
    def get_population(self):
        if self.info.count() == 0:
            return int_to_string(0)
        return int_to_string(self.info.all()[0].population)
    
class SquadActivityLog(models.Model):
    squad = models.ForeignKey(Squad, related_name = 'activity_log')
    date = models.DateTimeField()
    active = models.BooleanField()
    
    @staticmethod
    def has(sq, d):
        return SquadActivityLog.objects.filter(date = d).filter(squad = sq).count() > 0
    
    @staticmethod
    def get(sq, d):
        return SquadActivityLog.objects.filter(date = d).filter(squad = sq)[0]
    
    @staticmethod
    def get_or_create(sq, d, active):
        if SquadActivityLog.has(sq, d):
            return SquadActivityLog.get(sq, d)
        sa = SquadActivityLog()
        sa.squad = sq
        sa.date = d
        sa.active = active
        sa.save()
        return sa

class SquadInfo(models.Model):
    squad = models.ForeignKey(Squad, related_name = 'info')
    date = models.DateTimeField()
    population = models.IntegerField()
    exp_total = models.BigIntegerField()
    exp_30 = models.BigIntegerField()
    
    def __unicode__(self):
        return u'%s' % (self.squad)
    
    class Meta:
        ordering = ['-date', ]
    
    @staticmethod
    def has(sq, d):
        return SquadInfo.objects.filter(date = d).filter(squad = sq).count() > 0
    
    @staticmethod
    def get(sq, d):
        return SquadInfo.objects.filter(date = d).filter(squad = sq)[0]
    
    @staticmethod
    def get_or_create(sq, d, population, exp_total, exp_30):
        if SquadInfo.has(sq, d):
            return SquadInfo.get(sq, d)
        si = SquadInfo()
        si.squad = sq
        si.date = d
        si.population = population
        si.exp_30 = exp_30
        si.exp_total = exp_total
        si.save()
        return si

# Update squad from string.
def squad_update(v, d):
    v = RE_SPLIT.split(v)
    if len(v) > 1:
        s = Squad.get_or_create(v[2], v[1])
        SquadInfo.get_or_create(s, d, parse_int(v[5]), parse_int(v[3]), parse_int(v[4]))
        if s.active == False:
            s.active = True
            SquadActivityLog.get_or_create(s, d, True)
            s.save()
        return s
    return None
