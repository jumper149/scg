PREFIX := /usr

build:
	gcc -std=c99 -O2 -I /usr/X11R6/include -o scg scg.c -L /usr/X11R6/lib -lm -lX11 -lXrandr

install:
	install -d $(DESTDIR)$(PREFIX)/bin/
	install -m755 sct $(DESTDIR)$(PREFIX)/bin/
