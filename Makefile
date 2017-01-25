INSTALL 	= /usr/bin/install
DESTDIR 	=	
PREFIX 		= /usr/local
libdir  	= $(PREFIX)/lib
bindir  	= $(PREFIX)/bin
sharedir	= $(PREFIX)/share

knuddels_jar 	= kjupdate.jar
knuddels_exec 	= knuddels.sh
knuddels_desktop= knuddels.desktop
knuddels_icon   = knuddels.png

all: install

install: $(knuddels_jar) $(knuddels_bin) $(knuddels_desktop)
	install -Dm755 $(knuddels_exec) $(bindir)/knuddels
	instal  -Dm644 $(knudddels_jar) $(libdir)/knuddels/$(knuddels_jar)
	instal  -Dm644 $(knudddels_desktop) $(sharedir)/applications/$(knuddels_desktop)
	install -Dm644 $(knuddels_icon) $(sharedir)/icons/$(knuddels_icon)

.PHONY: install
