CC=g++
CFLAGS = -g -w -Wall

main: main.0 util.o
	$(CC) $(CFLAGS) -o main main.o util.o

unit_test: unit_test.o util.o
	$(CC) $(CFLAGS) -o unit_test unit_test.o util.o

util.o: util.h util.C
	$(CC) $(CFLAGS) -c util.c

clean: 
	rm -f core *.o main unti_test