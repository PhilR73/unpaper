#!/bin/bash
libtoolize --force
aclocal
autoheader
automake --force-missing --add-missing
autoconf
./configure CFLAGS="-O2 -march=native -pipe -flto"