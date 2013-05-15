# coding=utf-8

from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404

from boards.models import *

def boards_list(request, o, title, flag):
    paginator = Paginator(o.order_by('mud_date').reverse(), 20)
    page = request.GET.get('page')
    try:
        o = paginator.page(page)
    except PageNotAnInteger:
        o = paginator.page(1)
    except EmptyPage:
        o = paginator.page(paginator.num_pages)

    context = {'messages': o, 'title': title, 'flag': flag, }
    return render(request, 'boards/index.html', context)


def all(request):
    return boards_list(request, Board.objects.all(), u'Все', True)

def news(request):
    return boards_list(request, Board.objects.filter(type = Board.NEWS), u'Новости', False)

def veche(request):
    return boards_list(request, Board.objects.filter(type = Board.VECHE), u'Вече', False)
    
def anons(request):
    return boards_list(request, Board.objects.filter(type = Board.ANONS), u'Анонсы', False)
    
def ideas(request):
    return boards_list(request, Board.objects.filter(type = Board.IDEAS), u'Идеи', False)
    
def message(request, id):
    o = get_object_or_404(Board, pk = id)
    return render(request, 'boards/message_full.html', {'m': o})
    