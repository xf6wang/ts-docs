.. Licensed to the Apache Software Foundation (ASF) under one
   or more contributor license agreements.  See the NOTICE file
   distributed with this work for additional information
   regarding copyright ownership.  The ASF licenses this file
   to you under the Apache License, Version 2.0 (the
   "License"); you may not use this file except in compliance
   with the License.  You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing,
   software distributed under the License is distributed on an
   "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
   KIND, either express or implied.  See the License for the
   specific language governing permissions and limitations
   under the License.

.. _cache_types:

Cache Types
*********************

.. cpp:type:: HttpCacheKey

   The type used to hold a full cache key.
   
.. cpp:class:: HTTPCacheAlt

   Description of an alternate in the cache. This contains the metadata for the alternate, such as the fragment table and the request and response headers.
   
.. cpp:class:: CacheHTTPInfo

   A wrapper class for a pointer to a :cpp:class:`HTTPCacheAlt`.

.. cpp:class:: OpenDirEntry

   Contains information about an active cache object.
   
.. cpp:class:: CacheVC

   The virtual connection used to interact with the cache.

   .. cpp:member:: HttpCacheKey update_key
   
        The earliest key for the alternate that is being replaced by revalidation.
        
   .. cpp:member:: CacheHTTPInfo alternate
   
      The alternate in use by the CacheVC. This is actual a wrapper on a pointer to data that exists in the :cpp:class:`OpenDirEntry` alternate vector.
      
   .. cpp:function:: void set_http_info(CacheHTTPInfo* alt)
   
      Updates the local alternate to point at :arg:`alt` while updating a few fields in :arg:`alt`. The alternate vector is not updated.
        
   .. cpp:function:: die()
   
      Start the shutdown process for the CacheVC. The CacheVC does not immediately terminate but starts any clean up needed to do so. In particular a write CacheVC will start finish any data writes using only current content and then write out any first doc / metadata updates required.
        
Traffic Server Types
********************

.. cpp:class:: HttpSM

   The HTTP transaction state machine, which also represents the transaction.

.. cpp:class:: HttpTunnel

   Contains the data sources and sinks for the :cpp:class:`HttpSM`.
   