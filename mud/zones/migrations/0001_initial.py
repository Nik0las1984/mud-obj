# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Zone'
        db.create_table(u'zones_zone', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.TextField')()),
            ('level', self.gf('django.db.models.fields.IntegerField')()),
        ))
        db.send_create_signal(u'zones', ['Zone'])

        # Adding model 'ZoneLink'
        db.create_table(u'zones_zonelink', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('z1', self.gf('django.db.models.fields.related.ForeignKey')(related_name='connected_zones', to=orm['zones.Zone'])),
            ('z2', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['zones.Zone'])),
            ('type', self.gf('django.db.models.fields.IntegerField')(default=0)),
            ('value', self.gf('django.db.models.fields.TextField')()),
        ))
        db.send_create_signal(u'zones', ['ZoneLink'])


    def backwards(self, orm):
        # Deleting model 'Zone'
        db.delete_table(u'zones_zone')

        # Deleting model 'ZoneLink'
        db.delete_table(u'zones_zonelink')


    models = {
        u'zones.zone': {
            'Meta': {'object_name': 'Zone'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'level': ('django.db.models.fields.IntegerField', [], {}),
            'name': ('django.db.models.fields.TextField', [], {})
        },
        u'zones.zonelink': {
            'Meta': {'object_name': 'ZoneLink'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'type': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'value': ('django.db.models.fields.TextField', [], {}),
            'z1': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'connected_zones'", 'to': u"orm['zones.Zone']"}),
            'z2': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['zones.Zone']"})
        }
    }

    complete_apps = ['zones']