# coding=utf-8

from django.contrib import admin
from django.forms.widgets import TextInput
import reversion
from zones.models import *

class ZoneLinkInline(admin.TabularInline):
    model = ZoneLink
    fk_name = "z1"
    formfield_overrides = {
        models.TextField: {'widget': TextInput},
    }

class ZoneAdmin(admin.ModelAdmin):
    list_display = ['name', 'alter_name', 'level', ]
    inlines = [
        ZoneLinkInline,
    ]
    formfield_overrides = {
        models.TextField: {'widget': TextInput},
    }
    
admin.site.register(Zone, ZoneAdmin)

class ZoneLinkAdmin(admin.ModelAdmin):
    list_display = ['z1', 'z2', 'type', 'value']
    list_filter = ['type',]
    
admin.site.register(ZoneLink, ZoneLinkAdmin)

