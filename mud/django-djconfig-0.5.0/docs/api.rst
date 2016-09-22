.. _api:

API
===

djconfig module
---------------

.. module:: djconfig
.. autodata:: config
   :annotation: djconfig.conf.Config object (singleton)
.. autodata:: register
   :annotation: djconfig.conf.Config._register attribute
.. autodata:: reload_maybe
   :annotation: djconfig.conf.Config._reload_maybe attribute

Config Object
-------------

.. module:: djconfig.conf
.. autoclass:: Config
   :members: _register, _reload_maybe
   :special-members: __getattr__

ConfigForm Object
-----------------

.. module:: djconfig.forms
.. autoclass:: ConfigForm
   :members:

Template Context Processors
---------------------------

.. automodule:: djconfig.context_processors
   :members:

Middlewares
-----------

.. automodule:: djconfig.middleware
   :members:

Test Helpers
------------

.. automodule:: djconfig.utils
   :members: override_djconfig
