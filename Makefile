AUTOFIRMA_VERSION=1.6.1
GECOS_VERSION=9

default:
	@echo "No default target exists."

sources/DEBIAN/control: control.in Makefile
	sed 's/\@AUTOFIRMA_VERSION\@/$(AUTOFIRMA_VERSION)/' $< > $@

build: sources/DEBIAN/control
	fakeroot dpkg -b sources ../autofirma_$(AUTOFIRMA_VERSION)-gecos$(GECOS_VERSION).deb
