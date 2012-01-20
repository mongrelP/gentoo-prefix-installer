#!/bin/sh

rm -Rf $EPREFIX/tmp/* &&\
hash -r

emerge --sync
USE=-git emerge -u system

cat << EOS >> $EPREFIX/etc/make.conf
CFLAGS="-O2 -pipe -march=native -mtune=native"
CXXFLAGS="${CFLAGS}"
USE="unicode nls cjk cvs subversion git threads"
LINGUAS="ja"
EOS
emerge -ae system
cd $EPREFIX/usr/portage/scripts
./bootstrap-prefix.sh $EPREFIX startscript
