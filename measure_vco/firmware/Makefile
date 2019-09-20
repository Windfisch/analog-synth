PROJECT = dac_test
BUILD_DIR = bin

LDFLAGS+=-u _printf_float

#SHARED_DIR = ../my-common-code
CFILES = main.c
#AFILES = stuff.S
LDLIBS = -lm

DEVICE=stm32f103c8t
#DEVICE=stm32f411re
#OOCD_FILE = board/stm32f4discovery.cfg

# You shouldn't have to edit anything below here.
VPATH += $(SHARED_DIR)
INCLUDES += $(patsubst %,-I%, . $(SHARED_DIR))
OPENCM3_DIR=../../libopencm3

include $(OPENCM3_DIR)/mk/genlink-config.mk
include ../../rules.mk
include $(OPENCM3_DIR)/mk/genlink-rules.mk
