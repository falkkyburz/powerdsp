TARGET = example
CC = gcc
SIZE = size
OBJDUMP = objdump
CFLAGS = -Wall
INC=-I./

.PHONY: all
all: $(TARGET) info help run

$(TARGET): pdsp.o examples.o
	$(info Link target:)
	$(CC) $(CFLAGS) -o $@ $^

pdsp.o: pdsp.c
	$(info Compile pdsp.c:)
	$(CC) $(CFLAGS) $(INC) -c -O0 -o $@ $<

examples.o: examples.c
	$(info Compile examples.c:)
	$(CC) $(CFLAGS) $(INC) -c -O0 -o $@ $<

info: pdsp.o
	$(info Print size and disassemble:)
	$(SIZE) pdsp.o
	$(OBJDUMP) -d pdsp.o > pdsp.dis
	$(OBJDUMP) -x pdsp.o > pdsp.map

.PHONY: clean
clean:
	del $(TARGET).exe
	del pdsp.o
	del pdsp.dis
	del pdsp.map
	del examples.o
	del doxylog.txt
	if exist html rmdir /s /q html

help: pdsp.h
	$(info Generate help:)
	doxygen Doxyfile > doxylog.txt

run: $(TARGET)
	$(info Run target:)
	$(TARGET)
