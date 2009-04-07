# fedora-livecd-kde-de_DE.ks
#
# Maintainer(s):
# - Sebastian Vahl <ml@deadbabylon.de>

%include fedora-livecd-kde.ks

lang de_DE.UTF-8
keyboard de-latin1-nodeadkeys
timezone Europe/Berlin

%packages
@german-support

# don't use kpackagekit until it's translated
-kpackagekit
gnome-packagekit

# don't install unnecessary input methods
-scim*
-m17n*
-iok

# don't install unnecessary fonts
-abyssinica-fonts
-cjkuni*fonts*
-jomolhari-fonts
-kacst-fonts
-khmeros-fonts-base
-lklug-fonts
-lohit-fonts*
-un-core-fonts-dotum
-padauk-fonts
-paktype-fonts
-smc-fonts-meera
-stix-fonts
-thaifonts-scalable
-VLGothic-fonts

# remove kdegames to free needed space
-kdegames*

%end

%post
# set up localized keyboard since it is not used in /etc/X11/xorg.conf anymore and
# KDE don't use /etc/sysconfig/keyboard.
# Replace "de-latin1-nodeadkeys" with the keyboard layout you have used above
#mkdir -p /home/liveuser/.kde/env
#echo "system-config-keyboard --noui de-latin1-nodeadkeys" > /home/liveuser/.kde/env/keyboard.sh
#chmod +x /home/liveuser/.kde/env/keyboard.sh
#chown -R liveuser:liveuser /home/liveuser/

%end