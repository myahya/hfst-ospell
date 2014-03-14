#!/bin/bash

if test -x ./hfst-ospell ; then
    if ! cat $srcdir/test.strings | ./hfst-ospell ./ ; then
        exit 1
    fi
else
    echo ./hfst-ospell not built
    exit 77
fi

