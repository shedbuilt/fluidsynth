#!/bin/bash
mkdir build && \
cd build && \
cmake -DCMAKE_INSTALL_PREFIX=/usr -DLIB_SUFFIX= .. && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install
