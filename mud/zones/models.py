# coding=utf-8


from django.db import models

class Zone(models.Model):
    name = models.TextField()
    alter_name = models.TextField(blank = True, null = True)
    level = models.IntegerField()
    vnum = models.IntegerField(blank = True, null = True)
    author = models.TextField(blank = True, null = True)
    
    def __unicode__(self):
        return u'%s' % (self.name)
    
    class Meta:
        ordering = ['name', 'level']
    
    @staticmethod
    def has(name):
        return Zone.objects.filter(name = name).count() > 0
    
    @staticmethod
    def get_by_name(name):
        q = Zone.objects.filter(name = name)
        if q.count() > 0:
            return q[0]
        return None

class ZoneLink(models.Model):
    WALK             = 0
    CROSSING_MONEY   = 1
    CROSSING_TRIGGER = 2
    TELEPORT_INGR    = 3
    TELEPORT_MONEY   = 4
    TYPES = (
        (WALK,             u'Пешком'),
        (CROSSING_MONEY,   u'Переход за деньги'),
        (CROSSING_TRIGGER, u'Переход триггером'),
        (TELEPORT_INGR,    u'Телепорт за ингридиенты'),
        (TELEPORT_MONEY,   u'Телепорт за деньги'),
    )
    z1 = models.ForeignKey(Zone, related_name = 'connected_zones')
    z2 = models.ForeignKey(Zone)
    type = models.IntegerField(choices = TYPES, default = WALK)
    value = models.TextField(blank = True)
    
    def __unicode__(self):
        return u'%s -> %s' % (self.z1, self.z2)
    
    @staticmethod
    def has_link(z1, z2):
        return ZoneLink.objects.filter(z1 = z1).filter(z2 = z2).count() > 0

