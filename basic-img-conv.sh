#/bin/bash

dump=./test

mkdir $dump
convert *.png -set filename: "%t" $dump/%[filename:].jpg
ls $dump
