firmware.bin: target/thumbv7m-none-eabi/debug/example-stm32f103c8
	arm-none-eabi-objcopy -O binary $< $@


.PHONY: target/thumbv7m-none-eabi/debug/example-stm32f103c8
target/thumbv7m-none-eabi/debug/example-stm32f103c8:
	cargo build
