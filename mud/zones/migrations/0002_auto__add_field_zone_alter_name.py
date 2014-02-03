# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'Zone.alter_name'
        db.add_column(u'zones_zone', 'alter_name',
                      self.gf('django.db.models.fields.TextField')(null=True, blank=True),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting field 'Zone.alter_name'
        db.delete_column(u'zones_zone', 'alter_name')


    models = {
        u'zones.zone': {
            'Meta': {'object_name': 'Zone'},
            'alter_name': ('django.db.models.fields.TextField', [], {'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'level': ('django.db.models.fields.IntegerField', [], {}),
            'name': ('django.db.models.fields.TextField', [], {})
        },
        u'zones.zonelink': {
            'Meta': {'object_name': 'ZoneLink'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'type': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'value': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'z1': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'connected_zones'", 'to': u"orm['zones.Zone']"}),
            'z2': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['zones.Zone']"})
        }
    }

    complete_apps = ['zones']