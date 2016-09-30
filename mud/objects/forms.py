# coding=utf-8

from django import forms
from objects.models import *
from captcha.fields import *


class ParamsForm(forms.Form):
    name = forms.CharField(label = u'Название', required = False)
    list = forms.ModelChoiceField(label = u'Предметы из списка', required = False, queryset = ObjectsList.objects.all())
    weapon = forms.ModelChoiceField(label = u'Принадлежит классу', queryset = Weapon.objects.filter().order_by('name'), required = False)
    wear = forms.ModelChoiceField(label = u'Можно надеть на', queryset = Wear.objects.filter().order_by('name'), required = False)
    type = forms.ModelChoiceField(label = u'Тип', queryset = Type.objects.filter().order_by('name'), required = False)
    material = forms.ModelChoiceField(label = u'Материал', queryset = Material.objects.filter().order_by('name'), required = False)
    no_use = forms.ModelChoiceField(label = u'Не удобен', queryset = NoProperty.objects.filter().order_by('name'), required = False)
    no_avail = forms.ModelChoiceField(label = u'Не доступен', queryset = NoProperty.objects.filter().order_by('name'), required = False)
    extra = forms.ModelChoiceField(label = u'Экстрафлаги', queryset = ExtraFlag.objects.filter().order_by('name'), required = False)
    affects = forms.ModelChoiceField(label = u'Аффекты', queryset = Affect.objects.filter().order_by('name'), required = False)
    prop = forms.ModelChoiceField(label = u'Дополнительные свойства', queryset = ExtraProperty.objects.filter().order_by('name'), required = False)
    dmg_avg = forms.FloatField(label = u'Среднее не ниже', required = False)
    
    def __init__(self, user, *args, **kwargs):
        self.user = user
        super(ParamsForm, self).__init__(*args, **kwargs)
        if self.user.is_superuser:
            self.fields['list'].queryset = ObjectsList.objects.filter(user = self.user).order_by("-created")
        else:
            self.fields['list'].queryset = ObjectsList.objects.none()


class CreateObjectForm(forms.Form):
    text = forms.CharField(label = u'', required = True, widget = forms.Textarea(attrs = {'cols': 90, 'rows': 15}))
    bad = forms.CharField(label = u'', required = False, widget = forms.HiddenInput())
    #captcha = CaptchaField(label = u'Введите символы с картинки')

class CreateObjectFormNoCaptcha(forms.Form):
    text = forms.CharField(label = u'', required = True, widget = forms.Textarea(attrs = {'cols': 90, 'rows': 15}))
    bad = forms.CharField(label = u'', required = False, widget = forms.HiddenInput())

class ObjectCommentForm(forms.Form):
	text = forms.CharField(label = u'', required = False, widget = forms.Textarea(attrs = {'cols': 60, 'rows': 15}))
	oid = forms.ModelChoiceField(label = u'', queryset = Object.objects, widget = forms.HiddenInput())
