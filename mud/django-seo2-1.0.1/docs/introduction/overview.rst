.. _introduction-background:

======================
Welcome to django-seo2
======================

Design
------

Django-seo2 is a library that allows you to attach metadata to:

- Paths
- Model instances
- Models
- Views

It is a library because you, the developer, have full control over what sort of information is attached to the above, and how it is eventually displayed.
To use this library, you need to define the metadata you want and add the output to your templates. Everything else (retrieval, formatting, escaping, caching) is handled for you.

Metadata can be edited by site administrators in the Django Admin, either in a centralised place, or inline with the relavent models.
As requirements change, it may become necessary to add new metadata fields. Having the metadata definition confined to a single, short class means that it is easy to update (even for amateur programmers).

What's next?
------------

If you would like to get a feel for how the library works, you might like to read the :ref:`site administrator's guide <reference-administrators>`.

To get started, you can read the :ref:`Quick install guide <introduction-install>` or work through the :ref:`tutorial <introduction-tutorial>`.
Django experts may save time use the :ref:`60 second tutorial <introduction-blitz-tutorial>`.
