# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Weapon'
        db.create_table(u'objects_weapon', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=250)),
        ))
        db.send_create_signal(u'objects', ['Weapon'])

        # Adding model 'Take'
        db.create_table(u'objects_take', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=250)),
        ))
        db.send_create_signal(u'objects', ['Take'])

        # Adding model 'Wear'
        db.create_table(u'objects_wear', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=250)),
        ))
        db.send_create_signal(u'objects', ['Wear'])

        # Adding model 'Type'
        db.create_table(u'objects_type', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=250)),
        ))
        db.send_create_signal(u'objects', ['Type'])

        # Adding model 'Material'
        db.create_table(u'objects_material', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=250)),
        ))
        db.send_create_signal(u'objects', ['Material'])

        # Adding model 'ExtraFlag'
        db.create_table(u'objects_extraflag', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=250)),
        ))
        db.send_create_signal(u'objects', ['ExtraFlag'])

        # Adding model 'Affect'
        db.create_table(u'objects_affect', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=250)),
        ))
        db.send_create_signal(u'objects', ['Affect'])

        # Adding model 'ExtraProperty'
        db.create_table(u'objects_extraproperty', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=250)),
        ))
        db.send_create_signal(u'objects', ['ExtraProperty'])

        # Adding model 'NoProperty'
        db.create_table(u'objects_noproperty', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=250)),
        ))
        db.send_create_signal(u'objects', ['NoProperty'])

        # Adding model 'PropertyValue'
        db.create_table(u'objects_propertyvalue', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('prop', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['objects.ExtraProperty'])),
            ('value', self.gf('django.db.models.fields.IntegerField')()),
        ))
        db.send_create_signal(u'objects', ['PropertyValue'])

        # Adding model 'Object'
        db.create_table(u'objects_object', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(unique=True, max_length=250)),
            ('weight', self.gf('django.db.models.fields.IntegerField')()),
            ('cost', self.gf('django.db.models.fields.IntegerField')()),
            ('cost_per_day_on', self.gf('django.db.models.fields.IntegerField')()),
            ('cost_per_day_off', self.gf('django.db.models.fields.IntegerField')()),
            ('material', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['objects.Material'])),
            ('type', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['objects.Type'])),
            ('weapon', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['objects.Weapon'], null=True, blank=True)),
            ('ac', self.gf('django.db.models.fields.IntegerField')(null=True, blank=True)),
            ('armor', self.gf('django.db.models.fields.IntegerField')(null=True, blank=True)),
            ('dmg_str', self.gf('django.db.models.fields.CharField')(max_length=250, null=True, blank=True)),
            ('dmg_avg', self.gf('django.db.models.fields.FloatField')(null=True, blank=True)),
            ('mud_desc', self.gf('django.db.models.fields.TextField')()),
        ))
        db.send_create_signal(u'objects', ['Object'])

        # Adding M2M table for field wear on 'Object'
        db.create_table(u'objects_object_wear', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('object', models.ForeignKey(orm[u'objects.object'], null=False)),
            ('wear', models.ForeignKey(orm[u'objects.wear'], null=False))
        ))
        db.create_unique(u'objects_object_wear', ['object_id', 'wear_id'])

        # Adding M2M table for field take on 'Object'
        db.create_table(u'objects_object_take', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('object', models.ForeignKey(orm[u'objects.object'], null=False)),
            ('take', models.ForeignKey(orm[u'objects.take'], null=False))
        ))
        db.create_unique(u'objects_object_take', ['object_id', 'take_id'])

        # Adding M2M table for field affects on 'Object'
        db.create_table(u'objects_object_affects', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('object', models.ForeignKey(orm[u'objects.object'], null=False)),
            ('affect', models.ForeignKey(orm[u'objects.affect'], null=False))
        ))
        db.create_unique(u'objects_object_affects', ['object_id', 'affect_id'])

        # Adding M2M table for field extra on 'Object'
        db.create_table(u'objects_object_extra', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('object', models.ForeignKey(orm[u'objects.object'], null=False)),
            ('extraflag', models.ForeignKey(orm[u'objects.extraflag'], null=False))
        ))
        db.create_unique(u'objects_object_extra', ['object_id', 'extraflag_id'])

        # Adding M2M table for field prop on 'Object'
        db.create_table(u'objects_object_prop', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('object', models.ForeignKey(orm[u'objects.object'], null=False)),
            ('propertyvalue', models.ForeignKey(orm[u'objects.propertyvalue'], null=False))
        ))
        db.create_unique(u'objects_object_prop', ['object_id', 'propertyvalue_id'])

        # Adding M2M table for field no_use on 'Object'
        db.create_table(u'objects_object_no_use', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('object', models.ForeignKey(orm[u'objects.object'], null=False)),
            ('noproperty', models.ForeignKey(orm[u'objects.noproperty'], null=False))
        ))
        db.create_unique(u'objects_object_no_use', ['object_id', 'noproperty_id'])

        # Adding M2M table for field no_avail on 'Object'
        db.create_table(u'objects_object_no_avail', (
            ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True)),
            ('object', models.ForeignKey(orm[u'objects.object'], null=False)),
            ('noproperty', models.ForeignKey(orm[u'objects.noproperty'], null=False))
        ))
        db.create_unique(u'objects_object_no_avail', ['object_id', 'noproperty_id'])


    def backwards(self, orm):
        # Deleting model 'Weapon'
        db.delete_table(u'objects_weapon')

        # Deleting model 'Take'
        db.delete_table(u'objects_take')

        # Deleting model 'Wear'
        db.delete_table(u'objects_wear')

        # Deleting model 'Type'
        db.delete_table(u'objects_type')

        # Deleting model 'Material'
        db.delete_table(u'objects_material')

        # Deleting model 'ExtraFlag'
        db.delete_table(u'objects_extraflag')

        # Deleting model 'Affect'
        db.delete_table(u'objects_affect')

        # Deleting model 'ExtraProperty'
        db.delete_table(u'objects_extraproperty')

        # Deleting model 'NoProperty'
        db.delete_table(u'objects_noproperty')

        # Deleting model 'PropertyValue'
        db.delete_table(u'objects_propertyvalue')

        # Deleting model 'Object'
        db.delete_table(u'objects_object')

        # Removing M2M table for field wear on 'Object'
        db.delete_table('objects_object_wear')

        # Removing M2M table for field take on 'Object'
        db.delete_table('objects_object_take')

        # Removing M2M table for field affects on 'Object'
        db.delete_table('objects_object_affects')

        # Removing M2M table for field extra on 'Object'
        db.delete_table('objects_object_extra')

        # Removing M2M table for field prop on 'Object'
        db.delete_table('objects_object_prop')

        # Removing M2M table for field no_use on 'Object'
        db.delete_table('objects_object_no_use')

        # Removing M2M table for field no_avail on 'Object'
        db.delete_table('objects_object_no_avail')


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
            'cost': ('django.db.models.fields.IntegerField', [], {}),
            'cost_per_day_off': ('django.db.models.fields.IntegerField', [], {}),
            'cost_per_day_on': ('django.db.models.fields.IntegerField', [], {}),
            'dmg_avg': ('django.db.models.fields.FloatField', [], {'null': 'True', 'blank': 'True'}),
            'dmg_str': ('django.db.models.fields.CharField', [], {'max_length': '250', 'null': 'True', 'blank': 'True'}),
            'extra': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['objects.ExtraFlag']", 'symmetrical': 'False'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'material': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['objects.Material']"}),
            'mud_desc': ('django.db.models.fields.TextField', [], {}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '250'}),
            'no_avail': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'not_avail_obj'", 'symmetrical': 'False', 'to': u"orm['objects.NoProperty']"}),
            'no_use': ('django.db.models.fields.related.ManyToManyField', [], {'related_name': "'not_used_obj'", 'symmetrical': 'False', 'to': u"orm['objects.NoProperty']"}),
            'prop': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['objects.PropertyValue']", 'symmetrical': 'False'}),
            'take': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['objects.Take']", 'symmetrical': 'False'}),
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