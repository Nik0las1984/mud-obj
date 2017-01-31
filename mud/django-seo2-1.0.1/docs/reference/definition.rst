
.. _reference-definition:

===================
SEO data definition
===================

The SEO data definition is used to create a series of Django models to store metadata.
The definition itself, is similar to the definition of Django models. Here is a simple example:

.. code-block:: python

    class BasicExample(seo.Metadata):
        title       = seo.Tag(head=True)
        keywords    = seo.MetaTag()
        description = seo.MetaTag()
        heading     = seo.Tag(name="h1")

This eventually produces some models, which stores four different pieces of metadata.
The behaviour can be customised by passing attributes, as the ``heading`` field does.


Fields
======

The are four built-in metadata fields: ``seo.Tag()``, ``seo.MetaTag()``, ``seo.KeywordTag()``  and ``seo.Raw()``. 
The full range of attributes for each type of field is listed below.

``seo.Tag``
-----------


This is your standard, every-day HTML tag, like ``<title>`` or ``<h1>``.

.. class:: seo.Tag(**options)

.. attribute:: name

    Name of this tag. For example, if name is set to ``h1``, the following will be rendered: ``<h1>My heading</h1>``.
    By default, this is set to the attribute's name.

.. attribute:: valid_tags

    See below for details. This defaults to a list of inline HTML elements.


``seo.MetaTag``
---------------

Because ``meta`` tags are a common place to store metadata, a special field is provided. 
This field is useful, as it has attribute escaping built in (for eg quotations).

.. class:: seo.MetaTag(**options)

.. attribute:: name

    The value of the meta element's ``name`` attribute.
    For example, if name is set to ``"description"``, the following will be rendered: ``<meta name="description" content="My description" />``
    By default, this is set to the attribute's name.


``seo.KeywordTag``
------------------

This is simply a ``MetaTag`` with the default name ``keywords`` and small customisations in the admin.
When a value is entered over multiple lines, each line is joined using a comma.
In the future, more substantial admin customisations may be employed to help add keywords.

.. class:: seo.KeywordTag(**options)

.. attribute:: name

    The value of the meta element's ``name`` attribute. By default, this is set to ``keywords``.


``seo.Raw``
-----------

The raw field allows the admin user to enter raw html data (if you want them to!). 
You can of course restrict the tags available, to ensure that the admin users cannot inadventently break the site 
(they are after all not playing the role of website developer). 
By default, a Django ``TextField`` is used for this field.

.. class:: seo.Raw(**options)


All fields:
-----------

All three fields (``Tag``, ``MetaTag`` and ``Raw``) accept the following parameters.
Any unknown parameters will be passed onto the underlying Django field (usually a ``CharField``).

.. attribute:: field

    The underlying Django field, either a field class or a field instance. By default this is usually a ``CharField``.

.. attribute: field_kwargs
    
    This dict is passed to the underlying Django field as keyword arguments, in case you would like to customise things.
    Note that ``choices``, ``verbose_name``, ``max_length`` and ``help_text`` will also be passed to the Django field, if given.

.. attribute:: head

    Boolean, determines if this should automatically be included in the head

.. attribute:: editable

    Boolean, determines if this should be user editable (in the admin),
    otherwise the default value will always be used.

.. attribute:: choices
    
    A list of values, which will be passed to the underlying Django field, making them available in the admin (usually as a drop down list).

.. attribute:: verbose_name

    A user friendly name for this field, which appears in the admin.

.. attribute:: help_text

    A description of what should go in this field, for the admin.
    If a default value is given (using the ``populate_from`` parameter), 
    a description of what will be included will appear automatically at the end of the ``help_text``.

.. attribute:: populate_from

    A default value, when no data is available (as seen above for each of the fields).
    If you do not set this, it will be set to ``None``, which means the field will not appear.
    You can pass a callable, name of a field, name of a method or a literal value.
    The value is resolved in the following way: 

        1) if a callable is provided, call it each time the value is to be displayed

        2) if name of field or method is provided, use the value provided by that field or method

        3) otherwise, treat the given value as a literal value. Literal values can also be explicitly marked.

    If a callable or the name of a method is provided, 
    it is called (at run time) with the metadata as the first argument 
    (or of course ``self``) and a variable set of keyword arguments.
    For this reason, you should always use ``**kwargs`` 
    and default values for the parameters you use.
    Return ``None`` to leave out the tag/meta tag/raw data. For example:

    .. code-block:: python

        def default_title(metadata, model_instance=None, **kwargs):
            if model_instance:
                return "My Website: %s" % model_instance.name
            else:
                return None

    Currently, the keywords are `model_instance`, `view_name`, `content_type`, `path`. 
    They won't all appear at once, and future version may include more information.

    If you provide a callable, you can describe what the callable will return for the benefit of admin users. 
    Do this by setting the ``short_description`` attribute on the callable. For example:

    .. code-block:: python

        def default_title(metadata, **kwargs):
            return "My Website"
        default_title.short_description = "Standard title will be used"

.. attribute:: max_length

    This is passed directly onto the Django field. By default, it is set to an arbitrary 511 characters, but it is worth setting this manually.
    For a ``<title>`` tag, a limit of 68 will ensure the title fits into most search engine results.
    For the description meta tag, a limit of 155 characters will be safe.
    If the field has been set to use a ``TextField`` Django field, then ``max_length`` cannot be specified.

.. attribute:: valid_tags

    Tags listed here are valid, all other tags will be stipped from the output.

    If this is not set, and ``head`` is set to ``True``, then this will default to:

    .. code-block:: python

        valid_tags = "head title base link meta script".split()

    otherwise, it is set to ``None``, allowing all tags.


Meta Options
============

The metadata definition can take a number of options that are provided in a ``Meta`` class (sorry for the name), much like Django models and forms do. For example:

.. code-block:: python

    class BasicExample(seo.Metadata):
        title       = seo.Tag(head=True)
        keywords    = seo.MetaTag()
        description = seo.MetaTag()
        heading     = seo.Tag(name="h1")

        class Meta:
            use_sites = True
            use_cache = True
            use_i18n = True
            groups = {'optional': ('heading',)}
            seo_models = ('my_app', 'flatpages.FlatPage')
            seo_views = ('my_app', )
            backends = ('path', 'model', 'view')
            verbose_name = "My basic example"
            verbose_name_plural = "My basic examples"
            

.. attribute:: Meta.use_sites

    Boolean, determines if all metadata should be linked to a site in the sites framework.
    Each metadata entry can then be optionally associated with a site, meaning it will only appear if the selected site is the current site.
    If site is set to null on a metadata entry, it will be used for all sites that are missing an explicit entry.
    By default, ``use_sites`` is ``False``.

.. attribute:: Meta.use_cache
    
    If this is ``True`` caching is enabled, meaning that each of the final values for each field on a given path will be cached.
    You may like to turn this off if you are caching the final output in any case.
    By default, ``use_cache`` is ``False``.

.. attribute:: Meta.use_i18n

    If this is ``True``, an extra field for language selection is provided. Metadata will only be returned for the given language.
    By default, ``use_i18n`` is ``False``.

..
    .. attribute:: Meta.use_redirect
    
        If this is set to ``True``, automatically add a ``Redirect`` from the ``django.contrib.redirects`` app when a path changes for a given metadata entry.
        In practice, this applies to path-based and model-instance-based metadata
        By default, ``use_redirect`` is ``False``.

.. attribute:: Meta.groups

    Logical grouping of fields. This will be used in the admin, as well as in the output. Templates can access this directly to output a number of grouped fields at once.

.. attribute:: Meta.seo_models

    List of apps and/or models (in the form ``app_name.model_name``) for which metadata will be attached. When an instance is created, a matching metadata instance is automatically created. 

.. attribute:: Meta.seo_views

    List of apps and/or view names to which metadata can be attached. When an app name is given, a ``urls.py`` will be used to limit the installed views.

.. attribute:: Meta.backends

    When you define metadata fields, four django models are created to attach the metadata to various things: paths, model instances, models and views. 
    You can restrict which of these are created by setting ``backeneds`` to a list with a subset of the default value: ``("path", "modelinstance", "model", "view")``

.. attribute:: Meta.verbose_name

    This is used in the ``verbose_name`` for each of the Django models created.

.. attribute:: Meta.verbose_name_plural

    This is used in the ``verbose_name_plural`` for each of the Django models created.


Help Text
=========

Help text for each of the fields can be provided manually, as in Django, but it can also be provided automatically and using a clean bulk-help-text syntax.

Automatic help text
-------------------

Help text is sometimes automatically generated for fields that do not have an explicit ``help_text`` set:

- When ``populate_from`` is set to a literal value, the help text will be set to: ``'If empty, "value" will be used.'``
- When ``populate_from`` is set to another field, the help text will be set to: ``'If empty, other field will be used.'``
- When ``populate_from`` is set to a callable, and that callable has an function attribute called ``short_description``, the help text will be set to: ``'If empty, short description``


Bulk help text
--------------

You can also edit the help text for a number of fields in a convenient syntax. For example:

.. code-block:: python

    class BasicExample(seo.Metadata):
        title       = seo.Tag(head=True)
        keywords    = seo.MetaTag()
        description = seo.MetaTag()
        heading     = seo.Tag(name="h1")

        class HelpText:
            title  = "This will appear in the window/tab name, as well as in search results."
            keywords = "A comma separated list of words or phrases that describe the content"
            heading = "This will appear in the <h1> element"


Templates
=========

A single template tag is provided to output metadata in templates. It requires loading the ``seo`` template library, and can be called in a number of ways:

.. code-block:: html

    {% get_metadata %}

This gets the metadata for the current path (if `RequestContext` is used) and outputs all metadata flagged to appear in the ``<head>``.

.. code-block:: html

    {% get_metadata for obj %}

This time, the metadata is retrieved for the path belonging to the given object. The object can be a model instance (actually, anything with ``get_absolute_url``) or a path itself.

.. code-block:: html

    {% get_metadata as var %}
    {{ var }}

    {% get_metadata for obj as var %}
    {{ var }}

To exercise a little more flexibility, you can store the retrieved metadata as a context variable. Outputting the variable by itself will output all metadata flagged to appear in the ``<head>``.

If you have multiple metadata definitions, you can choose the relevant one by providing the name of the class. Here are your alternatives for doing so:

.. code-block:: html

    {% get_metadata MetadataClass %}
    {% get_metadata MetadataClass for obj %}
    {% get_metadata MetadataClass as var %}
    {% get_metadata MetadataClass for obj as var %}


Metadata template objects
-------------------------

As seen above, you can store the fetched metadata as a variable. This variable can then be used to access specific metadata fields, groups and values. For example:

.. code-block:: html

    {{ var }}                   Full output for all metadata flagged to appear in <head>
    {{ var.field_name }}        Full output for the given field
    {{ var.group_name }}        Full output for all fields in the given group
    {{ var.field_name.value }}  Output only the value for the given field


Admin
=====

To add the models of your defined metadata to an admin site, make a single call to ``register_seo_admin``. For example:

.. code-block:: python

    from djangoseo.admin import register_seo_admin
    from django.contrib import admin
    from myapp.seo import MyMetadata

    register_seo_admin(admin.site, MyMetadata)

An admin inline can also be created, to add metadata as an inline form on the admin page of a model instance. For example:

.. code-block:: python

    from djangoseo.admin import get_inline
    from django.contrib import admin
    from myapp.seo import MyMetadata

    class MyModelAdmin(admin.ModelAdmin):
        inlines = [get_inline(MyMetadata)]

To add an inline for every relevant model registered on an admin site, use the ``auto_register_inlines`` function.
This function will add inlines for every model listed in ``seo_models`` both before and after the function is called.

.. code-block:: python

    from djangoseo.admin import auto_register_inlines
    from django.contrib import admin
    from myapp.seo import MyMetadata

    auto_register_inlines(admin.site, MyMetadata)

Note that this is purely for convenience, where the admin site is not customised in any way.
It is only for the truly, unashamed lazy. Please, please use ``get_inlines``.
The reason is (and I'm not proud of it) that ``auto_register_inlines`` does some
violent monkey-patching of both the ``Admin`` classes in the site's registry AND
the ``register`` function of the site itself. 
It is not a pythonic feature, and I am considering removing it unless there is strong support.

