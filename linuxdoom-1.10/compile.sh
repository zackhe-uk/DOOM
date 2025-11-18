#!/bin/bash

if [ "$1" = "--help"  ] || [ "$1" = "-help" ] || [ "$1" = "-h" ]
then
    printf "%s\n" "Usage: $0 [-help/-lib/-dnet/clean]"
    printf "%s\n%s\n%s\n%s\n%s\n" \
	"  -help: shows this message" \
	"  -debug: compiles a debug build" \
	"  -8/-4: forces what arch to compile for" \
	"  -em: build for emscripten " \
        "   clean: clean up the build dir" \
    exit 0
fi

if [ "$1" = "clean" ]
then
    rm -rf bin
    exit 0
fi

# at this point we can safely make the binary out dir assuming a compilation is taking place
mkdir -p bin

echo "${CC:=gcc}" > /dev/null

# brand new things
for var in "$@"
do
    if [[ "$var" == "-debug" ]]
    then
        EXTRAOPT="-g $EXTRAOPT"
    fi

    if [[ "$var" == "-8" ]]
    then
        EXTRAOPT="$EXTRAOPT -m64"

    elif [[ "$var" == "-4" ]]
    then
        EXTRAOPT="$EXTRAOPT -m32"
    fi

    if [[ "$var" == "-em" ]]
    then
        if [ ! -f ./doom1.wad ]; then ../getdoom.sh; fi
        if [[ "$EXTRAOPT" == *"-m64"* ]]
        then
            EXTRAOPT="$EXTRAOPT -sMEMORY64 -Wl,-mwasm64"
        fi
        EXTRAOPT="$EXTRAOPT --embed-file ./doom1.wad@doom1.wad"
        CC=emcc
    fi

    if [[ "$var" == "-mcem" ]]
    then
        EXTRAOPT="$EXTRAOPT -L../../SDL/build -I../../SDL/include"
    fi
done

$CC $EXTRAOPT -DNORMALUNIX -DLINUX -DUSE_SDL -lSDL3 -lm -o doom