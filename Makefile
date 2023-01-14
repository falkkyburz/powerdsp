TEST=.\test
SRC=.
BUILD=.\build
TARGET=pdsp_test
CC=gcc
SIZE=size
OBJDUMP=objdump
CFLAGS=-Wall -O0
INC=-I.\

.PHONY: all
all: clean prepare $(BUILD)\$(TARGET) info help run

prepare:
	mkdir $(BUILD)

$(BUILD)\$(TARGET): $(BUILD)\pdsp.o $(BUILD)\pdsp_test.o
	$(info Link target:)
	$(CC) $(CFLAGS) -o $@ $^

$(BUILD)\pdsp.o: $(SRC)\pdsp.c
	$(info Compile pdsp.c:)
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

$(BUILD)\pdsp_test.o: $(TEST)\pdsp_test.c
	$(info Compile .\test\pdsp_test.c:)
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

info: $(BUILD)\pdsp.o $(BUILD)\pdsp_test.o
	$(info Print size and disassemble:)
	$(SIZE) $(BUILD)\pdsp.o
	$(OBJDUMP) -d $(BUILD)\pdsp.o > $(BUILD)\pdsp.dis
	$(OBJDUMP) -x $(BUILD)\pdsp.o > $(BUILD)\pdsp.map
	$(OBJDUMP) -d $(BUILD)\pdsp_test.o > $(BUILD)\pdsp_test.dis
	$(OBJDUMP) -x $(BUILD)\pdsp_test.o > $(BUILD)\pdsp_test.map
	$(CC) $(CFLAGS) $(INC) -S -fverbose-asm -o $(BUILD)\pdsp.s $(SRC)\pdsp.c
	$(CC) $(CFLAGS) $(INC) -S -fverbose-asm -o $(BUILD)\pdsp_test.s $(TEST)\pdsp_test.c

.PHONY: clean
clean:
	if exist $(BUILD) rmdir /s /q $(BUILD)
	if exist html rmdir /s /q html

help:
	$(info Generate help:)
	doxygen Doxyfile > .\build\doxylog.txt

run: $(BUILD)\$(TARGET)
	$(info Run target:)
	$(BUILD)\$(TARGET)
