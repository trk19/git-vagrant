#!/bin/bash
echo "###############################"
echo "[Task] : git server config "
echo "###############################"


DOERUSER="git"
sudo -i -u git bash << EOF
echo "switch to $DOERUSER user"
cd  
mkdir projects/
cd projects/
mkdir project1.git/
cd project1.git/
git init --bare

EOF


