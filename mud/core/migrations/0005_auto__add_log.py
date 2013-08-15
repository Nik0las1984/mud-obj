# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Log'
        db.create_table('core_log', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('date', self.gf('django.db.models.fields.DateTimeField')(default=datetime.datetime(2013, 8, 15, 0, 0), auto_now_add=True, blank=True)),
            ('value', self.gf('django.db.models.fields.TextField')(null=True)),
            ('type', self.gf('django.db.models.fields.IntegerField')()),
            ('ua', self.gf('django.db.models.fields.TextField')(null=True)),
            ('path', self.gf('django.db.models.fields.TextField')(null=True)),
        ))
        db.send_create_signal('core', ['Log'])


    def backwards(self, orm):
        # Deleting model 'Log'
        db.delete_table('core_log')


    models = {
        'core.counter': {
            'Meta': {'object_name': 'Counter'},
            'body': ('django.db.models.fields.TextField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.TextField', [], {})
        },
        'core.log': {
            'Meta': {'object_name': 'Log'},
            'date': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime(2013, 8, 15, 0, 0)', 'auto_now_add': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'path': ('django.db.models.fields.TextField', [], {'null': 'True'}),
            'type': ('django.db.models.fields.IntegerField', [], {}),
            'ua': ('django.db.models.fields.TextField', [], {'null': 'True'}),
            'value': ('django.db.models.fields.TextField', [], {'null': 'True'})
        },
        'core.statistic': {
            'Meta': {'object_name': 'Statistic'},
            'date': ('django.db.models.fields.DateTimeField', [], {}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'total': ('django.db.models.fields.IntegerField', [], {}),
            'total_clan': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'total_pk': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'total_remort': ('django.db.models.fields.IntegerField', [], {'default': '0'})
        },
        'core.user': {
            'Meta': {'object_name': 'User'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.TextField', [], {})
        }
    }

    complete_apps = ['core']