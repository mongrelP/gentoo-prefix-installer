##README
this is simple gentoo-prefix installer

##Licence
CC0:http://creativecommons.org/publicdomain/zero/1.0/

##INSTALL
````bash
git clone https://mongrelP@github.com/mongrelP/gentoo-prefix-installer.git
cd gentoo-prefix-installer
export EPREFIX=$HOME/gentoo #or setenv EPREFIX $HOME/gentoo
./00_bootstrap.sh
./01_emerge.sh
./02_system.sh
````
