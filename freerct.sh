#!/bin/bash
cd freerct-ppa
#debian/rules install-orig-source
#dpkg-buildpackage -rfakeroot -kadrian.arroyocalle@gmail.com
#debian/rules get-orig-source
debuild -S -sa -kadrian.arroyocalle@gmail.com
cd ..
dput ppa:adrian-arroyocalle/freerct freerct*.changes

#https://github.com/LordAro/FreeRCT/archive/master.tar.gz
