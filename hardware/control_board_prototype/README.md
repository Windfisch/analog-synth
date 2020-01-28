Control Board mk I
==================

The main board of the synth: It accepts a STM32F103 Blue Pill board and offers
two 10-channel DACs. Additionally, it contains a voltage converter, a virtual
ground circuit and pin headers for power distribution.

![render of the board](../img/mainboard.jpg)

Setup
-----

Adjust to R2 to 540 Ohms to get a supply voltage of 10V.

U3 is optional. If U3 is equipped, do not close JP1. (C1, C2, R4 and R5 can
be left out in this case.) Otherwise, do close JP1.

JP2 controls whether the digital ground is connected to the analog ground, or
whether DGND is a separate buffered voltage source.

Similarly, JP3 allows to switch between the analog supply voltage and the
blue pill board's 5V supply voltage.

Recommended configuration
-------------------------

**Use Vdd = Vcc (JP3).** Taking Vdd from the blue pill board creates weird
"digital singing" on the audio signal.

**Use a separate dgnd (JP2).** Joining agnd and dgnd together causes strong
humming (approx. 100Hz; I measured 116Hz?!) and buzzing (from the SPI
bus; completely goes away as long the BU2505FV DAC isn't used (i.e.,
during startup/init), reduced when the MCP4822 isn't connected to the
SPI bus, very present when it is). Using a separate GND completely
cancels the humming, and reduces the buzzing to ~-70-80dB when the
VCA is closed, but still audible if the VCA is open).

A **TLE2426** ground splitter (U3) seems to be **unneccessary**.

Revisions
---------

- rev01: Has no marking and no wind fish on the back side.
- rev02: Small overlapping silk screen fixes. Has a wind fish and "rev02" on the back side. Was never fabricated.

Tested configuration
--------------------

rev01 has been used successfully with the following configuration:

- U2 was changed to TL072.
- JP1 closed, U3 not equipped.
- JP2 (dgnd select) in *sep* configuration.
- JP3 (Vdd select) in *blue pill* configuration.
- right half of the DAC section (i.e. J8, J10 and associated resistors
  and capacitors) not populated.

Fabrication
-----------

The gerber outputs used for fabrication of rev01 with [JLCPCB](https://jlcpcb.com) are
located under `fab/`.

The fabrication layers indicating which component values to put where
are [here](../voice_and_control_board_fab.pdf).
