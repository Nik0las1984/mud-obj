# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'Statistic.total_pk'
        db.add_column(u'core_statistic', 'total_pk',
                      self.gf('django.db.models.fields.IntegerField')(default=0),
                      keep_default=False)

        # Adding field 'Statistic.total_clan'
        db.add_column(u'core_statistic', 'total_clan',
                      self.gf('django.db.models.fields.IntegerField')(default=0),
                      keep_default=False)

        # Adding field 'Statistic.total_remort'
        db.add_column(u'core_statistic', 'total_remort',
                      self.gf('django.db.models.fields.IntegerField')(default=0),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting field 'Statistic.total_pk'
        db.delete_column(u'core_statistic', 'total_pk')

        # Deleting field 'Statistic.total_clan'
        db.delete_column(u'core_statistic', 'total_clan')

        # Deleting field 'Statistic.total_remort'
        db.delete_column(u'core_statistic', 'total_remort')


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
            'total': ('django.db.models.fields.IntegerField', [], {}),
            'total_clan': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'total_pk': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'total_remort': ('django.db.models.fields.IntegerField', [], {'default': '0'})
        },
        u'core.user': {
            'Meta': {'object_name': 'User'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.TextField', [], {})
        }
    }

    complete_apps = ['core']