CC = gcc
CFLAGS = -Wall -Wextra -g -std=c99
TARGET = program
SOURCE = main.c

all: $(TARGET) 

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCE)

valgrind: $(TARGET)
	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ./$(TARGET) 5

run: $(TARGET)
	./$(TARGET) 5

clean:
	rm -f $(TARGET)
