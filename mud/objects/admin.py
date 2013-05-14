# coding=utf-8

from django.contrib import admin
from objects.models import *

def make_checked(modeladmin, request, queryset):
    queryset.update(checked = True)
make_checked.short_description = u'Пометить как проверенные'

class ObjectAdmin(admin.ModelAdmin):
    list_filter = ['checked', 'type', 'affects', 'prop', 'extra']
    search_fields = ['name']
    actions = [make_checked]

admin.site.register(Object, ObjectAdmin)

