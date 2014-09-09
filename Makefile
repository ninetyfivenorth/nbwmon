# On NetBSD you need to install ncurses and
# add -I/usr/pkg/include and -L/usr/pkg/lib to the options
# below.
CFLAGS+=-std=c99 -pedantic -Wall -Wextra
LDLIBS=-lncurses

BIN=nbwmon

all: $(BIN)

install: all
	mkdir -p $(DESTDIR)/usr/bin
	install -m 755 $(BIN) $(DESTDIR)/usr/bin/

uninstall:
	rm -f $(DESTDIR)/usr/bin/$(BIN)

clean:
	rm -f $(BIN)
