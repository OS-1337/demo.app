#! /usr/bin/env bash

echo 'Building demo.app'

LDFLAGS=--static CROSS_COMPILE=i486-linux-musl-cross/bin/i486-linux-musl- make ARCH=x86
#	This builds main.c against musl-cross for i486.
#	You may want to modify it to fit your architecture [i.e. amd64, arm64]...

echo 'Done.'

exit