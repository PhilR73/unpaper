#!/bin/bash
libtoolize --force
aclocal
autoheader
automake --force-missing --add-missing
autoconf
./configure CPPFLAGS='-O2' CFLAGS='-O2' PKG_CONFIG_PATH='/usr/local/lib/pkgconfig'