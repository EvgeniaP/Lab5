CC=gcc
CFLAGS=-I.

all : n1_with_mutex n1_without_mutex n2_factorial n3_deadlock

n1_with_mutex : n1_with_mutex.c
	$(CC) n1_with_mutex.c -o n1_with_mutex -lpthread $(CFLAGS)
	
n1_without_mutex : n1_without_mutex.c
	$(CC) n1_without_mutex.c -o n1_without_mutex -lpthread $(CFLAGS)

n2_factorial : n2_factorial.c
	$(CC) n2_factorial.c -o n2_factorial -lpthread $(CFLAGS)
	
n3_deadlock : n3_deadlock.c
	$(CC) n3_deadlock.c -o n3_deadlock -lpthread $(CFLAGS)

clean : 
	rm n1_with_mutex n1_without_mutex n2_factorial n3_deadlock
