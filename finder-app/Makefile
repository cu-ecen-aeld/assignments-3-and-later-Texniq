CC=$(CROSS_COMPILE)gcc

all: writer.o
	$(CC) writer.o -o writer.sh

writer.o: writer.c
	$(CC) -c writer.c

clean:
	rm writer *.o