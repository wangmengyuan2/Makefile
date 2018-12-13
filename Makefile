all: ev

SRC = $(wildcard *.c)
OBJ = $(patsubst %c, %o, $(SRC))

CFLAGS = `pkg-config --cflags glib-2.0`
LIBS = `pkg-config --libs glib-2.0`

ev: $(OBJ)
	gcc -o $@ $^ $(LIBS)

.PHONY:all clean

clean:
	-rm -f ev $(OBJ)
