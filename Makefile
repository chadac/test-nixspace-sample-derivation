PREFIX ?= ./out

build:
	echo "noop"

clean:
	rm -rf $(DESTDIR)$(PREFIX)

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin/
	install -m 755 bin/sample-derivation $(DESTDIR)$(PREFIX)/bin/
