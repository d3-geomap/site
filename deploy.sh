#!/bin/bash
set -euo pipefail
ping=${1:-}

deploy_repo=~/repos/deploy/d3-geomap.github.io

logya gen
cp -r deploy/* "$deploy_repo"

cd "$deploy_repo"
mkdir -p download
cp ~/repos/pub/d3-geomap/d3-geomap/bundle/*.zip download/
git add . -Af # use the force so globally ignored zip gets added
git commit -am'deploy'
git push