firmware.bin: target/thumbv7m-none-eabi/debug/analog-synth-firmware
	arm-none-eabi-objcopy -O binary $< $@

flash: firmware.bin
	stm32flash /dev/ttyUSB0 -b115200 -w $<

.PHONY: target/thumbv7m-none-eabi/debug/analog-synth-firmware
target/thumbv7m-none-eabi/debug/analog-synth-firmware:
	cargo build
