#! /bin/bash

BIN="app_check rsync_backup ghi/ghi"

# Clone script repo into temp directory
if ! git clone --recursive --depth=1 https://github.com/cgiacofei/scripts.git $HOME/.scripts ; then
    echo Already installed updating.
    sh $HOME/.scripts/tools/upgrade.sh
else
    cd $HOME/.scripts
    git submodule sync --recursive
fi

for exe in $BIN; do
    ln -sf  $HOME/.scripts/$exe $HOME/bin/$(basename $exe)
done
