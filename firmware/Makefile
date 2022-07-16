all: firmware.hex

MCU=atmega328p
F_CPU=128000UL
CFLAGS = -mcall-prologues -mmcu=$(MCU) -DF_CPU=$(F_CPU)
LDFLAGS = -mmcu=$(MCU)

OBJS = src/main.o

%.hex: %.elf
	$(OBJCOPY) -j .text -j .data -O ihex $< $@

firmware.elf: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

.PHONY: clean
clean:
	rm -f **/*.o *.elf *.hex
