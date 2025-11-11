## Compiling
Run:

```
gcc *.c -I/opt/homebrew/include -L/opt/homebrew/lib -lpulse-simple -lpulse -o sndserv
```

On macOS after running `brew install pulseaudio` and starting the service.


---

Use this if you already have properly configured library and include paths.

```
gcc *.c -lpulse-simple -lpulse -o sndserv
```

---

Or on my system for a debug build:

```
clang *.c --save-temps -g -O0 -I/opt/homebrew/include -L/opt/homebrew/lib -lpulse-simple -lpulse -Wall -Wextra -Wpedantic -Wno-gnu -o sndserv; rm -rf sndserv.dSYM/; rm *.bc *.s *.i; dsymutil sndserv
```

---




Congrats. You did it. Great job.

Have fun!
-MP
