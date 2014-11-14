#!/bin/sh

if grep -q ^'# en_US.UTF-8 UTF-8' /etc/locale.gen && [ $(id -u) -eq 0 ]; then
    echo "Please wait, regenerating locales..."
    sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen || :
    locale-gen
fi

if [ -z "$LANG" ]; then
    [ -e /etc/default/locale ] && . /etc/default/locale
    export LANG=$LANG
fi

export LC_CTYPE=C
if [ -n "$LANG" ]; then
    export LC_ALL=$LANG
fi


