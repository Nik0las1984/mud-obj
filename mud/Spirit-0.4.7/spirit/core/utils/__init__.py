# -*- coding: utf-8 -*-

from __future__ import unicode_literals

import os
import json
import hashlib
from contextlib import contextmanager

from django.template.loader import render_to_string
from django.http import HttpResponse


def render_form_errors(form):
    return render_to_string('spirit/utils/_form_errors.html', {'form': form, })


def json_response(data=None, status=200):
    # TODO: Use JsonResponse on Django 1.7
    data = data or {}
    return HttpResponse(json.dumps(data), content_type='application/json', status=status)


def mkdir_p(path):
    try:
        os.makedirs(path)
    except OSError:
        if not os.path.isdir(path):
            raise


def get_hash(file):
    # todo: test!
    md5 = hashlib.md5()

    for c in file.chunks():
        md5.update(c)

    return md5.hexdigest()


@contextmanager
def pushd(new_dir):
    """
    Usage:

    with pushd('./my_dir'):
        print(os.getcwd())  # ./my_dir

        with pushd('./my_dir/my_other_dir'):
            print(os.getcwd())  # ./my_dir/my_other_dir

        print(os.getcwd())  # ./my_dir
    """
    prev_dir = os.getcwd()
    os.chdir(new_dir)
    yield
    os.chdir(prev_dir)


def get_query_string(request, **params):
    """
    Adds params to current query string
    """
    # todo: test!
    query_dict = request.GET.copy()  # MultiValueDict

    for k, v in sorted(params.items()):
        query_dict[k] = v

    return query_dict.urlencode()
