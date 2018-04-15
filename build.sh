#!/bin/bash
mkdir build && \
cd build && \
cmake -DCMAKE_INSTALL_PREFIX=/usr -DLIB_SUFFIX= .. && \
make -j $SHED_NUM_JOBS && \
make DESTDIR="$SHED_FAKE_ROOT" install
