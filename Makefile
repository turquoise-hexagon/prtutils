PREFIX ?= $(DESTDIR)/usr
BINDIR  =  $(PREFIX)/bin
MANDIR  =  $(PREFIX)/share/man/man1

BIN = $(wildcard src/*)
RST = $(wildcard doc/*.rst)

MAN = $(RST:.rst=.1.gz)

all : $(MAN)

$(MAN) : $(RST)
	rst2man.py $< | gzip -9 > $@

clean :
	rm -f $(MAN)

install : all
	install -Dm755 $(BIN) -t $(BINDIR)
	install -Dm644 $(MAN) -t $(MANDIR)

uninstall :
	rm -f $(addprefix $(BINDIR)/,$(BIN))
	rm -f $(addprefix $(MANDIR)/,$(MAN))

.PHONY : all clean install uninstall
