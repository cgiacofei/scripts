#! /bin/bash

# Clone script repo into temp directory
if git clone --recursive --depth=1 https://github.com/cgiacofei/scripts.git $HOME/.scripts ; then
    echo Repository successfully cloned. 
    cd $HOME/.scripts
    git submodule sync --recursive
fi

cd $HOME/.scripts

sh $HOME/.scripts/tools/upgrade.sh
git submodule sync --recursive
sh $HOME/.scripts/tools/linkfiles.sh
