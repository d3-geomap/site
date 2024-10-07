#!/bin/bash
set -euo pipefail
ping=${1:-}

deploy_repo=~/repos/deploy/d3-geomap.github.io

logya gen
cp -r deploy/* "$deploy_repo"

cd "$deploy_repo"
git add . -A
git commit -am'deploy'
git push