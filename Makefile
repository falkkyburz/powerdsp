TARGET = example
CC = gcc
CFLAGS = -Wall
INC=-I./

.PHONY: all
all: $(TARGET) help run

$(TARGET): pdsp.o examples.o
	$(info Link target:)
	$(CC) $(CFLAGS) -o $@ $^

pdsp.o: pdsp.c
	$(info Compile pdsp.c:)
	$(CC) $(CFLAGS) $(INC) -c -O3 -o $@ $<

examples.o: examples.c
	$(info Compile examples.c:)
	$(CC) $(CFLAGS) $(INC) -c -O0 -o $@ $<

.PHONY: clean
clean:
	del $(TARGET).exe
	del pdsp.o
	del examples.o
	del doxylog.txt
	if exist html rmdir /s /q html

help: pdsp.h
	$(info Generate help:)
	doxygen Doxyfile > doxylog.txt

run: $(TARGET)
	$(info Run target:)
	$(TARGET)
