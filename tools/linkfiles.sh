#! /bin/bash

BIN="app_check rsync_backup ghi/ghi binary/ncdu"

echo --- Linking Scripts ---
for exe in $BIN; do
    echo "Linking $HOME/.scripts/$exe --> $HOME/bin/$(basename $exe)"
    ln -sf  $HOME/.scripts/$exe $HOME/bin/$(basename $exe)
done