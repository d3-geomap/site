---
title: Changelog
template: page.html
created: 2015-06-11 21:15:47
---
This page lists significant changes introduced in releases of d3.geomap.

## Changes in Version 1.0.0

d3.geomap was originally written in CoffeeScript. For version 1 I ported it to JavaScript or more specifically the EcmaScript specifications supported by babeljs.

In an effort to simplify the code and make it more readably and maintainable, I refactored the library internally. The public facing API stayed mostly the same, except for the changes listed below.

* Turned `svg` accessor method into an attribute in d3.geomap.
* Renamed `zoomMax` accessor to `zoomFactor`.
* Renamed `title` accessor to `unitTitle`.
* Removed `data_by_id`, `selection`, and `private` attributes from d3.geomap.choropleth.

### New Features

* Maps are now responsive by default if width is not set.
* Added the `duration` and `valueScale` accessors to d3.geomap.choropleth.
* Added `colorScale` and `extend` attributes to d3.geomap.choropleth.
* `legend` accessor can now be called with an object having width and height attributes to set the legend dimensions.