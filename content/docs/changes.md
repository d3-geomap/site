---
title: Changelog
template: page.html
created: 2015-06-11 21:15:47
---
This page lists significant changes introduced in releases of d3-geomap.

## Changes in Version 3.1.0

* Add optional geoData property as alternative to geofile. See [pull request](https://github.com/yaph/d3-geomap/pull/53).
* Increase the default scale factor optimized for world map.

## Changes in Version 3.0.0

This release introduces several changes that are backwards incompatible. On the plus side d3-geomap can now be imported via `import` or `require` from other npm modules. Many thanks to [Dylan Praul](https://github.com/dpraul) for his substantial contributions.

* Provide a built version that other npm modules can consume with `import` or `require`.
* Rename `d3.geomap.choropleth` to `d3.choropleth`.
* Refer to the package as `d3-geomap` and to the JavaScript object as `d3.geomap`.
* Remove the `colorbrewer` object, which provided color scales. Instead `d3-scale-chromatic`, which is included in D3, can be used.
* The `d3-geomap` CSS class must be added to map elements for default styling.
* The TopoJSON files included in the distribution are now built from [Natural Earth Vector](https://github.com/nvkelso/natural-earth-vector) version 4.1.0
* The downloadable zip bundle does not include the dependencies any more.
* The Rollup module bundler is now used for building the distribution.
* Upgrade to D3 version 5.

## Changes in Version 2.0.0

* The `draw` function now only accepts a single argument, the map selection.
* Upgrade to D3 version 4.
* Use mapshaper to create TopoJSON files. Id values are now accessed via the properties attribute of a feature object.

## Changes in Version 1.0.2

* Fixed issue #37: only colorize country and change tooltip if value is defined.
* Fixed issue #38: added script to change FIPS code for Minnesota.

## Changes in Version 1.0.1

* Use ES5 `forEach` instead of ES6 `for of` to avoid using polyfill to support older browsers.

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