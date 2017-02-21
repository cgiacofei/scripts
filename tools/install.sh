#! /bin/bash

# Clone script repo into temp directory
git clone https://github.com/cgiacofei/scripts.git .scripts
cd .scripts

BIN="rsync_backup ghi/ghi"

for exe in $BIN; do
    ln -s  $PWD/$exe $HOME/bin/$(basename $exe)
done

