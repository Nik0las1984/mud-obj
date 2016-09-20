# coding=utf-8

from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404

from boards.models import *

def boards_list(request, o, title, flag, tab_selected = 'boards'):
    paginator = Paginator(o.order_by('mud_date').reverse(), 20)
    page = request.GET.get('page')
    try:
        o = paginator.page(page)
    except PageNotAnInteger:
        o = paginator.page(1)
    except EmptyPage:
        o = paginator.page(paginator.num_pages)

    context = {'mud_messages': o, 'title': title, 'flag': flag, 'menu_selected': 'boards', 'tab_selected': tab_selected, }
    return render(request, 'boards/index.html', context)


def all(request):
    return boards_list(request, Board.objects.all(), u'Все', True)

def news(request):
    return boards_list(request, Board.objects.filter(type = Board.NEWS), u'Новости', False, 'news')

def veche(request):
    return boards_list(request, Board.objects.filter(type = Board.VECHE), u'Вече', False, 'veche')
    
def anons(request):
    return boards_list(request, Board.objects.filter(type = Board.ANONS), u'Анонсы', False, 'anons')
    
def ideas(request):
    return boards_list(request, Board.objects.filter(type = Board.IDEAS), u'Идеи', False, 'ideas')

def coder(request):
    return boards_list(request, Board.objects.filter(type = Board.CODER), u'Кодер', False, 'coder')
    
def message(request, id):
    o = get_object_or_404(Board, pk = id)
    return render(request, 'boards/message_full.html', {'m': o, 'menu_selected': 'boards'})
    