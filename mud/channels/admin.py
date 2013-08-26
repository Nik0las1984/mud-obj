from django.contrib import admin
from channels.models import *

class ChannelAdmin(admin.ModelAdmin):
    search_fields = ['text']
    list_filter = ['type',]
    list_display = ['user', 'text', 'date', 'type']

admin.site.register(Channel, CounterAdmin)
