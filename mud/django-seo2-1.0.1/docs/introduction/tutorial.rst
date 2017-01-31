.. _introduction-tutorial:

==============================
django-seo2 Framework Tutorial
==============================

Adding SEO to your Django site is easy, you need to do two things:

- Define which metadata fields you need
- Add the output to your templates

Before we start
---------------

This tutorial assumes you already know how to use Django, and that you have a site with some apps already up and running.
It assumes you have installed the library somewhere where python can get it, and that you've added ``djangoseo`` to your ``INSTALLED_APPS`` setting.

Metadata definition
-------------------

You can define which fields appear in your metadata by creating a class that subclasses ``seo.Metadata``. For example, create a new file called ``seo.py`` in an app on your site:

.. code-block:: python

    from djangoseo import seo

    class MyMetadata(seo.Metadata):
        title       = seo.Tag(head=True, max_length=68)
        description = seo.MetaTag(max_length=155)
        keywords    = seo.KeywordTag()
        heading     = seo.Tag(name="h1")

Done! The above definition outlines four fields:

- A ``<title>`` field, appearing in the head and limited to 68 characters (most search engines will the first 68 characters before any truncating takes place).
- A ``<meta>`` tag for the description, with a maximum length of 155 (again, to appear in search engine results). ``<meta>`` tags are always set to appear in the head.
- A ``<meta>`` tag for keywords. (you could also use ``seo.MetaTag``).
- A ``<h1>`` tag for headings, which does not appear in the document head.

If you run migrate you will also notice that four new models are created:

- One to attach the metadata to paths
- One to attach the metadata to model instances
- One to attach the metadata to models
- One to attach the metadata to views

Setting up the Admin
--------------------

To view and edit these in Django's admin, add the following to your ``urls.py``:

.. code-block:: python

    from djangoseo.admin import register_seo_admin
    from django.contrib import admin
    from myapp.seo import MyMetadata

    register_seo_admin(admin.site, MyMetadata)

You should now see the four models in the admin, and will be able to add metadata for each of the fields you defined earlier.

Adding the output to your templates
-----------------------------------

Once again, there isn't much to do here. Simply pick a suitable template. Most often this will be ``base.html``, which is extended by most other templates.
After loading the ``seo`` template library, simply output all the head elements add the tag ``{% get_metadata %}``, like this:

.. code-block:: html

    {% load seo %}
    <html>
    <head>
      {% get_metadata %}
    </head>
    <body>
        <p>I like gypsy Jazz!</p>
    </body>
    </html>

.. note::

   Make sure you have ``"django.core.context_processors.request"`` listed in your site's ``TEMPLATE_CONTEXT_PROCESSORS`` setting. 
   This provides ``{% get_metadata %}`` with the current path, allowing it to automatically select the relevant metadata.

Seeing it in action
-------------------
Using the admin site, add some new metadata, attaching it to a (valid) path of your choice. 
Open up your browser and visit the path, to hopefully see something like this in the page source:

.. code-block:: html

    <html>
    <head>
      <title>My Title</html>
      <meta name="description" content="My description" />
      <meta name="keywords" content="My, list, of, keywords" />
    </head>
    <body>
        <p>I like gypsy Jazz!</p>
    </body>
    </html>

Fine tuning the display
-----------------------

Notice that all of the head elements have automatically been added where the ``{% get_metadata %}`` tag was used.
But you'll also notice that the heading is missing. 
Because the heading was not defined to appear in the head, it was not automatically added. 
To do that, you will have to explicitly add it to the template. Like this:

.. code-block:: html

    {% load seo %}
    <html>
    <head>
      {% get_metadata as my_meta %}
      {{ my_meta }}
    </head>
    <body>
        {{ my_meta.heading }}
        <p>I like gypsy Jazz!</p>
    </body>
    </html>

Now your page will show the heading you wanted. 
Notice that ``{% get_metadata %}`` no longer outputs the head metadata, but instead creates a new variable ``my_meta``. The line following it (``{{ my meta }}``) outputs the head elements for you, and can be used to access other fields, such as the heading.

But what if your ``<h1>`` needs to have a class? 
You can also retrive the value directly, like this:

.. code-block:: html

        <h1 class="special">{{ my_meta.heading.value }}</h1>


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

