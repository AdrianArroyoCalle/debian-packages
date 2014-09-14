#!/bin/bash
cd cegui-ppa
#debian/rules install-orig-source
#dpkg-buildpackage -rfakeroot -kadrian.arroyocalle@gmail.com
debian/rules get-orig-source
debuild -S -sa -kadrian.arroyocalle@gmail.com
cd ..
dput ppa:adrian-arroyocalle/cegui cegui*.changes
