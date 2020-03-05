---------------
prtmissingfiles
---------------

find files that were installed by packages but are now missing from the system
==============================================================================

:date: March 2020
:version: prtutils
:manual section: 1
:manual group: General Commands Manual

synopsis
--------
prtmissingdeps `package`

description
-----------
prtmissingfiles goes through the files that were installed by a package to find the ones that are missing from the system

it outputs a list of files, one per line

example
-------
.. line-block::
    $ prtmissingfiles exim
    /var/log/exim/exim_mainlog
    /var/log/exim/exim_paniclog
    /var/log/exim/exim_rejectlog
