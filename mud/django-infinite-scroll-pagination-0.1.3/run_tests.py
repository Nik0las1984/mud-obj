#-*- coding: utf-8 -*-

from __future__ import unicode_literals
from optparse import OptionParser
import sys

from django.conf import settings, global_settings

if not settings.configured:
    settings.configure(
        DATABASES={
            "default": {
                "ENGINE": "django.db.backends.sqlite3",
            }
        },
        INSTALLED_APPS=[
            "tests",
        ],
        TEMPLATE_CONTEXT_PROCESSORS=global_settings.TEMPLATE_CONTEXT_PROCESSORS +
            ("django.core.context_processors.request",),
        ROOT_URLCONF="tests.urls",
        DEBUG=False,
    )

import django
from django.test.simple import DjangoTestSuiteRunner


def run_tests(*test_args, **kwargs):
    if not test_args:
        test_args = ["tests"]

    test_runner = DjangoTestSuiteRunner(
        verbosity=kwargs.get("verbosity", 1),
        interactive=kwargs.get("interactive", False),
        failfast=kwargs.get("failfast")
    )
    failures = test_runner.run_tests(test_args)
    sys.exit(failures)


if __name__ == "__main__":
    if hasattr(django, 'setup'):
        django.setup()

    parser = OptionParser()
    parser.add_option("--failfast", action="store_true", default=False, dest="failfast")
    parser.add_option("--verbosity", action="store", default=1, type=int, dest="verbosity")
    (options, args) = parser.parse_args()
    run_tests(failfast=options.failfast, verbosity=options.verbosity, *args)
