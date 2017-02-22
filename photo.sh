#! /bin/bash

EXE=$HOME/.scripts/binary/Image-ExifTool/exiftool
CHRIS_INPUT=$HOME/files/photos/chris-camera
CARRIE_INPUT=$HOME/files/photos/carrie-camera

OUTPUT_DIR=$HOME/files/photos/combined

$EXE -d $OUTPUT_DIR/%Y/%m "-directory<DateTimeOriginal" $CHRIS_INPUT
$EXE -d $OUTPUT_DIR/%Y/%m "-directory<DateTimeOriginal" $CARRIE_INPUT

