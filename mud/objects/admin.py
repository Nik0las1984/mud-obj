# coding=utf-8

from django.contrib import admin
from reversion.admin import VersionAdmin
from objects.models import *

def make_checked(modeladmin, request, queryset):
    queryset.update(checked = True)
make_checked.short_description = u'Пометить как проверенные'

def reparse(modeladmin, request, queryset):
    for o in queryset.all():
        Object.create_from_string(o.mud_desc)
reparse.short_description = u'Обновить описание'

def update_html(modeladmin, request, queryset):
    for o in queryset.all():
        o.update_html_desc()
update_html.short_description = u'Обновить HTML код'


class ObjectAdmin(VersionAdmin):
    list_filter = ['checked', 'bad', ]
    search_fields = ['name']
    list_display = ('name', 'checked', 'bad', 'type', 'cost', 'last_modified')
    fields = ['name', 'mud_desc', 'comment', 'html_desc', 'zones']
    actions = [make_checked, reparse, update_html]
    filter_horizontal = ['zones',]

admin.site.register(Object, ObjectAdmin)

class ObjectsListAdmin(admin.ModelAdmin):
    list_display = ['name', 'user',  'created']
    fields = ['name', 'text', ]
    
admin.site.register(ObjectsList, ObjectsListAdmin)

class ExtraPropertyAdmin(admin.ModelAdmin):
    list_display = ['name', 'short_name', ]
    
admin.site.register(ExtraProperty, ExtraPropertyAdmin)

class NoPropertyAdmin(admin.ModelAdmin):
    list_display = ['name', 'short_name', ]
    
admin.site.register(NoProperty, NoPropertyAdmin)


class AffectAdmin(admin.ModelAdmin):
    list_display = ['name', 'short_name', ]
    
admin.site.register(Affect, AffectAdmin)

class MaterialAdmin(admin.ModelAdmin):
    list_display = ['name', 'short_name', ]
    
admin.site.register(Material, MaterialAdmin)

class TypeAdmin(admin.ModelAdmin):
    list_display = ['name', 'short_name', ]
    
admin.site.register(Type, TypeAdmin)

class ExtraFlagAdmin(admin.ModelAdmin):
    list_display = ['name', 'short_name', ]
    
admin.site.register(ExtraFlag, ExtraFlagAdmin)
