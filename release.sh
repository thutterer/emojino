#!/bin/bash

# Creates a release package.
# Currently only works on and for for x64 Debian/Ubuntu.

BASE_DIR=`pwd`
RELEASE_DIR=dist/release/deb/emojino

# -----------
echo "Building Neutralino app ..."

neu build > /dev/null

# -----------
echo "Preparing files for packaging ..."

mkdir -p $RELEASE_DIR/DEBIAN
mkdir -p $RELEASE_DIR/usr/share/applications
mkdir -p $RELEASE_DIR/usr/share/emojino

cp .release_tools/control $RELEASE_DIR/DEBIAN
cp dist/emojino/emojino-linux_x64 $RELEASE_DIR/usr/share/emojino
cp dist/emojino/resources.neu $RELEASE_DIR/usr/share/emojino
cp resources/icons/appIcon.png $RELEASE_DIR/usr/share/emojino/icon.png
cp .release_tools/emojino.desktop $RELEASE_DIR/usr/share/applications

# -----------
echo "Packaging emojino.deb ..."

cd $RELEASE_DIR/..
dpkg-deb --build emojino

# -----------
echo "Cleaning up ..."

cd $BASE_DIR
rm -r $RELEASE_DIR

# -----------
echo "Done!"
echo "$RELEASE_DIR.deb"
