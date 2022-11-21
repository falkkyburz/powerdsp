TARGET = test
CC = gcc
SIZE = size
OBJDUMP = objdump
CFLAGS = -Wall
INC=-I./

.PHONY: all
all: clean $(TARGET) info help run

$(TARGET): pdsp.o pdsp_test.o
	$(info Link target:)
	$(CC) $(CFLAGS) -o $@ $^

pdsp.o: pdsp.c
	$(info Compile pdsp.c:)
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<
	$(CC) $(CFLAGS) $(INC) -S -fverbose-asm $<

pdsp_test.o: pdsp_test.c
	$(info Compile pdsp_test.c:)
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<
	$(CC) $(CFLAGS) $(INC) -S -fverbose-asm $<

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
	del pdsp.s
	del pdsp.map
	del pdsp_test.o
	del pdsp_test.s
	del doxylog.txt
	if exist html rmdir /s /q html
	if exist test rmdir /s /q test

help: pdsp.h
	$(info Generate help:)
	doxygen Doxyfile > doxylog.txt

run: $(TARGET)
	$(info Run target:)
	mkdir test
	$(TARGET)
