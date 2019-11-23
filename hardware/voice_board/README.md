Voice Board mk I
================

This board offers various utility features for a two-VCO-voice. It is designed
to be used together with two [../vco_mk1/](VCO mk I boards) and offers the
following features:

  - voltage controlled filter
  - voltage controlled amplifier
  - simple mixer
  - 2x square_ctl signal processing (buffering, sync pulse generation, clamping,
    which are missing from the VCO mk I board)
  - an expo converter (to be used as VCF input)
  - a 2-channel MCP4822 DAC for VCO control voltage generation
  - three general-purpose RC low pass filters


The gerber outputs used for fabrication with [JLCPCB](https://jlcpcb.com) are
located under `fab/`.
