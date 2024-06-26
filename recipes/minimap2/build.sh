#!/bin/bash

mkdir -p $PREFIX/bin $PREFIX/lib $PREFIX/include

export CPATH=${PREFIX}/include

make INCLUDES="-I$PREFIX/include" CFLAGS="-g -Wall -O2 -Wc++-compat -L$PREFIX/lib" minimap2 sdust
cp minimap2 misc/paftools.js $PREFIX/bin
cp sdust $PREFIX/bin
cp libminimap2.a $PREFIX/lib
cp *.h $PREFIX/include
