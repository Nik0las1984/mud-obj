# coding=utf-8

from django import forms
from objects.models import *


class ParamsForm(forms.Form):
    name = forms.CharField(label = u'Название', required = False)
    wear = forms.ModelChoiceField(label = u'Можно надеть на', queryset = Wear.objects.filter().order_by('name'), required = False)
    take = forms.ModelChoiceField(label = u'Можно взять в', queryset = Take.objects.filter().order_by('name'), required = False)
    type = forms.ModelChoiceField(label = u'Тип', queryset = Type.objects.filter().order_by('name'), required = False)
    material = forms.ModelChoiceField(label = u'Материал', queryset = Material.objects.filter().order_by('name'), required = False)
    no_use = forms.ModelChoiceField(label = u'Не удобен', queryset = NoProperty.objects.filter().order_by('name'), required = False)
    no_avail = forms.ModelChoiceField(label = u'Не доступен', queryset = NoProperty.objects.filter().order_by('name'), required = False)
    extra = forms.ModelChoiceField(label = u'Экстрафлаги', queryset = ExtraFlag.objects.filter().order_by('name'), required = False)
    affects = forms.ModelChoiceField(label = u'Аффекты', queryset = Affect.objects.filter().order_by('name'), required = False)
    prop = forms.ModelChoiceField(label = u'Дополнительные свойства', queryset = PropertyValue.objects.filter().order_by('prop__name'), required = False)

