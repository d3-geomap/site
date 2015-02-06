#!/bin/bash
logya gen
cd ../d3-geomap.github.io/
shopt -s extglob
rm -r !(.git|.|..)
cp -r ../site/deploy/* .
mkdir download
cp ../d3-geomap/bundle/*.zip download/
git add . -A
git commit -am'deploy'
git push
