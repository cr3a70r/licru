PREFIX   ?= /usr
BINPREFIX = $(PREFIX)/bin

install:
	@install -D -m 755 -t $(DESTDIR)/$(BINPREFIX) a2strace
	@install -D -m 755 -t $(DESTDIR)/$(BINPREFIX) ipinfo
	@install -D -m 755 -t $(DESTDIR)/$(BINPREFIX) lschanged
	@install -D -m 755 -t $(DESTDIR)/$(BINPREFIX) memhungry
	@install -D -m 755 -t $(DESTDIR)/$(BINPREFIX) nakedip
	@install -D -m 755 -t $(DESTDIR)/$(BINPREFIX) prettyuser
	@install -D -m 755 -t $(DESTDIR)/$(BINPREFIX) showservice
	@install -D -m 755 -t $(DESTDIR)/$(BINPREFIX) textfind

uninstall:
	@rm -f $(DESTDIR)/$(BINPREFIX)/a2strace
	@rm -f $(DESTDIR)/$(BINPREFIX)/ipinfo
	@rm -f $(DESTDIR)/$(BINPREFIX)/lschanged
	@rm -f $(DESTDIR)/$(BINPREFIX)/memhungry
	@rm -f $(DESTDIR)/$(BINPREFIX)/nakedip
	@rm -f $(DESTDIR)/$(BINPREFIX)/prettyuser
	@rm -f $(DESTDIR)/$(BINPREFIX)/showservice
	@rm -f $(DESTDIR)/$(BINPREFIX)/textfind

reinstall: uninstall install
