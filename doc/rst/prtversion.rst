----------
prtversion
----------

compare local versions with versions from repology
==================================================

:date: March 2020
:version: prtutils
:manual section: 1
:manual group: General Commands Manual

synopsis
--------
prtversion `ports` ...

description
-----------
prtversion compares the versions from a local ports repository with the ones from repology and builds a list from it

it outputs a list of packages, one per line, with the following format:
::

    package : local -> remote

example
-------
::

    $ prtversion turquoise
    boost : 1.72.0 -> 1_72_0
    colorpicker : 20190725 -> 1.1.3
    glslang : 20200115 -> 8.13.3559
    id3 : 0.80 -> 1.1.0
    lemonbar : 20190423 -> 1.3
    ...
