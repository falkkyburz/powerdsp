TEST=./test
SRC=.
BUILD=./build
TARGET=pdsp_test
CC=gcc
SIZE=size
OBJDUMP=objdump
CFLAGS=-Wall -O0 -Werror -Wextra
INC=-I./

.PHONY: all
all: clean prepare $(BUILD)/$(TARGET) info help run

prepare: clean
	mkdir $(BUILD)

$(BUILD)/$(TARGET): $(BUILD)/pdsp.o $(BUILD)/pdsp_test.o $(BUILD)/pdsp_assert.o
	$(info Link target:)
	$(CC) $(CFLAGS) -o $@ $^

$(BUILD)/pdsp.o: $(SRC)/pdsp.c
	$(info Compile pdsp.c:)
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

$(BUILD)/pdsp_assert.o: $(SRC)/pdsp_assert.c
	$(info Compile pdsp_assert.c:)
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

$(BUILD)/pdsp_test.o: $(TEST)/pdsp_test.c
	$(info Compile ./test/pdsp_test.c:)
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

info: $(BUILD)/pdsp.o $(BUILD)/pdsp_test.o
	$(info Print size and disassemble:)
	$(SIZE) $(BUILD)/pdsp.o
	$(OBJDUMP) -d $(BUILD)/pdsp.o > $(BUILD)/pdsp.dis
	$(OBJDUMP) -x $(BUILD)/pdsp.o > $(BUILD)/pdsp.map
	$(OBJDUMP) -d $(BUILD)/pdsp_test.o > $(BUILD)/pdsp_test.dis
	$(OBJDUMP) -x $(BUILD)/pdsp_test.o > $(BUILD)/pdsp_test.map
	$(CC) $(CFLAGS) $(INC) -S -fverbose-asm -o $(BUILD)/pdsp.s $(SRC)/pdsp.c
	$(CC) $(CFLAGS) $(INC) -S -fverbose-asm -o $(BUILD)/pdsp_test.s $(TEST)/pdsp_test.c

.PHONY: clean
clean:
	rm -f -r $(BUILD)
	rm -f -r html

help:
	$(info Generate help:)
	doxygen Doxyfile > ./build/doxylog.txt

run: $(BUILD)/$(TARGET)
	$(info Run target:)
	$(BUILD)/$(TARGET)
