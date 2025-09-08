CC = gcc

CFLAGS = -Wall -Wextra -Wno-switch -Werror -std=gnu11 -O2 -s

SRCS = bin2s.c

.PHONY: all clean

all: bin2s
	@:

bin2s: $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) bin2s bin2s.exe