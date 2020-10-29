# hsia-video-prep
Prepare HSIA data for being turned into videos.

## Installation

You need `gdal` installed.  On MacOS, install it using [homebrew](https://brew.sh) with `brew install gdal`.

## Running

Open Terminal, navigate to the directory where this repository is checked out, then run `./process.sh`.

Once the script finishes, output images will be in `output/` folder.

## What's here?

 * the `data/` directory is a copy of the monthly files from the [Historical Sea Ice Atlas of Alaska](http://ckan.snap.uaf.edu/dataset/historical-sea-ice-atlas-observed-estimates-of-sea-ice-concentration-in-alaska-waters).
 * `ne_50m_land` and `ne_50m_ocean` files are from [Natural Earth](https://www.naturalearthdata.com) and are used for the background ocean/land layers in the QGIS project.
 * `example_2019_12.tif` is an example slice of the output, used in the QGIS project.
 * `hsia-background.png` and `hsia-keyframe.png` are high resolution map exports from the QGIS project, suitable for background and compositing in the video editing toolchain.
 * `qgis-project.qgz` is a QGIS3 file that shows an example layer + the background ocean/land layers.