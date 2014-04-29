# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Squad'
        db.create_table(u'squad_squad', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.TextField')()),
            ('short_name', self.gf('django.db.models.fields.TextField')()),
            ('active', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal(u'squad', ['Squad'])

        # Adding model 'SquadInfo'
        db.create_table(u'squad_squadinfo', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('squad', self.gf('django.db.models.fields.related.ForeignKey')(related_name='info', to=orm['squad.Squad'])),
            ('date', self.gf('django.db.models.fields.DateTimeField')()),
            ('population', self.gf('django.db.models.fields.IntegerField')()),
            ('exp_total', self.gf('django.db.models.fields.IntegerField')()),
            ('exp_30', self.gf('django.db.models.fields.IntegerField')()),
        ))
        db.send_create_signal(u'squad', ['SquadInfo'])


    def backwards(self, orm):
        # Deleting model 'Squad'
        db.delete_table(u'squad_squad')

        # Deleting model 'SquadInfo'
        db.delete_table(u'squad_squadinfo')


    models = {
        u'squad.squad': {
            'Meta': {'ordering': "['name']", 'object_name': 'Squad'},
            'active': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.TextField', [], {}),
            'short_name': ('django.db.models.fields.TextField', [], {})
        },
        u'squad.squadinfo': {
            'Meta': {'object_name': 'SquadInfo'},
            'date': ('django.db.models.fields.DateTimeField', [], {}),
            'exp_30': ('django.db.models.fields.IntegerField', [], {}),
            'exp_total': ('django.db.models.fields.IntegerField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'population': ('django.db.models.fields.IntegerField', [], {}),
            'squad': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'info'", 'to': u"orm['squad.Squad']"})
        }
    }

    complete_apps = ['squad']