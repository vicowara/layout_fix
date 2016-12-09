#!/bin/bash

XMLFILE=/usr/share/ibus/component/mozc.xml 

if [ -f $XMLFILE ]; then
    sudo patch $XMLFILE < mozc.patch
    ibus-daemon -drx
fi
