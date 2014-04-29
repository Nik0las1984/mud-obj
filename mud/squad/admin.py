# coding=utf-8

from django.contrib import admin
from django.forms.widgets import TextInput
import reversion
from squad.models import *

class SquadAdmin(admin.ModelAdmin):
    list_display = ['name', 'short_name', 'active', ]
    formfield_overrides = {
        models.TextField: {'widget': TextInput},
    }
    
admin.site.register(Squad, SquadAdmin)


class SquadInfoAdmin(admin.ModelAdmin):
    list_display = ['squad', 'date', 'population', 'exp_total', 'exp_30']

admin.site.register(SquadInfo, SquadInfoAdmin)


class SquadActivityLogAdmin(admin.ModelAdmin):
    list_display = ['squad', 'date', 'active']

admin.site.register(SquadActivityLog, SquadActivityLogAdmin)


