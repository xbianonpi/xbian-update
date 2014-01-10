#!/bin/sh

[ -e /etc/default/locale ] && . /etc/default/locale
export LC_CTYPE=C
[ -n "$LANG" ] && export LC_ALL=$LANG
