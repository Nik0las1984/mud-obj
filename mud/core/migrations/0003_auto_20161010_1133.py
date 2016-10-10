# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_auto_20160926_1206'),
    ]

    operations = [
        migrations.AddField(
            model_name='logid',
            name='bot_flag',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='log',
            name='type',
            field=models.IntegerField(choices=[(0, '\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d \u043e\u0431\u044a\u0435\u043a\u0442'), (1, '\u041f\u043e\u0438\u0441\u043a \u043e\u0431\u044a\u0435\u043a\u0442\u043e\u0432'), (2, '\u0414\u0440\u0443\u0433\u043e\u0435')]),
        ),
    ]
