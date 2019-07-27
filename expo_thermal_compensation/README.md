# Designing a thermal compensation for the exponential converter

The exponential converter used in the VCO has a temperature dependency that
affects its volt-per-octave setting. To be precise, the expo converter
is described by the following formula:

```
I_out = const * exp(V_in / V_T)
```

where `V_T` denotes the _thermal voltage_ of the transistor, which is
calculated as

```
V_T = k * T / q
```

with `k` being the [Boltzmann Constant](https://en.wikipedia.org/wiki/Boltzmann_constant),
`T` denoting the temperature in [Kelvin](https://en.wikipedia.org/wiki/Kelvin) and
`q` being the [elementary charge](https://en.wikipedia.org/wiki/Elementary_charge).

This means that since room temperature is roughly at 300K = 27C, a change in temperature
by 3 degrees changes the argument of exp(...) by ±1%. So at 24C, our 1V/oct VCO may
actually require only 0.99V/oct, and at 30C, it may need 1.01V/oct.

Over a range of plus minus three octaves, the highest and lowest note would be
`1200 * 3 * 0.01` = 36 cents off!

## Compensating using a NTC

In order to compensate for this, we can employ a resistor network containing
an NTC resistor, that changes its resistance in dependence of the temperature.

Instead of feeding the actual control voltage into the expo converter, we run it
through a voltage divider which counteracts the transistor behaviour.

The network looks as follows, with R3 being the NTC. The control voltage is fed
into `(in)`, while `(out)` goes into the expo converter.

```
                 +----[R2]----+
(in) ----[R1]----+            +------+----- [R4] ---- GND
                 +----[R3]----+      |
                                   (out)
```

## Finding the right values

A commonly available NTC is the
[Vishay NTCLE100E3 series](https://www.vishay.com/docs/29049/ntcle100.pdf).

Their datasheet describes their resistance using the following formula:

```
R_T = R_ref * exp(A + B/T + C/T² + D/T³)
```

where A,B,C and D are listed in the table on page four. The values differ
for different `R_ref` values as described in the datasheet.

`find_values.py` performs a brute-force search over possible values for
R1 to R4 and outputs a list of possible combinations and their maximum
deviation.

Using this approach, up to 0.3 cent per octave deviation can be achieved
over a temperature range from 18 to 30 degrees celsius.

