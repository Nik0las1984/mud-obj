from django.contrib import admin
from core.models import *

class CounterAdmin(admin.ModelAdmin):
    search_fields = ['name']

admin.site.register(Counter, CounterAdmin)
