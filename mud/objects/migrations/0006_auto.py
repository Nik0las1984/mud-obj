# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding M2M table for field take on 'Object'
        db.create_table(u'objects_object_take', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('object', models.ForeignKey(orm[u'objects.object'], null=False)),
            ('takestrength', models.ForeignKey(orm[u'objects.takestrength'], null=False))
        ))
        db.create_unique(u'objects_object_take', ['object_id', 'takestrength_id'])


    def backwards(self, orm):
        # Removing M2M table for field take on 'Object'
        db.delete_table('objects_object_take')


    models = {
        u'objects.affect': {
            'Meta': {'object_name': 'Affect'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        u'objects.extraflag': {
            'Meta': {'object_name': 'ExtraFlag'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        u'objects.extraproperty': {
            'Meta': {'object_name': 'ExtraProperty'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        u'objects.material': {
            'Meta': {'object_name': 'Material'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        u'objects.noproperty': {
            'Meta': {'object_name': 'NoProperty'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        u'objects.object': {
            'Meta': {'object_name': 'Object'},
            'ac': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'affects': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['objects.Affect']", 'symmetrical': 'False'}),
            'armor': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'checked': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'cost': ('django.db.models.fields.IntegerField', [], {}),
            'cost_per_day_off': ('django.db.models.fields.IntegerField', [], {}),
            'cost_per_day_on': ('django.db.models.fields.IntegerField', [], {}),
            'dmg_avg': ('django.db.models.fields.FloatField', [], {'null': 'True', 'blank': 'True'}),
            'dmg_str': ('django.db.models.fields.CharField', [], {'max_length': '250', 'null': 'True', 'blank': 'True'}),
            'extra': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['objects.ExtraFlag']", 'symmetrical': 'False'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'material': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['objects.Material']"}),
            'mud_desc': ('django.db.models.fields.TextField', [], {}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'}),
            'no_avail': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'not_avail_obj'", 'symmetrical': 'False', 'to': u"orm['objects.NoProperty']"}),
            'no_use': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'not_used_obj'", 'symmetrical': 'False', 'to': u"orm['objects.NoProperty']"}),
            'prop': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['objects.PropertyValue']", 'symmetrical': 'False'}),
            'take': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['objects.TakeStrength']", 'symmetrical': 'False'}),
            'type': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['objects.Type']"}),
            'weapon': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['objects.Weapon']", 'null': 'True', 'blank': 'True'}),
            'wear': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['objects.Wear']", 'symmetrical': 'False'}),
            'weight': ('django.db.models.fields.IntegerField', [], {})
        },
        u'objects.propertyvalue': {
            'Meta': {'object_name': 'PropertyValue'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'prop': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['objects.ExtraProperty']"}),
            'value': ('django.db.models.fields.IntegerField', [], {})
        },
        u'objects.take': {
            'Meta': {'object_name': 'Take'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        u'objects.takestrength': {
            'Meta': {'object_name': 'TakeStrength'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'take': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['objects.Take']"}),
            'value': ('django.db.models.fields.IntegerField', [], {})
        },
        u'objects.type': {
            'Meta': {'object_name': 'Type'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        u'objects.weapon': {
            'Meta': {'object_name': 'Weapon'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        u'objects.wear': {
            'Meta': {'object_name': 'Wear'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        }
    }

    complete_apps = ['objects']