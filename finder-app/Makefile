CC=$(CROSS_COMPILE)gcc

all: writer.o
	$(CC) writer.o -o writer.sh
	ln -s writer.sh writer

writer.o: writer.c
	$(CC) -c writer.c

clean:
	rm writer.sh *.o writer