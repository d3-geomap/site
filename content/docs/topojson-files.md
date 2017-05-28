---
title: Creating TopoJSON Files
template: page.html
created: 2015-02-06 23:34:22
---
The d3.geomap packages comes bundled with several TopoJSON files, including one for the whole world with country borders and different TopoJSON files for many countries with administrative regions, such as states or provinces.

If you need to create your own TopoJSON files from a [shapefile](https://en.wikipedia.org/wiki/Shapefile), I recommend using [mapshaper](http://mapshaper.org/). See the [Makefile](https://github.com/yaph/d3-geomap/blob/master/Makefile) in d3.geomap's source repository for how the TopoJSON files in this package were created.