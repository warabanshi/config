# making python environment

## pyenv

- https://github.com/yyuu/pyenv
- http://qiita.com/akito1986/items/be5dcd1a502aaf22010b

## virtualenv (python2)

- http://dev.classmethod.jp/server-side/language/python-virtualenv-tutorial/

## install virtualenv for python3

python >= 3.4 is equiped pip in default

    # pip3 install virtualenv

### start virtualenv

    $ pip install virtualenv
    $ cd /path/to/working/dir
    $ virtualenv [-p /path/to/pythone] (env name)                       ### python2 ###
    $ virtualenv [-p /path/to/pythone] --no-site-packages (env name)    ### python3 ###
    $ . (env name)/bin/activate

### end virtualenv
    
    $ deactivate

# install pylab

## append packages on openSUSE Tumbleweed

freetype, freetype-devel, libpng-devel, libjpeg8-devel, gcc-c++, liblapacke3, blas-devel, python-devel, python-scipy, 
python-numpy-devel, python-pandas, python-sympy, python-nose, cblas-devel, libatlas3-devel, python-tk

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
    
### check actual pylab library place

    >>> import pylab
    >>> pylab.__file__

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

## check backends which you are able to use

    matplotlib.rcsetup.interactive_bk
    matplotlib.rcsetup.non_interactive_bk
    matplotlib.rcsetup.all_backends

# change login background image in openSUSE Tumbleweed

## edit exists theme

Themes are there in `/usr/share/`. In this time, edit `sddm` theme.  
edit `/usr/share/sddm/themes/breeze/theme.conf.user` and replace properly image file under `/usr/share/wallpapers/openSUSEdefault/contents/images/`

# fix chrome unavailable to use Japanese input method

Now, I don't know why in detail but my chrome browser couldn't accept to input in japanese. But it works in other applications.
Tentatively, I saw this post (https://bbs.archlinux.org/viewtopic.php?id=173675) and try appneding following lines in `/etc/X11/xinit/xinitrc` and it works!

```
--- xinitrc.org 2016-03-03 02:51:13.197128973 +0900
+++ xinitrc     2016-03-03 02:42:33.521001536 +0900
@@ -47,6 +47,12 @@
 # Add your own lines here...
 #
 
+#### append ####
+export GTK_IM_MODULE=xim #Fix for Chrome
+export QT_IM_MODULE=xim #Not sure if this works or not, but whatever
+export XMODIFIERS=@im=ibus
+ibus-daemon -drx
+
 # day planer deamon
 # pland &
 
```
