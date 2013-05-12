# encoding: utf-8
from django.db import models

import re

re_name = re.compile(ur'^Предмет\s*"(.+)",\s*тип\s*:\s*(.+)\s*$')
re_weight = re.compile(ur'^Вес\s*:\s*(\d+)\s*,\s*Цена\s*:\s*(\d+)\s*,\s*Рента\s*:\s*(\d+)\s*\((\d*)\)\s*$')
re_mat = re.compile(ur'^Материал\s*:\s*(.+)\s*$')
re_unconv = re.compile(ur'^Неудобен\s*:\s*(.+)$')
re_unaval = re.compile(ur'^Недоступен\s*:\s*(.+)$')
re_extra = re.compile(ur'^Имеет\s+экстрафлаги\s*:\s*(.+)$')
re_ac = re.compile(ur'^защита\s*\(AC\)\s*:\s*(\d+)\s*$')
re_armor = re.compile(ur'^броня\s*:\s*(\d+)\s*$')
re_aff = re.compile(ur'^Накладывает на вас аффекты: (.+)$')
re_wear = re.compile(ur'^Можно\s+надеть\s+на\s+(.+)\.$')
re_add = re.compile(ur'^\s*(.+)\s+улучшает\s+на\s+(\d+)$')
re_sub = re.compile(ur'^\s*(.+)\s+ухудшает\s+на\s+(\d+)$')
re_wear = re.compile(ur'^Можно надеть на (\S+)\.')
re_take = re.compile(ur'^Можно взять в (.+)\.')
re_weapon = re.compile(ur'^Принадлежит к классу "(.+)"\.')
re_damage = re.compile(ur'^Наносимые повреждения \'([\dD]+)\' среднее ([\d\.]+)\.')

NOTHING = u'ничего'

class ObjCharacteristic(models.Model):
    name = models.CharField(max_length = 250)

    def __unicode__(self):
        return self.name
    
    @staticmethod
    def get_or_create(name, clazz):
        r = clazz.objects.filter(name = name)
        if r.count() > 0:
            return r[0]
        t = clazz()
        t.name = name
        t.save()
        return clazz.get_or_create(name)

    class Meta:
        abstract = True

class Weapon(ObjCharacteristic):
    @staticmethod
    def get_or_create(name):
        return ObjCharacteristic.get_or_create(name, Weapon)          
        
class Take(ObjCharacteristic):
    @staticmethod
    def get_or_create(name):
        return ObjCharacteristic.get_or_create(name, Take)        
        
class Wear(ObjCharacteristic):
    @staticmethod
    def get_or_create(name):
        return ObjCharacteristic.get_or_create(name, Wear)
        
class Type(ObjCharacteristic):
    @staticmethod
    def get_or_create(name):
        return ObjCharacteristic.get_or_create(name, Type)

class Material(ObjCharacteristic):
    @staticmethod
    def get_or_create(name):
        return ObjCharacteristic.get_or_create(name, Material)

class ExtraFlag(ObjCharacteristic):
    @staticmethod
    def get_or_create(name):
        return ObjCharacteristic.get_or_create(name, ExtraFlag)

class Affect(ObjCharacteristic):
    @staticmethod
    def get_or_create(name):
        return ObjCharacteristic.get_or_create(name, Affect)

class ExtraProperty(ObjCharacteristic):
    @staticmethod
    def get_or_create(name):
        return ObjCharacteristic.get_or_create(name, ExtraProperty)

class NoProperty(ObjCharacteristic):
    @staticmethod
    def get_or_create(name):
        return ObjCharacteristic.get_or_create(name, NoProperty)

class PropertyValue(models.Model):
    prop = models.ForeignKey(ExtraProperty)
    value = models.IntegerField()
    
    def __unicode__(self):
        sign = ''
        if self.value > 0:
            sign = '+'
        return '%s %s%s' % (self.prop.name, sign, self.value)
    
    @staticmethod
    def get_or_create(name, value):
        r = PropertyValue.objects.filter(prop__name = name, value = value)
        if r.count() > 0:
            return r[0]
        p = PropertyValue()
        p.prop = ExtraProperty.get_or_create(name)
        p.value = int(value)
        p.save()
        return PropertyValue.get_or_create(name, value)

def parse_data(d, r):
    for l in d:
        m = r.match(l.strip())
        if m:
            d.remove(l)
            return m.groups()
    return None
        
class Object(models.Model):
    name = models.CharField(max_length = 250, unique = True)
    weight = models.IntegerField()
    cost = models.IntegerField()
    cost_per_day_on = models.IntegerField()
    cost_per_day_off = models.IntegerField()
    material = models.ForeignKey(Material)
    type = models.ForeignKey(Type)
    wear = models.ManyToManyField(Wear)
    take = models.ManyToManyField(Take)
    weapon = models.ForeignKey(Weapon, blank = True, null = True)
    
    affects = models.ManyToManyField(Affect)
    extra = models.ManyToManyField(ExtraFlag)
    prop = models.ManyToManyField(PropertyValue)
    no_use = models.ManyToManyField(NoProperty, related_name = 'not_used_obj')
    no_avail = models.ManyToManyField(NoProperty, related_name = 'not_avail_obj')
    
    ac = models.IntegerField(blank = True, null = True)
    armor = models.IntegerField(blank = True, null = True)
    
    dmg_str = models.CharField(max_length = 250, blank = True, null = True)
    dmg_avg = models.FloatField(blank = True, null = True)
    
    mud_desc = models.TextField()
    
    def __unicode__(self):
        return self.name

    def out(self):
        print u'Предмет \033[92m"%s"\033[0m, тип : %s' % (self.name, self.type.name)
        print u'Вес: %s, Цена: %s, Рента: %s(%s)' % (self.weight, self.cost, self.cost_per_day_on, self.cost_per_day_off)
        print u'Материал : %s' % self.material.name
        print u'Неудобен : %s' % ",".join(map(unicode, self.no_use.all()))
        print u'Недоступен : %s' % ",".join(map(unicode, self.no_avail.all()))
        if self.extra.count() > 0:
            print u'Имеет экстрафлаги: \033[93m%s\033[0m' % ",".join(map(unicode, self.extra.all()))
        if self.ac is not None:
            print u'защита (AC) : \033[93m%s\033[0m' % self.ac
        if self.armor is not None:
            print u'броня       : \033[93m%s\033[0m' % self.armor
        if self.affects.count() > 0:
            print u'Накладывает на Вас аффекты : \033[93m%s\033[0m' % ",".join(map(unicode, self.affects.all()))
        if self.prop.count() > 0:
            print u'Дополнительные свойства :'
            for p in self.prop.all():
                print u'\033[93m\t%s\033[0m' % p
    
    def update_from_desc(self):
        Object.create_from_string(self.mud_desc)
    
    
    def extra_clean(self):
        return self.extra.exclude(name = u'таймер запущен')
    
    @staticmethod
    def create_from_string(a):
        o = Object()
        data = re.split(ur'[\n\r]+', a)
        
        # Имя и тип
        name = parse_data(data, re_name)
        
        # Смотрим есть он уже в базе, если есть - обновляем все параметры.
        if Object.has_obj(name[0]):
            o = Object.get_obj(name[0])
        
        o.name = name[0]
        o.type = Type.get_or_create(name[1])
        
        # Описание из мада
        o.mud_desc = a

        # Вес и цена
        w = parse_data(data, re_weight)
        o.weight = int(w[0])
        o.cost = int(w[1])
        o.cost_per_day_on = int(w[2])
        o.cost_per_day_off = int(w[3])
        
        # Материал
        o.material = Material.get_or_create(parse_data(data, re_mat)[0])
        
        # Предварительно сохраняем
        o.save()
        
        # AC
        ac = parse_data(data, re_ac)
        if ac is not None:
            o.ac = int(ac[0])
        
        # Броня
        armor = parse_data(data, re_armor)
        if armor is not None:
            o.armor = int(armor[0])
        
        # Урон
        dmg = parse_data(data, re_damage)
        if dmg is not None:
            o.dmg_str = dmg[0]
            o.dmg_avg = float(dmg[1])
        
        
        # Неудобен
        o.no_use.clear()
        no_use = parse_data(data, re_unconv)
        if no_use is not None:
            for i in no_use[0].split(','):
                if i != NOTHING:
                    o.no_use.add(NoProperty.get_or_create(i))
        
        # Недоступен
        o.no_avail.clear()
        no_avail = parse_data(data, re_unaval)
        if no_avail is not None:
            for i in no_avail[0].split(','):
                if i != NOTHING:
                    o.no_avail.add(NoProperty.get_or_create(i))

        # Аффекты
        o.affects.clear()
        aff = parse_data(data, re_aff)
        if aff is not None:
            for i in aff[0].split(','):
                if i != NOTHING:
                    o.affects.add(Affect.get_or_create(i))
                    
        # Экстрафлаги
        o.extra.clear()
        ex = parse_data(data, re_extra)
        if ex is not None:
            for i in ex[0].split(','):
                if i != NOTHING:
                    o.extra.add(ExtraFlag.get_or_create(i))

        o.prop.clear()  
        # Улучшает
        add = parse_data(data, re_add)
        while add is not None:
            o.prop.add(PropertyValue.get_or_create(add[0], int(add[1])))
            add = parse_data(data, re_add)
        
        # Ухучшает
        sub = parse_data(data, re_sub)
        while sub is not None:
            o.prop.add(PropertyValue.get_or_create(sub[0], -int(sub[1])))
            sub = parse_data(data, re_sub)
        
        
        # Куда одеть
        o.wear.clear()
        wear = parse_data(data, re_wear)
        while wear is not None:
            o.wear.add(Wear.get_or_create(wear[0]))
            wear = parse_data(data, re_wear)
        
        # Куда взять
        o.take.clear()
        take = parse_data(data, re_take)
        while take is not None:
            o.take.add(Take.get_or_create(take[0]))
            take = parse_data(data, re_take)
        
        # Класс оружия
        weapon = parse_data(data, re_weapon)
        if weapon is not None:
            o.weapon = Weapon.get_or_create(weapon[0])
        
        # Сохраняем
        o.save()
        return o
    
    @staticmethod
    def has_obj(name):
        return Object.objects.filter(name__iexact = name).count() > 0
    
    @staticmethod
    def has_obj_by_desc(a):
        data = re.split(ur'[\n\r]+', a)
        name = parse_data(data, re_name)[0]
        return Object.has_obj(name)
    
    @staticmethod
    def get_obj(name):
        return Object.objects.get(name__iexact = name)
    
    @staticmethod
    def create_or_get_from_string(a):
        #print "PARSE:", a
        data = re.split(ur'[\n\r]+', a)
        name = parse_data(data, re_name)[0]
        if Object.has_obj(name) > 0:
            return Object.get_obj(name)
        return Object.create_from_string(a)

    @staticmethod
    def parse_baz(a):
        good = []
        bad = []
        parsed = []
        data = re.split(ur'[\n\r]+', a)
        for l in data:
            l = l.strip()
            if l == '':
                continue
            if l[0] == '[':
                l = l[9:][:64]
                l = l[:l.rfind(' ')].strip()
                if parsed.count(l) > 0:
                    continue
                parsed.append(l)
                if Object.has_obj(l):
                    good.append(Object.get_obj(l))
                else:
                    bad.append(l)
        return { 'good': good, 'bad': bad, }
        
    @staticmethod
    def parse_shop(a):
        good = []
        bad = []
        parsed = []
        data = re.split(ur'[\n\r]+', a)
        for l in data:
            l = l.strip()
            if l == '':
                continue
            if l[3] == ')' or l[2] == ')' or l[1] == ')':
                l = l[17:]
                l = l[:l.rfind(' ')].strip()
                if parsed.count(l) > 0:
                    continue
                parsed.append(l)
                if Object.has_obj(l):
                    good.append(Object.get_obj(l))
                else:
                    bad.append(l)
        return { 'good': good, 'bad': bad, }
    @staticmethod
    def parse_inv(a):
        good = []
        bad = []
        parsed = []
        data = re.split(ur'[\n\r]+', a)
        for l in data:
            l = l.strip()
            if l == '':
                continue
            if l[-1] == ')' or l[-1] == ']' or l[-1] == '>':
                l = re.compile(ur'[\[<\(]{1}').split(l)[0].strip()
                if parsed.count(l) > 0:
                    continue
                parsed.append(l)
                if Object.has_obj(l):
                    good.append(Object.get_obj(l))
                else:
                    bad.append(l)
        return { 'good': good, 'bad': bad, }
