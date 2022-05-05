TARGET = example
CC = gcc
CFLAGS = -Wall

INC=-I../inc/

$(TARGET): pdsp.o examples.o
	$(CC) $(CFLAGS) -o $@ $^

pdsp.o: ../src/pdsp.c
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

examples.o: examples.c
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

clean:
	del $(TARGET).exe
	del pdsp.o
	del examples.o

run: $(TARGET)
	$(TARGET)
