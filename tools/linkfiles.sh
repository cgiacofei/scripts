#! /bin/bash

BIN="app_check rsync_backup ghi/ghi binary/ncdu photo.sh"
EXTRA="todo/.todo.actions.d"

echo --- Linking Scripts ---
for exe in $BIN; do
    echo "Linking $HOME/.scripts/$exe --> $HOME/bin/$(basename $exe)"
    ln -sf  $HOME/.scripts/$exe $HOME/bin/$(basename $exe)
done

echo --- Linking Extra Files ---
for exe in $EXTRA; do
    echo "Linking $HOME/.scripts/$exe --> $HOME/$(basename $exe)"
    ln -sf  $HOME/.scripts/$exe $HOME/$(basename $exe)
done
