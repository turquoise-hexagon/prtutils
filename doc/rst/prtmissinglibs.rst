--------------
prtmissinglibs
--------------

find libraries that were linked to a package but are missing from the system
============================================================================

:date: March 2020
:version: prtutils
:manual section: 1
:manual group: General Commands Manual

synopsis
--------
prtmissinglibs `package`

description
-----------
prtmissinglibs goes through the libraries that were linked to a package to find the ones that are missing from the system

it outputs a list of libraries, one per line

example
-------
.. line-block::
    $ prtmissinglibs firefox-bin
    libplds4.so
    libssl3.so
    libnspr4.so
    libplc4.so
    libnssutil3.so
    liblgpllibs.so
    libmozsqlite3.so
    libxul.so
    libmozsandbox.so
    libmozavutil.so
    libsmime3.so
    libmozwayland.so
    libmozgtk.so
    libnss3.so
