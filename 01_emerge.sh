#!/bin/sh
emerge --oneshot sed &&\
emerge --oneshot --nodeps bash &&\
emerge --oneshot --nodeps xz-utils &&\
emerge --oneshot wget &&\
emerge --oneshot --nodeps sys-apps/baselayout-prefix &&\
emerge --oneshot --nodeps sys-devel/m4 &&\
emerge --oneshot --nodeps sys-devel/flex &&\
emerge --oneshot --nodeps sys-devel/bison &&\
emerge --oneshot --nodeps sys-devel/binutils-config &&\
emerge --oneshot --nodeps sys-devel/binutils &&\
emerge --oneshot --nodeps sys-devel/gcc-config &&\
emerge --oneshot gmp mpfr mpc &&\
emerge --oneshot --nodeps "=sys-devel/gcc-4.2*" &&\
emerge --oneshot sys-apps/coreutils &&\
emerge --oneshot sys-apps/findutils &&\
emerge --oneshot app-arch/tar &&\
emerge --oneshot sys-apps/grep &&\
emerge --oneshot sys-devel/patch &&\
emerge --oneshot sys-apps/gawk &&\
emerge --oneshot sys-devel/make &&\
emerge --oneshot --nodeps sys-apps/file &&\
emerge --oneshot --nodeps app-admin/eselect &&\
emerge --oneshot app-misc/pax-utils &&\
emerge --oneshot sys-devel/libtool &&\
env FEATURES="-collision-protect" emerge --oneshot sys-apps/portage
