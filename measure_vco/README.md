# measuring the VCO's response

This test tool will enumerate all 4096 DAC code points to generate voltages
between 0V and 2.048V which are fed into the VCO. The microcontroller will
test around 4 code points per second and write out a list of the following
format to its USART on pin A2:

DAC code  periods     time
point       
2048         98       2000
1024         68       1977
3072        138       1986
 512         57       1983


The output voltage calculates as "code point * 0.5mV".

The time is given in 10'000ths of a second. Thus, the frequency is calculated
as "(periods / (time/10000))".

At the very beginning, two test tones close to the lowest and two close to the
highest control voltage output are played. Use the tune pot R10 to set an
offset at or close to a position where both test pairs can be heard at distinct
pitches to avoid clamping.

## experiments

[See also](experiments/20190525_1v_per_oct_response/README.md)
