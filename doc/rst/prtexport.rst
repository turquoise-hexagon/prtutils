---------
prtexport
---------

export an installed package to a crux package
=============================================

:date: March 2020
:version: 0.0
:manual section: 1
:manual group: General Commands Manual

synopsis
--------
prtexport `package`

description
-----------
prtexport exports an installed package to a crux package archive using the files installed on the system

example
-------
::

    $ prtexport bash
    bin/bash
    etc/profile
    usr/share/man/man1/bash.1.gz
