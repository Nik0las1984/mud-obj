.. _introduction-blitz-tutorial:

========================================
Django-seo2 Framework 60-Second-Tutorial
========================================

This is an inordinately brief tutorial, for Django experts who don't like to waste time.

Step One
--------

* Add ``djangoseo`` to ``INSTALLED_APPS``
* Make sure ``"django.core.context_processors.request"`` is listed in ``TEMPLATE_CONTEXT_PROCESSORS``

Step Two: Definition
--------------------

Create a file ``seo.py`` in any app, with the following simple definition:

.. code-block:: python

    from djangoseo import seo

    class MyMetadata(seo.Metadata):
        title       = seo.Tag(head=True, max_length=68)
        description = seo.MetaTag(max_length=155)
        keywords    = seo.KeywordTag()
        heading     = seo.Tag(name="h1")

Run ``migrate``

Step Three: Admin
-----------------

To edit the data in the admin, call ``register_seo_admin`` with the admin site and the metadata definition:

.. code-block:: python

    from djangoseo.admin import register_seo_admin
    from django.contrib import admin
    from myapp.seo import MyMetadata

    register_seo_admin(admin.site, MyMetadata)


Step Four: Adding to templates
------------------------------

To get the metadata in your templates, use the ``{% get_metadata %}`` template tag:

.. code-block:: html

    {% load seo %}
    {% get_metadata %}

The above renders like this:

.. code-block:: html

    <title>My Title</html>
    <meta name="description" content="My description" />
    <meta name="keywords" content="My, list, of, keywords" />


Epilogue: A little more control
-------------------------------

If you save the metadata object as a variable, you'll be able to access the fields individually:

.. code-block:: html

    {% load seo %}
    {% get_metadata as metadata %}

    {{ metadata }}

    {{ metadata.heading }}
    <h1 class="special">{{ my_meta.heading.value }}</h1>
    <p>{{ my_meta.description.value }}</p>

The following is rendered:

.. code-block:: html

    <title>My Title</html>
    <meta name="description" content="My description" />
    <meta name="keywords" content="My, list, of, keywords" />

    <h1>My Heading</h1>
    <h1 class="special">My Heading</h1>
    <p>My description</p>


What next?
----------

This is just an introduction to the framework. There are a number of other features including:

- Variable substitution to access model instance attributes (for model-based metadata) and view context (for view-based metadata)
- Optional support for django sites framework
- Optional i18n (internationalisation) support
- Optional caching
- Auto-population for missing values using other fields, attributes, methods, callables or literal values
- Grouped fields, for both admin editing and output
- Hidden fields, ie not editable in admin
- API for custom fields to provide customised rendering, cleaning, etc

Complete details on these are provided in the :ref:`API reference <reference-definition>`.
