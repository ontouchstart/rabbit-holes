CC = gcc
CFLAGS = -Wall -Wextra
TARGET = ./program

all: $(TARGET) run

$(TARGET):
	$(CC) $(CFLAGS) program.c -o $(TARGET)

run:
	-$(TARGET)

clean:
	-rm -f $(TARGET)
