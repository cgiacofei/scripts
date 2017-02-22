#! /bin/bash

BIN="app_check rsync_backup ghi/ghi"

# Clone script repo into temp directory
if git clone --recursive --depth=1 https://github.com/cgiacofei/scripts.git $HOME/.scripts ; then
   echo Repository successfully cloned. 
fi

sh $HOME/.scripts/tools/upgrade.sh
cd $HOME/.scripts
git submodule sync --recursive

echo --- Linking Scripts ---
for exe in $BIN; do
    echo "Linking $HOME/.scripts/$exe --> $HOME/bin/$(basename $exe)"
    ln -sf  $HOME/.scripts/$exe $HOME/bin/$(basename $exe)
done
