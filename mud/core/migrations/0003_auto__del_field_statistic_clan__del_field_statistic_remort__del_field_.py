# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Deleting field 'Statistic.clan'
        db.delete_column(u'core_statistic', 'clan')

        # Deleting field 'Statistic.remort'
        db.delete_column(u'core_statistic', 'remort')

        # Deleting field 'Statistic.pk'
        db.delete_column(u'core_statistic', 'pk')


    def backwards(self, orm):
        # Adding field 'Statistic.clan'
        db.add_column(u'core_statistic', 'clan',
                      self.gf('django.db.models.fields.IntegerField')(default=None),
                      keep_default=False)

        # Adding field 'Statistic.remort'
        db.add_column(u'core_statistic', 'remort',
                      self.gf('django.db.models.fields.IntegerField')(default=None),
                      keep_default=False)

        # Adding field 'Statistic.pk'
        db.add_column(u'core_statistic', 'pk',
                      self.gf('django.db.models.fields.IntegerField')(default=None),
                      keep_default=False)


    models = {
        u'core.counter': {
            'Meta': {'object_name': 'Counter'},
            'body': ('django.db.models.fields.TextField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.TextField', [], {})
        },
        u'core.statistic': {
            'Meta': {'object_name': 'Statistic'},
            'date': ('django.db.models.fields.DateTimeField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'total': ('django.db.models.fields.IntegerField', [], {})
        },
        u'core.user': {
            'Meta': {'object_name': 'User'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.TextField', [], {})
        }
    }

    complete_apps = ['core']