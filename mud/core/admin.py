from django.contrib import admin
from core.models import *

class CounterAdmin(admin.ModelAdmin):
    search_fields = ['name']

admin.site.register(Counter, CounterAdmin)

class StatisticAdmin(admin.ModelAdmin):
    pass

admin.site.register(Statistic, StatisticAdmin)

class LogAdmin(admin.ModelAdmin):
    list_filter = ['type',]
    list_display = ['type', 'value', 'date', 'ua', 'path']

admin.site.register(Log, LogAdmin)
