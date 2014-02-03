# coding=utf-8


from django.db import models

class Zone(models.Model):
    name = models.TextField()
    alter_name = models.TextField(blank = True, null = True)
    level = models.IntegerField()
    
    def __unicode__(self):
        return self.name

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
        return u'%s -> %s' % (z1.name, z2.name)

