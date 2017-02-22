#! /bin/bash

EXE=$HOME/bin/exiftool
CHRIS_INPUT=$HOME/files/photos/chris-camera
CARRIE_INPUT=$HOME/files/photos/carrie-camera

OUTPUT_DIR=$HOME/files/photos/combined

$EXE -d $OUTPUT_DIR/%Y/%m "-directory<DateTimeOriginal" $CHRIS_INPUT
$EXE -d $OUTPUT_DIR/%Y/%m "-directory<DateTimeOriginal" $CARRIE_INPUT

