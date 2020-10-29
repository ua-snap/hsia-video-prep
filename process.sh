#!/usr/bin/env bash

# Create necessary folders
mkdir -p ./tmp/data
mkdir -p ./output/data

for srcfile in data/*
do
	echo "Processing $srcfile..."

	# Reproject
	gdalwarp -q -s_srs EPSG:4326 -t_srs EPSG:3338 $srcfile tmp/$srcfile

	# Colorize
	gdaldem color-relief tmp/$srcfile colors.txt output/$srcfile -q -alpha -nearest_color_entry 

	# Adjust size, other hoo-haw as needed...?
done

# remove scratchfiles
rm -rf ./tmp
mv ./output/data/* ./output/
rm -rf ./output/data