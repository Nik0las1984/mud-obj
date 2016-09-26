# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='LogId',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('ua', models.TextField(null=True)),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('desc', models.CharField(max_length=1024, null=True)),
                ('user', models.ForeignKey(to=settings.AUTH_USER_MODEL, null=True)),
            ],
        ),
        migrations.RemoveField(
            model_name='log',
            name='ua',
        ),
        migrations.AddField(
            model_name='log',
            name='lid',
            field=models.ForeignKey(to='core.LogId', null=True),
        ),
    ]
