---
title: Changelog
template: page.html
created: 2015-06-11 21:15:47
---
## Changes in Version 1.0.0

d3.geomap was originally written in CoffeeScript. For version 1 I ported it to JavaScript or more specifically the EcmaScript specifications supported by babeljs.

In an effort to simplify the code and make it more readably and maintainable, I refactored the library internally. The public facing API stayed mostly the same, except for the changes listed below.

* Turned `svg` accessor method into an attribute in d3.geomap.
* Added the `valueScale` accessor to d3.geomap.choropleth.
* Added `colorScale` and `extend` attributes to d3.geomap.choropleth.
* Renamed `zoomMax` to `zoomFactor`.
* Removed `data_by_id`, `selection`, and `private` attributes from d3.geomap.choropleth.