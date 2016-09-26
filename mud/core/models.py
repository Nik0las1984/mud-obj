#encoding: utf-8

import datetime

from django.db import models
from django.contrib.auth.models import User as DjangoUser

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

class LogId(models.Model):
    user = models.ForeignKey(DjangoUser, null = True)
    ua = models.TextField(null = True)
    date = models.DateTimeField(auto_now_add = True)
    desc = models.CharField(max_length = 1024, null = True)
    
    def __unicode__(self):
        return self.desc
    
    @staticmethod
    def get_or_create(request):
        lid = LogId()
        if request.user.is_authenticated():
            q = LogId.objects.filter(user = request.user)
            if q.count() > 0:
                return q[0]
            else:
                lid.user = request.user
        
        ses = request.session.get('lid', None)
        print ses
        if ses:
            q = LogId.objects.filter(pk = ses)
            if q.count() > 0:
                return q[0]
        lid.ua = request.META['HTTP_USER_AGENT']
        lid.save()
        if request.user.is_authenticated():
            lid.desc = u'%s' % lid.user
        else:
            lid.desc = lid.date.strftime('%Y-%m-%d %H:%M')
        
        lid.save()
        request.session['lid'] = lid.pk
        return lid

            

class Log(models.Model):
    ADD_OBJ = 0
    SEARCH_OBJ = 1
    LOG_TYPES = (
        (ADD_OBJ, u'Добавлен объект'),
        (SEARCH_OBJ, u'Поиск объектов'),
    )
    date = models.DateTimeField(auto_now_add = True)
    value = models.TextField(null = True)
    type = models.IntegerField(choices = LOG_TYPES)
    #ua = models.TextField(null = True)
    lid = models.ForeignKey(LogId, null = True)
    path = models.TextField(null = True)

    def __unicode__(self):
        return u'%s: %s' % (self.type, self.value)
    
    @staticmethod
    def object_added(name, request):
        l = Log()
        l.value = name
        l.type = Log.ADD_OBJ
        #l.ua = request.META['HTTP_USER_AGENT']
        l.lid = LogId.get_or_create(request)
        l.path = request.get_full_path()
        l.save()
    
    @staticmethod
    def object_search(name, request):
        l = Log()
        l.value = name
        l.type = Log.SEARCH_OBJ
        #l.ua = request.META['HTTP_USER_AGENT']
        l.lid = LogId.get_or_create(request)
        l.path = request.get_full_path()
        l.save()

class News(models.Model):
    user = models.ForeignKey(DjangoUser)
    title = models.TextField()
    text = models.TextField()
    date = models.DateTimeField(auto_now_add = True)
    
    def __unicode__(self):
        return u'%s (%s)' % (self.title, self.date)
    