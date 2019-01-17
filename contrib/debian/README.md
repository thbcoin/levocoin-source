
Debian
====================
This directory contains files used to package levocoind/levocoin-qt
for Debian-based Linux systems. If you compile levocoind/levocoin-qt yourself, there are some useful files here.

## levocoin: URI support ##


levocoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install levocoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your levocoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/levocoin128.png` to `/usr/share/pixmaps`

levocoin-qt.protocol (KDE)

