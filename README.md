# ROOM
### _Ready DOOM_

> [!CAUTION]
> 64-bit and macOS support in their current states are HIGHLY EXPERIMENTAL!
>
> macOS support is still unfinished due to it's
> pickiness around memory, which DOOM/Linuxdoom
> violates for the sake of optimisation.
>
> The current builds are only working & tested under Emscripten.
> 
> Both 64-bit and 32-bit Emscripten builds behave
> very simillar if not completely identical.

ROOM is a Linuxdoom fork that aims to fix bugs,
while mainly keeping the structure of the code
the same, helping experienced modders be familliar.




**TODOs**:

- sndserver on emscripten

**Changes**:

- 64-bit support (**UNFINISHED**)
- SDL3 support (ONLY bleeding edge builds, unfortunately some functions I use are not yet in stable)
- supressed/fixed most warnings
- PulseAudio sndserver with optional OSS (`-DUSE_OSS` in `CFLAGS`)
- misc sndserver improvements
- add working macOS support for soundserver
