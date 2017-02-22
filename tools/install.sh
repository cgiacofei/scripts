#! /bin/bash

# Clone script repo into temp directory
if git clone --recursive --depth=1 https://github.com/cgiacofei/scripts.git $HOME/.scripts ; then
   echo Repository successfully cloned. 
fi

STATUS=$HOME/.scripts/tools/check_repo

if [[ $STATUS == 1 ]] ; then
    sh $HOME/.scripts/tools/upgrade.sh
    cd $HOME/.scripts
    git submodule sync --recursive
    sh $HOME/.scripts/tools/linkfiles.sh
fi
