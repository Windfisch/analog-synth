VCO development board mk I
==========================

This board is designed to test several options for the VCO design. It
features:

  - Triangle, pulse and sawtooth wave generation
  - shape adjust (R25). Tune this so that you get a perfect triangle.
  - volt-per-octave input
  - linear and exponential frequency modulation
  - selectable capacitor-coupling for the triangle wave using JP5
  - Boundary adjust: R27-R31. (Increases triangle amplitude while
    lowering its frequency)
  - Rossum compensation ([details](https://www.schmitzbits.de/expo_tutorial/))
    for compensating the pitch drop at higher pitches. Can be enabled by
    closing JP2 and disabled by closing JP1 instead. Optionally, R13-15 and
    D1 need not be equipped when disabled
  - Low frequency trim by connecting Q4's source to some millivolts around
    GND instead of GND directly using JP4. Optionally, R1-R3 can be spared
    if not used.
  - DCO mode by applying a square wave to ctl\_override in J2
  - soft sync mode by applying a narrow open-drain pulse to J6
    (e.g. 99% high impedance, 1% connected-to-GND)
  - Digital ringmodulation on the triangle/sawtooth and the square wave,
    configured through JP6 as follows:
    
    - close 12 and 34 for ring-modulated sawtooth
    - close 12 only for ring-modulated triangle
    - close 23 for no ring modulation. U3, Q6 and R41-50 need not be
      equipped then.

There are two different board layouts:

  - [one smaller double-sided layout](vco_mk1_windfisch)
  - [one larger layout with components only on the top side](vco_mk1_spitfire), contributed by [SpitfireX](https://github.com/spitfirex).

They have been fabricated by [JLCPCB](jlcpcb.com) using the gerber outputs in `gerber/` or `fab/`.
