----------
prtnewdeps
----------

find dependencies that needs to be installed for a package
==========================================================

:date: March 2020
:version: 0.0
:manual section: 1
:manual group: General Commands Manual

synopsis
--------
prtnewdeps `<package>`

description
-----------
prtnewdeps goes through the dependencies of a package to find the ones that would need to be installed with it

it outputs a list of packages, one per line

example
-------
::

    $ prtnewdeps transmission
    libevent
    transmission
