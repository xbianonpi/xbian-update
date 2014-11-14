#!/bin/sh

return 0

[ $(lsb_release -c -s) != jessie ] || return 0

[ ! -x /usr/bin/pulseaudio ] && return 0
[ $(id -u) -eq 0 ] && return 0

/usr/bin/pulseaudio --start --exit-idle-time=-1

