Helper Tools and Software
=========================

These tools are intended to support the development process on the PC
side.

analyze\_stability.py
--------------------

This tool will analyze the frequency range, frequency gain and pulse width
behaviour of the VCO. It also supports (currently hardcoded) compensation of
the DAC "wiggle" described [here](../experiments/20190705_error_attribution).

Upon execution it will draw a plot showing the frequency deviation and the
pulse width. Also, it will output the following:

```
[2.25283296e+00 4.93029015e+03]
532.66 code points = 0.2601 Volt per octave
starting at   17.25 Hz =  -5607c distance from a4@440Hz
ending   at 3561.44 Hz =  +3620c distance from a4@440Hz
```

The numbers in the brackets define the *cent per one codepoint* and *cent offset*,
the rest should be self-explanatory.

**Usage:** `analyze_stability.py usart-dump.txt`


