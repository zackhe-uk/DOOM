# Ready DOOM's sndserver
### _...because without sound, you don't have a game!_

## Using

The sound library itself was made for Linuxdoom, but you
can test it yourself for debugging!

Pop a WAD into the directory (small hint - use `getdoom.sh`)
and after compiling, you will be able to run the application
in the command line as follows:

**OPTIONS**:

`q` stands for quit.<br>
Requires 1 additional character to run. (i.e. \\n)

Syntax: `q<term>`

Quits the program.

Where term is the terminator character (can be \\n)

---

`p` stands for play.<br>
Requires 9 additional characters to run. (last i.e. \\n)

Every component (except term) is 2 hexadecimal characters. Equivalent to 1 byte.

Syntax: `p<snd#><step><vol><sep><term>`

Plays a sound effect through your speakers.

Where the sound ID is equal to the index of `S_sfx` in reference to `sounds.c`<br>
Starting with 1 as index 0 is null for an unknown reason.

Where step is unknown (fill in this).

Where vol is the volume (must be under `0x7f`).

Where sep is the seperation (distance from player)

Where term is the terminator character (can be \\n)

---

`s` stands for save.<br>
Requires 3 additional characters to run. (last i.e. \\n)

Every component (except term) is 2 hexadecimal characters. Equivalent to 1 byte.

Syntax: `p<snd#><term>`

Saves raw audio data in the current directory, named as hexadecimal index of the sound effect without an extension.

Where the sound ID is equal to the index of `S_sfx` in reference to `sounds.c`<br>
Starting with 1 as index 0 is null for an unknown reason.

Where term is the terminator character (can be \\n)
s

## Compiling

> [!WARNING]
> If you're using Linux, make sure to link the
> math library using `-lm`!
>
> Just put it after `-lpulse` and you should be good!

---

Run:

```
clang *.c -I/opt/homebrew/include -L/opt/homebrew/lib -lpulse-simple -lpulse -o sndserv
```

On macOS after running `brew install pulseaudio` and starting the service.


---

Use this if you already have properly configured library and include paths.

```
clang *.c -lpulse-simple -lpulse -o sndserv
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
