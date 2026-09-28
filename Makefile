.SILENT:

NAME = ransomConsole
VERSION = 0.0.3-Pro
ARCHIVE = $(NAME)-$(VERSION).tar.gz

.PHONY: install compress clean cleanfiles
.DEFAULT_GOAL := install

install: $(ARCHIVE)
	tar xzf $(ARCHIVE)

compress:
	tar czf $(ARCHIVE) console sourceCode/

clean:
	rm -rf $(ARCHIVE)

cleanfiles:
	rm -rf console sourceCode/
