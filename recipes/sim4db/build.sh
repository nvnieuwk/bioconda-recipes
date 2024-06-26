#!/usr/bin/bash
set -ex
make install

mkdir -p $PREFIX
if [ `uname` == Darwin ]; then
    cp Darwin-amd64/bin/* $PREFIX/bin/
    cp Darwin-amd64/include/* $PREFIX/include/
    cp Darwin-amd64/lib/* $PREFIX/lib/
else
    cp Linux-amd64/bin/* $PREFIX/bin/
    cp Linux-amd64/include/* $PREFIX/include/
    cp Linux-amd64/lib/* $PREFIX/lib/
fi

