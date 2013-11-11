# coding=utf-8

from django.contrib import admin
from objects.models import *

def make_checked(modeladmin, request, queryset):
    queryset.update(checked = True)
make_checked.short_description = u'Пометить как проверенные'

def reparse(modeladmin, request, queryset):
    for o in queryset.all():
        Object.create_from_string(o.mud_desc)
reparse.short_description = u'Обновить описание'

class ObjectAdmin(admin.ModelAdmin):
    list_filter = ['checked', 'bad', 'type', 'affects', 'prop', 'extra']
    search_fields = ['name']
    list_display = ('name', 'checked', 'bad', 'type', 'cost', 'added')
    fields = ['name', 'mud_desc']
    actions = [make_checked, reparse]

admin.site.register(Object, ObjectAdmin)

class ObjectsListAdmin(admin.ModelAdmin):
    list_display = ['name']
    
admin.site.register(ObjectsList, ObjectsListAdmin)
