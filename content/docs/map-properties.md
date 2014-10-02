---
url: /docs/map-properties/
title: Map Properties - d3.geomap Documentation
template: page-no-title.html
created: 2014-10-02 12:27:22
---
# Map Properties

Several properties can be set after initializing a d3.geomap object to influence the map display.

### General Properties

### Choropleth Properties

#### colors

TODO

#### domain

The optional `domain` property allows you to specify the range of values used to colorize that map. If no `domain` is given the range will be determined from the data series.

If `domain` is an array with 2 values [d3.scale.quantize](https://github.com/mbostock/d3/wiki/Quantitative-Scales#quantize) is used to calculate the color scale. If `domain` has more than 2 values [d3.scale.threshold](https://github.com/mbostock/d3/wiki/Quantitative-Scales#threshold) is used, in this case the elements in the `domain` must be sorted in ascending order and `domain` must contain one element less than the `colors` array.