.. include:: ../common.defs

.. _glossary:

Glossary
********

.. glossary::
   :sorted:

   alternate vector
      A vector of alternate descriptors, instances of :cpp:class:`HTTPCacheAlt`.

   alternates
      Different variants of a single HTTP object.

   alternate selection
      Selecting a specific alternate for an HTTP object.

   revalidation
   revalidated
      Revalidation is done by sending a conditional request to an origin server to check the status of a specific alternate. Once the response is received and process the alternate has been revalidated and is presumably fresh.
