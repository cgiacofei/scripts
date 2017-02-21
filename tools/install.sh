#! /bin/bash

# Clone script repo into temp directory
git clone --recursive --depth=1 https://github.com/cgiacofei/scripts.git $HOME/.scripts

BIN="rsync_backup ghi/ghi"

for exe in $BIN; do
    ln -s  $HOME/.scripts/$exe $HOME/bin/$(basename $exe)
done

