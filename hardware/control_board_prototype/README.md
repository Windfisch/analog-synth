Control Board mk I
==================

The main board of the synth: It accepts a STM32F103 Blue Pill board and offers
two 10-channel DACs. Additionally, it contains a voltage converter, a virtual
ground circuit and pin headers for power distribution.

Setup
-----

Adjust to R2 to 540 Ohms to get a supply voltage of 10V.

U3 is optional. If U3 is equipped, do not close JP1. (C1, C2, R4 and R5 can
be left out in this case.) Otherwise, do close JP1.

JP2 controls whether the digital ground is connected to the analog ground, or
whether DGND is a separate buffered voltage source.

Similarly, JP3 allows to switch between the analog supply voltage and the
blue pill board's 5V supply voltage.

Fabrication
-----------

The gerber outputs used for fabrication with [JLCPCB](https://jlcpcb.com) are
located under `fab/`.
