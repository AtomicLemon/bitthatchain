
Debian
====================
This directory contains files used to package bithatchaind/bithatchain-qt
for Debian-based Linux systems. If you compile bithatchaind/bithatchain-qt yourself, there are some useful files here.

## bithatchain: URI support ##


bithatchain-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bithatchain-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bithatchain-qt binary to `/usr/bin`
and the `../../share/pixmaps/bithatchain128.png` to `/usr/share/pixmaps`

bithatchain-qt.protocol (KDE)

