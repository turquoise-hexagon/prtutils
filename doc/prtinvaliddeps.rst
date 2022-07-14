--------------
prtinvaliddeps
--------------

get list of invalid dependencies listed in Pkgfiles
===================================================

:date: September 2020
:version: 0.0
:manual section: 1
:manual group: General Commands Manual

synopsis
--------
prtinvaliddeps

description
-----------
prtinvaliddeps lists invalid dependencies (dependencies that don't match any available package) in Pkgfiles

example
-------
::

    $ prtinvaliddeps
    subversion-bashcompletion -> subversion
    spidermonkey -> autoconf-2.13
    clang-distcc-bindings -> distcc
    ...
