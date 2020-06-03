R2M ?= rst2man.py

MAN = $(shell printf '%s\n' src/* | sed 's|^src|doc\/man|g;s|.*|&.1.gz|g')

PREFIX ?= $(DESTDIR)/usr
BINDIR  = $(PREFIX)/bin
MANDIR  = $(PREFIX)/share/man/man1

all : $(MAN)

doc/man/%.1.gz : doc/rst/%.rst
	@mkdir -p doc/man
	$(R2M) $< | gzip -9 > $@

clean :
	rm -rf doc/man

install : all
	install -Dm755 src/* -t $(BINDIR)
	install -Dm644 doc/man/*.1.gz -t $(MANDIR)

uninstall :
	@echo "uninstalling manpages and binaries..."
	@for script in src/*; do        \
		script=$${script##*/};      \
		rm $(BINDIR)/$$script; 	    \
		rm $(MANDIR)/$$script.1.gz; \
	done

.PHONY : all clean install uninstall
