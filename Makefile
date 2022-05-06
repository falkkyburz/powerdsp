TARGET = example
CC = gcc
CFLAGS = -Wall

INC=-I./

$(TARGET): pdsp.o examples.o
	$(CC) $(CFLAGS) -o $@ $^

pdsp.o: pdsp.c
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

examples.o: examples.c
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

clean:
	del $(TARGET).exe
	del pdsp.o
	del examples.o

doc: 
	doxygen

run: $(TARGET)
	$(TARGET)
