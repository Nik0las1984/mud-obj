# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-09-16 17:08
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('zones', '__first__'),
    ]

    operations = [
        migrations.CreateModel(
            name='Affect',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='ExtraFlag',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='ExtraProperty',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='Material',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='NoProperty',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='Object',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
                ('weight', models.IntegerField()),
                ('cost', models.IntegerField()),
                ('cost_per_day_on', models.IntegerField()),
                ('cost_per_day_off', models.IntegerField()),
                ('take_left', models.IntegerField(default=-1)),
                ('take_right', models.IntegerField(default=-1)),
                ('take_both', models.IntegerField(default=-1)),
                ('ac', models.IntegerField(blank=True, null=True)),
                ('armor', models.IntegerField(blank=True, null=True)),
                ('dmg_str', models.CharField(blank=True, max_length=250, null=True)),
                ('dmg_avg', models.FloatField(blank=True, null=True)),
                ('mud_desc', models.TextField()),
                ('html_desc', models.TextField(default='')),
                ('checked', models.BooleanField(default=True)),
                ('added', models.DateTimeField(auto_now_add=True)),
                ('bad', models.BooleanField(default=False)),
                ('comment', models.TextField(blank=True, default=b'')),
                ('last_modified', models.DateTimeField(auto_now=True)),
                ('capacity', models.IntegerField(default=-1)),
                ('affects', models.ManyToManyField(to='objects.Affect')),
                ('extra', models.ManyToManyField(to='objects.ExtraFlag')),
                ('material', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='objects.Material')),
                ('no_avail', models.ManyToManyField(related_name='not_avail_obj', to='objects.NoProperty')),
                ('no_use', models.ManyToManyField(related_name='not_used_obj', to='objects.NoProperty')),
            ],
            options={
                'ordering': ['-last_modified'],
            },
        ),
        migrations.CreateModel(
            name='ObjectsList',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.TextField()),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('text', models.TextField(default=b'')),
                ('objs', models.ManyToManyField(to='objects.Object')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='PropertyValue',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('value', models.IntegerField()),
                ('prop', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='objects.ExtraProperty')),
            ],
        ),
        migrations.CreateModel(
            name='Recipe',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='Spell',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='Type',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='Weapon',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='Wear',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=250)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.AddField(
            model_name='object',
            name='prop',
            field=models.ManyToManyField(to='objects.PropertyValue'),
        ),
        migrations.AddField(
            model_name='object',
            name='recipe',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='objects.Recipe'),
        ),
        migrations.AddField(
            model_name='object',
            name='spell',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='objects.Spell'),
        ),
        migrations.AddField(
            model_name='object',
            name='type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='objects.Type'),
        ),
        migrations.AddField(
            model_name='object',
            name='weapon',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='objects.Weapon'),
        ),
        migrations.AddField(
            model_name='object',
            name='wear',
            field=models.ManyToManyField(to='objects.Wear'),
        ),
        migrations.AddField(
            model_name='object',
            name='zones',
            field=models.ManyToManyField(blank=True, default=None, null=True, to='zones.Zone'),
        ),
    ]
