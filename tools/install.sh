#! /bin/bash

# Clone script repo into temp directory
if git clone --recursive --depth=1 https://github.com/cgiacofei/scripts.git $HOME/.scripts ; then
   echo Repository successfully cloned. 
fi

cd $HOME/.scripts
STATUS=$HOME/.scripts/tools/check_repo

if [[ $STATUS == 1 ]] ; then
    sh $HOME/.scripts/tools/upgrade.sh
    git submodule sync --recursive
    sh $HOME/.scripts/tools/linkfiles.sh
fi
