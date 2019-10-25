firmware.bin: target/thumbv7m-none-eabi/debug/analog-synth-firmware
	arm-none-eabi-objcopy -O binary $< $@


.PHONY: target/thumbv7m-none-eabi/debug/analog-synth-firmware
target/thumbv7m-none-eabi/debug/analog-synth-firmware:
	cargo build
