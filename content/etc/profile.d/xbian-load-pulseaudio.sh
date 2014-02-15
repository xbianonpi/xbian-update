#!/bin/sh

[ ! -x /usr/bin/pulseaudio ] && return 0
[ $(id -u) -eq 0 ] && return 0

/usr/bin/pulseaudio --start --exit-idle-time=-1

