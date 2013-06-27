# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Spell'
        db.create_table('objects_spell', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=250)),
        ))
        db.send_create_signal('objects', ['Spell'])

        # Adding field 'Object.spell'
        db.add_column('objects_object', 'spell',
                      self.gf('django.db.models.fields.related.ForeignKey')(to=orm['objects.Spell'], null=True, blank=True),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting model 'Spell'
        db.delete_table('objects_spell')

        # Deleting field 'Object.spell'
        db.delete_column('objects_object', 'spell_id')


    models = {
        'objects.affect': {
            'Meta': {'object_name': 'Affect'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        'objects.extraflag': {
            'Meta': {'object_name': 'ExtraFlag'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        'objects.extraproperty': {
            'Meta': {'object_name': 'ExtraProperty'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        'objects.material': {
            'Meta': {'object_name': 'Material'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        'objects.noproperty': {
            'Meta': {'object_name': 'NoProperty'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        'objects.object': {
            'Meta': {'object_name': 'Object'},
            'ac': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'added': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime(2013, 6, 27, 0, 0)', 'auto_now_add': 'True', 'blank': 'True'}),
            'affects': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['objects.Affect']", 'symmetrical': 'False'}),
            'armor': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'checked': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'cost': ('django.db.models.fields.IntegerField', [], {}),
            'cost_per_day_off': ('django.db.models.fields.IntegerField', [], {}),
            'cost_per_day_on': ('django.db.models.fields.IntegerField', [], {}),
            'dmg_avg': ('django.db.models.fields.FloatField', [], {'null': 'True', 'blank': 'True'}),
            'dmg_str': ('django.db.models.fields.CharField', [], {'max_length': '250', 'null': 'True', 'blank': 'True'}),
            'extra': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['objects.ExtraFlag']", 'symmetrical': 'False'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'material': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['objects.Material']"}),
            'mud_desc': ('django.db.models.fields.TextField', [], {}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'}),
            'no_avail': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'not_avail_obj'", 'symmetrical': 'False', 'to': "orm['objects.NoProperty']"}),
            'no_use': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'not_used_obj'", 'symmetrical': 'False', 'to': "orm['objects.NoProperty']"}),
            'prop': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['objects.PropertyValue']", 'symmetrical': 'False'}),
            'spell': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['objects.Spell']", 'null': 'True', 'blank': 'True'}),
            'take_both': ('django.db.models.fields.IntegerField', [], {'default': '-1'}),
            'take_left': ('django.db.models.fields.IntegerField', [], {'default': '-1'}),
            'take_right': ('django.db.models.fields.IntegerField', [], {'default': '-1'}),
            'type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['objects.Type']"}),
            'weapon': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['objects.Weapon']", 'null': 'True', 'blank': 'True'}),
            'wear': ('django.db.models.fields.related.ManyToManyField', [], {'to': "orm['objects.Wear']", 'symmetrical': 'False'}),
            'weight': ('django.db.models.fields.IntegerField', [], {})
        },
        'objects.propertyvalue': {
            'Meta': {'object_name': 'PropertyValue'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'prop': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['objects.ExtraProperty']"}),
            'value': ('django.db.models.fields.IntegerField', [], {})
        },
        'objects.spell': {
            'Meta': {'object_name': 'Spell'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        'objects.type': {
            'Meta': {'object_name': 'Type'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        'objects.weapon': {
            'Meta': {'object_name': 'Weapon'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        'objects.wear': {
            'Meta': {'object_name': 'Wear'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        }
    }

    complete_apps = ['objects']