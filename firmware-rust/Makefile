all: debug.bin release.bin

%.bin: target/thumbv7m-none-eabi/%/analog-synth-firmware
	arm-none-eabi-objcopy -O binary $< $@

flash.%: %.bin
	stm32flash /dev/ttyUSB0 -b115200 -w $<

.PHONY: target/thumbv7m-none-eabi/debug/analog-synth-firmware
.PHONY: target/thumbv7m-none-eabi/release/analog-synth-firmware
target/thumbv7m-none-eabi/debug/analog-synth-firmware:
	cargo build
target/thumbv7m-none-eabi/release/analog-synth-firmware:
	cargo build --release
