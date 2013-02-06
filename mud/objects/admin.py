from django.contrib import admin
from objects.models import *

class ObjectAdmin(admin.ModelAdmin):
    list_filter = ['type', 'affects', 'prop', 'extra']
    search_fields = ['name']

admin.site.register(Object, ObjectAdmin)

