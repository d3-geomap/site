#!/bin/bash
cd ../d3-geomap.github.io/
shopt -s extglob
rm -r !(.git|.|..)
cp -r ../site/deploy/* .
git add . -A
git commit -am'deploy'
git push