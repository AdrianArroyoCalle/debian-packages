#!/bin/bash
cd node-mespeak
uscan --download-current-version
dpkg-buildpackage -rfakeroot -kadrian.arroyocalle@gmail.com
debuild -S -sa -kadrian.arroyocalle@gmail.com
cd ..
dput ppa:adrian-arroyocalle/node node-mespeak*.changes
