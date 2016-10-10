from django.contrib import admin
from core.models import *

class CounterAdmin(admin.ModelAdmin):
    search_fields = ['name']

admin.site.register(Counter, CounterAdmin)

class StatisticAdmin(admin.ModelAdmin):
    pass

admin.site.register(Statistic, StatisticAdmin)

class LogIdAdmin(admin.ModelAdmin):
    list_display = ['desc', 'date', 'ua', 'bot_flag', 'pk', 'user']
    list_filter = ['bot_flag',]
    fields = ['desc', ]

admin.site.register(LogId, LogIdAdmin)


class LogAdmin(admin.ModelAdmin):
    list_filter = ['type', 'lid__bot_flag']
    list_display = ['type', 'value', 'date', 'get_lid_url', 'path']

admin.site.register(Log, LogAdmin)

class NewsAdmin(admin.ModelAdmin):
    list_display = ['title', 'user', 'date', ]

admin.site.register(News, NewsAdmin)
