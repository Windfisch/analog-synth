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
    ![render of the board](../img/vco_red.jpg)
  - [one larger layout with components only on the top side](vco_mk1_spitfire), contributed by [SpitfireX](https://github.com/spitfirex).
    ![render of the board](../img/vco_blue.jpg)


Revisions
---------

**rev01** can be identified by the marking _"VCO development board mk I"_
(without revision id). Both layouts have been fabricated by [JLCPCB](https://jlcpcb.com)
using the gerber outputs in `gerber-rev01/` or `fab-rev01/`.
Please see the Errata below.

**rev02** can be identified by the text _"VCO development board mk I (rev02)"_.
It has never been fabricated as it contains only silk screen bug fixes.
The differences to rev01 are:

  - U2 is rotated by 180 degrees, swapping U2A/U2C and U2B/U2D, respectively.
  - The pictograms around J3 have been rearranged in the correct order.

Errata (rev01)
--------------

U2 has Vcc and Vee swapped in the schematic. This can be resolved by inserting
U2 into the socket "the wrong way" (i.e. the notch is not on the side where the
PCB wants to have the notch).

SpitfireX's board has the pictograms around J3 reversed. This affects both
the signal pictograms as well as the marking for the capacitor-coupled outputs.

These are fixed in rev02.

Differences from the schematic (rev01)
--------------------------------------

  - U2 is reversed (see Errata)
  - Q1 was equipped, J5, Q2 and Q3 weren't
  - R2 was replaced by a 20k poti
  - R15 was not equipped (no rossum compensation)
  - R4-6 and R18-20 were not equipped yet
  - R10 is missing (no thermal compensation)
  - R9 was replaced by a 100 Ohm resistor
  - R8 was replaced by 10k

Testing the board
-----------------

1. Do not equip R15. Close JP1, but not JP2 to disable the rossum compensation.
2. Do not equip U3, and put a jumper on JP6's pins 2+3 to disable ring modulation.
3. Put a jumper on JP4 so that GND is connected.
4. Connect Vcc, GND and Vee to +6V, 0V and -6V (approx.). This configuration can be
   achieved e.g. by a 12 V voltage source, a 1:1 resistor divider and a LM324/LM358
   in buffer configuration for GND.
5. Connect the capacitor-coupled triangle output on J3 to your sound card. Connect GND
   via a capacitor to your sound card.
6. You should hear a triangle wave that can be tuned with R52, R21 (and R31).

Further usage scenarios
-----------------------

### Using the pwm input

The PWM comparator's input is floating. Either connect a voltage source / poti to it that
can range from Vee to Vcc, or tie it to GND using a jumper on J2.

### Tuning the center frequency

Close the JP3 jumper. This will disable the control voltage input and force it to the
"center position". R52 (tune) will be useless. R21 can be used to tune the frequency
at the center position. This is the pitch where the oscillator will exhibit no thermal
drift; the "V/oct" drift (which is compensated by R9-R12, but not perfectly) will
develop around the center pitch. The farther away from this center pitch, the worse the
drift will be.

### Adjusting the schmitt trigger's operation

The triangle's amplitude and pitch can be adjusted by R31.

The triangle's center voltage can be adjusted with R28. This is only relevant when JP5 is
closed, directly attaching the triangle signal to the sawtooth generation circuitry,
bypassing the coupling capacitor. In this case, tuning R28 is required to achieve a clean
sawtooth signal where all teeth are at the same voltage levels.

### Tuning the frequency response

By equipping the Rossum compensation circuitry, closing JP2 and opening JP1, Rossum
compensation can be tuned using R15. This changes the frequency response at high pitches.

By not jumpering GND, but the variable voltage source on JP4, R2 can be used to affect
the frequency response at low pitches.

### Square-like waveform

Connect `square_ctl` to the ring mod input J4. Ideally do not connect it directly,
but buffer the signal using an emitter follower or similar. Loading `square_ctl` will
severly affect the pitch. Then listen to the pulse-mod signal while changing the pwm
voltage on J2.

Soldering workflow
------------------

I soldered the boards in my [local FabLab](https://fablab.fau.de), using a thermal
controlled soldering iron with a flat (screwdriver-like) tip (maybe 1-2mm wide).

I had a printed [BOM](vco_mk1_windfisch/bom.ods) next to me, where I ticked
every component.

Notes for various components:

  - *Resistors and capacitors*: for each component value, do:
    - for each occurence do:
      1. put some tin on one of the pads
      2. heat the tinned pad while sliding the component onto the pad
      3. solder the other pad
    - difficulty: easy
  - *BCM847*: using a stereo microscope, do:
    - 1. use *lots* of flux
    - 2. put some tin on a pad, slide the component onto it
    - 3. more flux
    - 4. solder all pins of the opposite side. Ignore any solder bridges
    - 5. same for the other side.
    - 6. remove the solder bridges by applying flux, then sliding the cleaned
         soldering iron away from the pins. This will take away some tin, until
         finally the solder bridge vanishes due to the surface tension.
    - difficulty: advanced with good equipment, impossible without
  - *through hole components*: straightforward, easy. Order them from flat to large.

Lessons learned
---------------

A capacitor-coupled GND terminal would be useful.

When connecting `square_ctl` to J6 (regardless of whether U3 is installed or not),
this affects the frequency by ca. a semitone. A transistor buffer might help.

Finding the component locations is hard. Prepare one copy of the board layout
per component value, with the respective components highlighted. (Maybe color
coding helps to reduce the amount of copies needed).

Greatly reduce the amount of different component values. Finding the right
component strip and peeling of the covering foil off takes a lot of time.

It might be better to prepare all resistors/capacitors at once, instead of
grouping them by value. Color coding might help.

The double-sided variant wasn't slower to solder than the single-sided.

The BC547 transistor pair don't touch, the footprint should move a bit towards
each other.
