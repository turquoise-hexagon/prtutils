--------------
prtomitteddeps
--------------

find dependencies that were omitted from a package description
==============================================================

:date: March 2020
:version: 0.0
:manual section: 1
:manual group: General Commands Manual

synopsis
--------
prtomitteddeps `<package>`

description
-----------
prtomitteddeps goes through the libraries that were linked to a package to find the ones that are missing from the declared dependencies

it outputs a list of packages, one per line

example
-------
::

    $ prtomitteddeps qsynth
    icu
    libsdl2
