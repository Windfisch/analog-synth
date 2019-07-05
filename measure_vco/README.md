# measuring the VCO's response

This test tool will enumerate all 4096 DAC code points to generate voltages
between 0V and 2.048V which are fed into the VCO. The microcontroller will
test around 50 code points per second, listen to the signal for 5 periods,
and write out a list of the following format to its USART on pin A2:

```
codept  divider hiTicks1 loTicks1  hiTicks2 loTicks2  hiTicks3 loTicks3  hiTicks4 loTicks4  hiTicks5 loTicks5
 718      3      28751    28328     28745    28333     28742    28326     28756    28322     28752    28326
1694      9      36019    36032     36061    35997     35998    36019     36046    36013     36028    36000
3742      1      24342    23752     24350    23754     24342    23756     24340    23756     24354    23762
 414     45      39457    44456     39468    41359     39476    41358     39477    41360     39463    41366
2462      4      29918    29569     29912    29572     29900    29571     29889    29575     29896    29571
...
```

`divider` specifies the `TIM2` timer's division (in fact, it's the prescaler
plus 1). `TIM2` is clocked at 78MHz and will increment every `divider` clocks.

The hi/loTicksN can be converted into seconds by the following formula:
`time[sec] = ticks * divider / 78'000'000`, the frequency can be calculated e.g.
by `1 / (hiTicks5+loTicks5)` or -- even more precise -- `5 / (sum of all hi+loTicks)`.


older versions, which tested only 4 code points per seconds, were using the
following format.
The time is given in 10'000ths of a second. Thus, the frequency is calculated
as "(periods / (time/10000))":

```
DAC code  periods     time
point       
2048         98       2000
1024         68       1977
...
```



In both cases, the output voltage calculates as "code point * 0.5mV".

At the very beginning, two test tones close to the lowest and two close to the
highest control voltage output are played. Use the tune pot R10 to set an
offset at or close to a position where both test pairs can be heard at distinct
pitches to avoid clamping.

## experiments

[Exponential frequency response accuracy](experiments/20190625_1v_per_oct_response/README.md)

[Attribution of error artifacts to DAC or analog circuitry](experiments/20190705_error_attribution/README.md)
