# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'ObjectsList.text'
        db.add_column(u'objects_objectslist', 'text',
                      self.gf('django.db.models.fields.TextField')(default=''),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting field 'ObjectsList.text'
        db.delete_column(u'objects_objectslist', 'text')


    models = {
        u'auth.group': {
            'Meta': {'object_name': 'Group'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '80'}),
            'permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'})
        },
        u'auth.permission': {
            'Meta': {'ordering': "(u'content_type__app_label', u'content_type__model', u'codename')", 'unique_together': "((u'content_type', u'codename'),)", 'object_name': 'Permission'},
            'codename': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['contenttypes.ContentType']"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        u'auth.user': {
            'Meta': {'object_name': 'User'},
            'date_joined': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'groups': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['auth.Group']", 'symmetrical': 'False', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'is_staff': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_superuser': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'last_login': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'password': ('django.db.models.fields.CharField', [], {'max_length': '128'}),
            'user_permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'}),
            'username': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '30'})
        },
        u'contenttypes.contenttype': {
            'Meta': {'ordering': "('name',)", 'unique_together': "(('app_label', 'model'),)", 'object_name': 'ContentType', 'db_table': "'django_content_type'"},
            'app_label': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'model': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
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
            'added': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime(2013, 10, 25, 0, 0)', 'auto_now_add': 'True', 'blank': 'True'}),
            'affects': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['objects.Affect']", 'symmetrical': 'False'}),
            'armor': ('django.db.models.fields.IntegerField', [], {'null': 'True', 'blank': 'True'}),
            'bad': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
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
            'spell': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['objects.Spell']", 'null': 'True', 'blank': 'True'}),
            'take_both': ('django.db.models.fields.IntegerField', [], {'default': '-1'}),
            'take_left': ('django.db.models.fields.IntegerField', [], {'default': '-1'}),
            'take_right': ('django.db.models.fields.IntegerField', [], {'default': '-1'}),
            'type': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['objects.Type']"}),
            'weapon': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['objects.Weapon']", 'null': 'True', 'blank': 'True'}),
            'wear': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['objects.Wear']", 'symmetrical': 'False'}),
            'weight': ('django.db.models.fields.IntegerField', [], {})
        },
        u'objects.objectslist': {
            'Meta': {'object_name': 'ObjectsList'},
            'created': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime(2013, 10, 25, 0, 0)', 'auto_now_add': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.TextField', [], {}),
            'text': ('django.db.models.fields.TextField', [], {'default': "''"}),
            'user': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['auth.User']"})
        },
        u'objects.objectslistvalue': {
            'Meta': {'object_name': 'ObjectsListValue'},
            'data': ('picklefield.fields.PickledObjectField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'obj': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['objects.Object']"})
        },
        u'objects.propertyvalue': {
            'Meta': {'object_name': 'PropertyValue'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'prop': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['objects.ExtraProperty']"}),
            'value': ('django.db.models.fields.IntegerField', [], {})
        },
        u'objects.spell': {
            'Meta': {'object_name': 'Spell'},
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