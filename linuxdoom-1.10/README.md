## Compiling
Run
```
gcc *.c -Wall -Wextra -Wpedantic -Wno-unused -Wno-format-truncation -Wno-implicit-fallthrough -DUSE_SDL -lSDL3 -m32 -DNORMALUNIX -DLINUX -lm -o doom
```

or targetting Emscripten
```
emcc *.c -m32 -g -DNORMALUNIX -DLINUX -DUSE_SDL --embed-file ../../doom-wad-shareware-1.9.fixed/doom1.wad@doom1.wad -L../../SDL32/build -I../../SDL/include -lSDL3 -lm -o doom32.html
```
64 bit
```
emcc *.c -m64 -sMEMORY64 -Wl,-mwasm64 -g -DNORMALUNIX -DLINUX -DUSE_SDL --embed-file ../../doom-wad-shareware-1.9.fixed/doom1.wad@doom1.wad -L../../SDL/build -I../../SDL/include -lSDL3 -lm -o doom.html
```