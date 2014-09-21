#!/bin/sh
cd ../d3-geomap/
gulp dist
cp -r dist/* ../site/static/d3-geomap/