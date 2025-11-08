## Compiling
do

```
gcc *.c -I/opt/homebrew/include -L/opt/homebrew/lib -lpulse-simple -lpulse -o sndserv
```

on macOS after running `brew install pulseaudio` and starting the service


and


```
gcc *.c -lpulse-simple -lpulse -o sndserv
```


if you already have properly configured paths







Congrats. You did it. Great job.

-MP
