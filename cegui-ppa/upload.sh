#!/bin/bash
wget "http://prdownloads.sourceforge.net/crayzedsgui/cegui-0.8.4.zip" -O cegui.zip
unzip cegui.zip
cd cegui*
#dh_make -f ../cegui.zip
cp -r ../debian .
debuild -S -sa -kadrian.arroyocalle@gmail.com
#dpkg-buildpackage -rfakeroot -kadrian.arroyocalle@gmail.com
cd ..
dput ppa:adrian-arroyocalle/cegui *.changes
