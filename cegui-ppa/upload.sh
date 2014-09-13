#!/bin/bash
wget "http://prdownloads.sourceforge.net/crayzedsgui/cegui-0.8.4.tar.bz2" -O cegui-0.8.4.tar.bz2
tar jvxf cegui-0.8.4.tar.bz2
mv cegui-0.8.4.tar.bz2 cegui_0.8.4.orig.tar.bz2
cd cegui-0.8.4
#dh_make -f ../cegui.zip
cp -r ../debian .
debuild -S -sa -kadrian.arroyocalle@gmail.com
#dpkg-buildpackage -rfakeroot -kadrian.arroyocalle@gmail.com
cd ..
dput ppa:adrian-arroyocalle/cegui *.changes
