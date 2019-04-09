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

# install google-chrome
wget https://dl.google.com/linux/linux_signing_key.pub
rpm --import linux_signing_key.pub
rm -f linux_signing_key.pub

#-----------------------------------------------------
# manually install applicatinos
#-----------------------------------------------------

##  download google-chrome from official page then run below rpm command and install it
# rpm --install google-chrome-stable_current_x86_64.rpm

##  setup ibus. run below command manually by login user
# $ ibus-setup

##  install dropbox
# make ext4 storage 
# https://blog.techack.net/archive/2018/12/13/opensuse-ad-cal-dropbox
#
# after make the storage
# $ wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# $ ~/.dropbox-dist/dropboxd
