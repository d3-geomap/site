---
url: /docs/map-properties/
title: Map Properties
template: page.html
created: 2014-10-02 12:27:22
---
Several properties can be set after initializing a d3.geomap object to influence the map display.

### General Properties

This section documents the properties that can/must be set when a d3.geomap object is created.

#### margin

Can be set but serves no purpose yet.

#### width

The width of the map defaults to `960px`.

#### height

The height of the map defaults to `500px`.

#### geofile

The topojson file, this is required.

#### postUpdate

function to run when update process is completed, i. e. the map is rendered. This can be used to draw symbols or provide your on zoom function for example.

#### projection

The map projection to be used, defaults to d3.geo.naturalEarth. Can be selected from [core d3](https://github.com/mbostock/d3/wiki/Geo-Projections) and extended [d3 geo projections](https://github.com/d3/d3-geo-projection).

#### rotate

The rotation of the map, defaults to `[0, 0, 0]`, i. e. the rotation you are most likely to expect.

#### svg

The svg property can be used to access and manipulate the map DOM element.

#### title

The browser tooltip displayed when the mouse is moved over a map unit, e. g. a country in case of the default world map.

#### unitId

A property of the unit that is unique, e. g. the `iso3` code of a country, which is also the default value.

#### units

The property of the topojson objects that define its form.

#### zoomMax

The zoom factor to use when a map unit is clicked.

### Choropleth Properties

Properties specific to d3.geomap.choropleth objects.

#### column

The column from the CSV file that contains the values to be displayed on the map. You provide the appropriate column heading as a string value to the column method.

#### colors

An array of color values. You can use [color brewer](http://colorbrewer2.org/) schemes available via the `colorbrewer` object, e. g. `colorbrewer.YlOrRd[9]` for a sequential Yellow, Orange, Red scheme with 9 different color values.

#### domain

The optional `domain` property allows you to specify the range of values used to colorize that map. If no `domain` is given the range will be determined from the data series.

If `domain` is an array with 2 values [d3.scale.quantize](https://github.com/mbostock/d3/wiki/Quantitative-Scales#quantize) is used to calculate the color scale. If `domain` has more than 2 values [d3.scale.threshold](https://github.com/mbostock/d3/wiki/Quantitative-Scales#threshold) is used, in this case the elements in the `domain` must be sorted in ascending order and `domain` must contain one element less than the `colors` array.

#### format

The number format displayed in the legend and in tooltips.

#### legend

Defaults to `true`, i. e. display the built-in legend. If you prefer to add a legend on your own, set `legend` to `false` and implement a legend yourself in the `postUpdate` method.