.PHONY: clean

CFLAGS ?= -O2 -Wall -Werror -Wpedantic -std=c99
LDLIBS = -lpng -lm

TARGET = vtex2png
SOURCES = $(wildcard *.c)
OBJECTS = $(SOURCES:%.c=%.o)

$(TARGET): $(OBJECTS)

clean:
	$(RM) $(TARGET) $(OBJECTS)
