#!/bin/sh
wget -c -nc -O bootstrap-prefix.sh http://overlays.gentoo.org/proj/alt/browser/trunk/prefix-overlay/scripts/bootstrap-prefix.sh?format=txt
mkdir $EPREFIX/tmp
chmod 755 bootstrap-prefix.sh
export PATH="./:$HOME/bin:$EPREFIX/usr/bin:$EPREFIX/bin:$EPREFIX/tmp/usr/bin:$EPREFIX/tmp/bin:$PATH"
./bootstrap-prefix.sh $EPREFIX tree &&\
./bootstrap-prefix.sh $EPREFIX/tmp make &&\
./bootstrap-prefix.sh $EPREFIX/tmp wget &&\
./bootstrap-prefix.sh $EPREFIX/tmp sed &&\
./bootstrap-prefix.sh $EPREFIX/tmp coreutils8 &&\
./bootstrap-prefix.sh $EPREFIX/tmp findutils5 &&\
./bootstrap-prefix.sh $EPREFIX/tmp tar22 &&\
./bootstrap-prefix.sh $EPREFIX/tmp patch &&\
./bootstrap-prefix.sh $EPREFIX/tmp grep &&\
./bootstrap-prefix.sh $EPREFIX/tmp gawk &&\
./bootstrap-prefix.sh $EPREFIX/tmp bash &&\
./bootstrap-prefix.sh $EPREFIX/tmp zlib &&\
./bootstrap-prefix.sh $EPREFIX/tmp python &&\
./bootstrap-prefix.sh $EPREFIX portage &&\ 
rm bootstrap-prefix.sh
hash -r
