#!/usr/bin/env zsh
set -x

if [ -d "./composite-output" ]; then rm -rf "./composite-output"; fi
mkdir -p ./composite-output/data

for srcfile in data/*_10*
do
	echo "Processing $srcfile..."
	gdal_merge.py -o ./composite-output/$srcfile:t ./hsia-background.tif ./output/$srcfile:t 
done
