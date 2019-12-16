Buying the right blue pill board
================================

It appears that blue pill boards are available from at least two different
manufacturers.

- The "white switch" variant has a rectangular, high-profile white reset
  switch located close to the USB port. Also, the USB port has two mounting
  pads (one at each side). The silk screen is layouted carefully.
- The "round switch" variant has a flat and round reset switch at the same
  location. The USB port has four mounting pads. The silk screen at the pin
  headers ("B12 B13...") is uneven, the letters don't share a common baseline.

While both variants are affected by the
[wrong USB resistor issue](https://amitesh-singh.github.io/stm32/2017/05/27/Overcoming-wrong-pullup-in-blue-pill.html)
(tl;dr: The USB D+ pull up resistor R10 should be 1.5k, but it's populated with
10k. Some hosts don't like this, others don't care), I never had a problem with
this.

However, the "round switch" variant appears to be of worse build quality: All two
boards I bought failed to provide reliable USB connectivity, one even failed to
provide a reliable +5V power to the STM32.

I had no problems with my four samples of the "white switch" variant, so I
recommend using these.

[See also](https://wiki.relativty.net/index.php/STM32#Purchasing_your_STM32_board)
