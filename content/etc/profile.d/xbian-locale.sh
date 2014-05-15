#!/bin/sh

if [ -z "$LANG" ]; then
    [ -e /etc/default/locale ] && . /etc/default/locale
    export LANG=$LANG
fi

export LC_CTYPE=C
[ -n "$LANG" ] && export LC_ALL=$LANG

