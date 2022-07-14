-----------
prtdownload
-----------

download the sources for a crux package
=======================================

:date: July 2021
:version: 0.0
:manual section: 1
:manual group: General Commands Manual

synopsis
--------
prtdownload `<package>`

description
-----------
prtdownload downloads the sources for a crux package and places them in the current directory

example
-------
::

    $ prtdowmload bash &> /dev/null
    $ ls -1
    bash-5.1.tar.gz
    patches.tar.gz
    profile
