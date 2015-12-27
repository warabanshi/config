# install pylab

## append packages on openSUSE Tumbleweed

freetype, freetype-devel, libpng-devel, libjpeg8-devel, gcc-c++, liblapacke3, blas-devel, python-devel, python-scipy, 
python-numpy-devel, python-pandas, python-sympy, python-nose, cblas-devel, libatlas3-devel

## change backend if show() doesn't working

### check whether show() wokring or not

    >>> import pylab
    >>> pylab.figure(1)
    >>> pylab.plot([1,2,3,4], [1,7,3,5])
    >>> pylab.show()

### check backend

    >>> import matplotlib
    >>> matplotlib.get_backend()
    u'agg'

### change backend

    >>> import matplotlib
    >>> matplotlib.rcParams['backend'] = "TkAgg"

## change default backend

edit `/usr/lib64/python2.7/site-packages/matplotlib/mpl-data/matplotlibrc`

    #### CONFIGURATION BEGINS HERE
    
    # The default backend; one of GTK GTKAgg GTKCairo GTK3Agg GTK3Cairo
    # CocoaAgg MacOSX Qt4Agg Qt5Agg TkAgg WX WXAgg Agg Cairo GDK PS PDF SVG
    # Template.
    # You can also deploy your own backend outside of matplotlib by
    # referring to the module name (which must be in the PYTHONPATH) as
    # 'module://my_backend'.
    backend      : Agg    <- edit this line


# change login background image in openSUSE Tumbleweed

## edit exists theme

Themes are there in `/usr/share/`. In this time, edit `sddm` theme.  
edit `/usr/share/sddm/themes/breeze/theme.conf.user` and `/usr/share/sddm/themes/breeze/theme.conf` like below

    [General]
    background=/home/warabanshi/Pictures/1920x1080.jpg
