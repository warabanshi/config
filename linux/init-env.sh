#/bin/sh

#------------------------------------------------------
# this script assume to be run with root previleges
#------------------------------------------------------

# install required packages
zypper in tmux git gsynaptics virtualbox ghc vagrant

# set a group which is needed to launch virtualbox guest
usermod -a -G vboxusers warabanshi

# set secondary language
yast language set languages=ja_JP
