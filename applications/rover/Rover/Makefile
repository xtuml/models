CC=gcc
CFLAGS=-Wno-pointer-to-int-cast -Wno-parentheses-equality -g
SOURCES := $(shell ls src/*.c)
OBJECTS=$(SOURCES:.c=.o)
OUTDIR=bin
EXECUTABLE=$(OUTDIR)/rover

all:  $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	@$(CC) $(CFLAGS) $^ -o $@

.o:
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)
