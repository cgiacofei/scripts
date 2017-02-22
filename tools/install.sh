#! /bin/bash

# Clone script repo into temp directory
if git clone --recursive --depth=1 https://github.com/cgiacofei/scripts.git $HOME/.scripts ; then

        BIN="todo/todo.sh rsync_backup ghi/ghi"
    TEST=$1

    for exe in $BIN; do
        echo Will run: ln -s  $HOME/.scripts/$exe $HOME/bin/$(basename $exe)
    done
else
    echo Already installed update instead
    sh $HOME/.scripts/tools/upgrade.sh
fi

