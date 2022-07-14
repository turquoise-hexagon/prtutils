-----------
prtorphaned
-----------

find packages that can be safely removed
========================================

:date: March 2020
:version: 0.0
:manual section: 1
:manual group: General Commands Manual

synopsis
--------
prtorphaned `<ports>` ...

description
-----------
prtorphaned lists the packages that could be safely removed from the system (orphans), ignoring the ports given as parameters to the program

it outputs a list of packages, one per line

example
-------
::

    $ prtorphaned xorg turquoise core
    adwaita-icon-theme
    alsa-utils
    apulse
    exif
    fakeroot
    ...
