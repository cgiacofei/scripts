#! /bin/bash

BIN="rsync_backup ghi/ghi"

# Clone script repo into temp directory
if ! git clone --recursive --depth=1 https://github.com/cgiacofei/scripts.git $HOME/.scripts ; then
    echo Already installed updating.
    sh $HOME/.scripts/tools/upgrade.sh
fi

for exe in $BIN; do
    echo Will run: ln -s  $HOME/.scripts/$exe $HOME/bin/$(basename $exe)
done
