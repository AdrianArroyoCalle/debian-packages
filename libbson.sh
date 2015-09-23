#!/bin/bash
rm libbson_*
cd libbson
# TEST PHASE
#debian/rules install-orig-source
#dpkg-buildpackage -rfakeroot -kadrian.arroyocalle@gmail.com
# RELEASE PHASE
debian/rules get-orig-source
debuild -S -sa -kadrian.arroyocalle@gmail.com
cd ..
dput ppa:adrian-arroyocalle/general libbson*.changes
