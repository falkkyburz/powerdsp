TARGET = test
CC = gcc
CFLAGS = -Wall
INC = -I../include/
SRC = test.c
OBJ = $(SRC:.c=.o)

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) $(INC) -c -o $@ $<

$(TARGET): $(OBJ)
	gcc $(CFLAGS) -o $@ $^

clean:
	del $(TARGET).exe
	del $(OBJ)

run: $(TARGET)
	$(TARGET)
