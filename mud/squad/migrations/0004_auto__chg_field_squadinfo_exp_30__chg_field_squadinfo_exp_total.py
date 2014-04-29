# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):

        # Changing field 'SquadInfo.exp_30'
        db.alter_column(u'squad_squadinfo', 'exp_30', self.gf('django.db.models.fields.BigIntegerField')())

        # Changing field 'SquadInfo.exp_total'
        db.alter_column(u'squad_squadinfo', 'exp_total', self.gf('django.db.models.fields.BigIntegerField')())

    def backwards(self, orm):

        # Changing field 'SquadInfo.exp_30'
        db.alter_column(u'squad_squadinfo', 'exp_30', self.gf('django.db.models.fields.IntegerField')())

        # Changing field 'SquadInfo.exp_total'
        db.alter_column(u'squad_squadinfo', 'exp_total', self.gf('django.db.models.fields.IntegerField')())

    models = {
        u'squad.squad': {
            'Meta': {'ordering': "['name']", 'object_name': 'Squad'},
            'active': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.TextField', [], {}),
            'short_name': ('django.db.models.fields.TextField', [], {})
        },
        u'squad.squadactivitylog': {
            'Meta': {'object_name': 'SquadActivityLog'},
            'active': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'date': ('django.db.models.fields.DateTimeField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'squad': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'activity_log'", 'to': u"orm['squad.Squad']"})
        },
        u'squad.squadinfo': {
            'Meta': {'ordering': "['-date']", 'object_name': 'SquadInfo'},
            'date': ('django.db.models.fields.DateTimeField', [], {}),
            'exp_30': ('django.db.models.fields.BigIntegerField', [], {}),
            'exp_total': ('django.db.models.fields.BigIntegerField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'population': ('django.db.models.fields.IntegerField', [], {}),
            'squad': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'info'", 'to': u"orm['squad.Squad']"})
        }
    }

    complete_apps = ['squad']