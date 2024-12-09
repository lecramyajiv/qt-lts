#!/bin/bash

export q1=${q1:-/opt/qt6}
export q2=${q2:-$q1/bin}

if [ -d $q1/lib@LIBDIRSUFFIX@/ ]; then
   q3=$q1/lib@LIBDIRSUFFIX@
   q4=$q3/pkgconfig
fi

export PATH=$PATH:$q1:$q2:$q3:$q4
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$q4
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$q3
