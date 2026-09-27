CC = gcc

CFLAGS = -Wall -Wextra -Werror -std=c23 -O2

SRCS = mkscript.c
HEADERS := hashmap.h

.PHONY: all clean

all: mkscript

mkscript: $(SRCS) $(HEADERS)
	$(CC) $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) mkscript
