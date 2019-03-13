#!/bin/bash
set -euo pipefail

rm -rf static/d3-geomap/*
cd ../d3-geomap/
npm run build && cp -r dist/* ../site/static/d3-geomap/