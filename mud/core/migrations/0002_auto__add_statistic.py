# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Statistic'
        db.create_table(u'core_statistic', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('date', self.gf('django.db.models.fields.DateTimeField')()),
            ('total', self.gf('django.db.models.fields.IntegerField')()),
            ('pk', self.gf('django.db.models.fields.IntegerField')()),
            ('clan', self.gf('django.db.models.fields.IntegerField')()),
            ('remort', self.gf('django.db.models.fields.IntegerField')()),
        ))
        db.send_create_signal(u'core', ['Statistic'])


    def backwards(self, orm):
        # Deleting model 'Statistic'
        db.delete_table(u'core_statistic')


    models = {
        u'core.counter': {
            'Meta': {'object_name': 'Counter'},
            'body': ('django.db.models.fields.TextField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.TextField', [], {})
        },
        u'core.statistic': {
            'Meta': {'object_name': 'Statistic'},
            'clan': ('django.db.models.fields.IntegerField', [], {}),
            'date': ('django.db.models.fields.DateTimeField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'pk': ('django.db.models.fields.IntegerField', [], {}),
            'remort': ('django.db.models.fields.IntegerField', [], {}),
            'total': ('django.db.models.fields.IntegerField', [], {})
        },
        u'core.user': {
            'Meta': {'object_name': 'User'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.TextField', [], {})
        }
    }

    complete_apps = ['core']