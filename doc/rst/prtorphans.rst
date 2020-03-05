----------
prtorphans
----------

find packages that can be safely removed with a package
=======================================================

:date: March 2020
:version: prtutils
:manual section: 1
:manual group: General Commands Manual

synopsis
--------
prtorphans `package`

description
-----------
prtorphans finds the packages that could be safely removed with a package (orphans)

it outputs a list of packages, one per line

example
-------
|    $ prtorphans mpv
|    yasm
|    ffmpeg
|    docutils
|    spirv-headers
|    spirv-tools
|    glslang
|    shaderc
|    libass
|    mpv
