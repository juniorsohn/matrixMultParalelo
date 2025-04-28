# GNU Makefile

CC = gcc 
CCFLAGS = -Wall -lpthread
LDFLAGS = 
TARGET = main

%.o: %.c
	$(CC) $(CCFLAGS) -c $<

%: %.o
	$(CC) $(LDFLAGS) $^ -o $@

all: $(TARGET)

# Dependencias

main: matriz.o main.c
matriz.o: matriz.c matriz.h

clean:
	rm -f *.o *~ $(TARGET)