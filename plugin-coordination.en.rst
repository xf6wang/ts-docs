.. include:: common.defs

.. _plugin-coordination:

Plugin Coordination
*******************

It has been requested for a long time to be able to have coordination among plugins. The two most
commonly requested capabilities are

*  Force the callback for plugin A to run before / after the callback for plugin B on a specific hook.
*  Disable a plugin and / or callback for a specific hook for a specific transaction.

I had a version of this ready for production testing, based on the Yahoo! 5.3 fork of |TS|. Based on that work there are a number of other features that are implicit in making the primary capabilities possible.

Modular hook dispatch.
   Create a class to handle the hook dispatching to provide a level of consistency needed later.

Continuation tracking
  Associate every continuation with a "root" plugin. This would be very valuable in debugging plugin problems and would result in significantly less developer time spent with faster results for customer support.
TS API to probe hooks for callbacks.
   Allow plugins to check the callbacks on a hook.
TS API to manipulate callbacks on hooks
   Allow plugins to alter the callbacks on a hook, either in terms of priorities, dependency, or direct access by plugin.

History
=======

At one point (Feb 2016) I had a working prototype of plugin priorities based on the YahoO! 5.3.x
fork which assigned priorities to plugin callbacks along with an API to manipulate not just the
current plugins priorities but that of other plugins. That would be very useful although priorities
of themselves are only one approach to this problem. Based on that work I have a technology ladder
to climb to provide this capability.
