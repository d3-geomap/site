---
url: /docs/map-properties/
title: Map Properties - Accessors and Attributes
template: page.html
created: 2014-10-02 12:27:22
---
Maps can be customized through the accessors documented here. If an accessor is called with a value the value will be set and the map object returned. If called without an argument the current value of the corresponding property will be returned.

In addition map properties can be accessed via attributes to allow for customizations beyond the capabilities of this library.

### d3.geomap accessors

This section documents accessors that can/must be set when a d3.geomap object is created.

#### geofile - required

The topojson file loaded to draw the map units, for example countries on a world map.

#### height - optional

The height of the map. By default will be calculated based on width.

#### postUpdate - optional

A function to run when the update process is completed, i. e. the map is rendered. This can be used to draw symbols or provide your on zoom function for example.

#### projection - optional

The map projection to be used. Defaults to `d3.geo.naturalEarth`. Can be selected from [core d3](https://github.com/mbostock/d3/wiki/Geo-Projections) and extended [d3 geo projections](https://github.com/d3/d3-geo-projection).

#### rotate - optional

The rotation of the map. Defaults to `[0, 0, 0]`, i. e. the rotation you are most likely to expect.

### scale - optional

A numeric value to set the size of the map. By default will be calculated based on width.

#### title - optional

A function that receives the topojson feature object for the corresponding map unit, when the mouse is moved over it. The return value of this functions is the text shown in the standard browser tooltip. Defaults to `(d) => d.properties.name`.

### translate - optional

An array of x and y coordinates in pixels to center the map. By default will be calculated based on width.

#### unitId - optional

A property of the unit that is unique, e. g. the `iso3` code of a country, which is also the default value.

#### units - optional

The name of the `topojson.objects` property that contains the geographic units to display on the map.

#### width - optional

The width of the map. By default will be set to the width of the containing element, i. e. the element passed to the selection.

#### zoomFactor - optional

The zoom factor to use when a map unit is clicked. Defaults to 4.

### d3.geomap attributes

#### svg

The [d3.selection](https://github.com/mbostock/d3/wiki/Selections) for the map object.

### d3.geomap.choropleth accesors

In addition to the accessors from d3.geomap, d3.geomap.choropleth objects provide the accessors listed below..

#### column - required

The column from the CSV file that contains the values to be displayed on the map. You provide the appropriate column heading as a string value to the column method.

#### colors - optional

An array of color values. You can use [color brewer](http://colorbrewer2.org/) schemes available via the `colorbrewer` object, e. g. `colorbrewer.OrRd[9]` for a sequential orange-red scheme with 9 different color values, which is the default.

#### domain - optional

Specify the array of values used to determine appropriate color values. Defaults to the extent of values from the data series set via the `column` accessor.

#### format - optional

The number format used for values displayed in the legend and in tooltips. Defaults to `d3.format(',.02f')`.

#### legend - optional

Defaults to `false`, so you can create your own legend by providing the code to draw it to the `postUpdate` method. If set to `true` the built-in legend will be displayed. You can modify that legend in your `postUpdate` function.

#### valueScale - optional

The D3 scale function to use to determine colors based on the domain, i. e. the input values, and the color range. Defaults to [d3.scale.quantize](https://github.com/mbostock/d3/wiki/Quantitative-Scales#quantize).

### d3.geomap.choropleth attributes

#### data

The data object created from the loaded CSV file.

#### colorScale

A function that returns the color from the range of colors for the numeric value passed as its argument.

#### extent

The extent of the data range, i. e. minimum and maximum value in the given column of the CSV data file.