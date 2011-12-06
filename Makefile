# makefile

CC=gcc
CFLAGS=-Wall -g -finstrument-functions

all: prog

prog: prog.o instrumenter.o
	$(CC) $(CFLAGS) -o prog prog.o instrumenter.o

prog.o: prog.c
	$(CC) $(CFLAGS) -c -o prog.o prog.c

instrumenter.o: instrumenter.c
	$(CC) $(CFLAGS) -c -o instrumenter.o instrumenter.c

.PHONY: clean
clean:
	-rm -f *~ *.o prog