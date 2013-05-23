import datetime

from django.db import models

class User(models.Model):
    name = models.TextField()
    
    @staticmethod
    def has_user(name):
        return User.objects.filter(name__iexact = name).count() > 0
    
    @staticmethod
    def get_user(name):
        return User.objects.get(name__iexact = name)
    
    def __unicode__(self):
        return self.name
    
    @staticmethod
    def get_or_create(name):
        if not User.has_user(name):
            u = User()
            u.name = name
            u.save()
        return User.get_user(name)
        
    def offtop_count_last(self):
        return self.channel_set.filter(type = 0).filter(date__gte = datetime.datetime.now() - datetime.timedelta(days = 7)).count()

class Counter(models.Model):
    name = models.TextField()
    body = models.TextField()
    
    def __unicode__(self):
        return self.name

class Statistic(models.Model):
    date = models.DateTimeField()
    total = models.IntegerField()
    total_pk = models.IntegerField(default = 0)
    total_clan = models.IntegerField(default = 0)
    total_remort = models.IntegerField(default = 0)
    
    def __unicode__(self):
        return u'%s (%s)' % (self.date, self.total)
    
    @staticmethod
    def has(date):
        return Statistic.objects.filter(date = date).count() > 0
    
    @staticmethod
    def add(a):
        s = a.split()
        d = datetime.datetime.strptime('%s %s' % (s[0], s[1]), '%Y-%m-%d %H:%M:%S.%f')
        if Statistic.has(d):
            return None
        
        st = Statistic()
        st.date = d
        st.total_pk = int(s[-2])
        st.total_clan = int(s[-4])
        st.total_remort = int(s[-6])
        st.total = int(s[-1]) + int(s[-2])
        st.save()
        return st
        