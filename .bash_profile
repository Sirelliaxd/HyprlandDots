#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

eval $(dbus-launch --sh-syntax)

if [ -z "$GNOME_KEYRING_CONTROL" ]; then
  eval $(gnome-keyring-daemon --start --components=secrets,pkcs11)
  export GNOME_KEYRING_CONTROL
fi

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec start-hyprland &
fi
export PATH=~/bin:$PATH
