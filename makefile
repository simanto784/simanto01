CC = gcc
CFLAGS = -Wall

all: app test

app: main.o mul.o
	$(CC) main.o mul.o -o app

test: test.o mul.o
	$(CC) test.o mul.o -o test

main.o: main.c mul.h
	$(CC) $(CFLAGS) -c main.c

mul.o: mul.c mul.h
	$(CC) $(CFLAGS) -c mul.c

test.o: test.c mul.h
	$(CC) $(CFLAGS) -c test.c

clean:
	rm -f *.o app test
