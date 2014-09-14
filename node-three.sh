#!/bin/bash
cd node-three
uscan --download-current-version
dpkg-buildpackage -rfakeroot -kadrian.arroyocalle@gmail.com
debuild -S -sa -kadrian.arroyocalle@gmail.com
cd ..
dput ppa:adrian-arroyocalle/node node-three*.changes
