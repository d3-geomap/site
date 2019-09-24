---
title: Map Properties - Accessors and Attributes
template: page.html
created: 2014-10-02 12:27:22
---
Maps can be customized through the accessors documented here. If an accessor is called with a value the value will be set and the map object returned. If called without an argument the current value of the corresponding property will be returned.

In addition map properties can be accessed via attributes to allow for customizations beyond the capabilities of this library.

## d3.geomap accessors

This section documents accessors that can/must be set when a `d3.geomap` object is created.

### geofile - required if geoData is not set

The TopoJSON file to load for drawing the map units, for example countries on a world map.

### geoData - required if geofile is not set

The content of a TopoJSON file that was already loaded. This is useful for creating multiple maps on one page for example.

### height - optional

The height of the map. By default will be calculated based on width.

### postUpdate - optional

A function to run when the update process is completed, i. e. the map is rendered. This can be used to draw symbols or provide your own zoom function for example.

### projection - optional

The map projection to be used. Defaults to `d3.geoNaturalEarth`. Other projections to use can be found in the [d3-geo](https://github.com/d3/d3-geo/blob/master/README.md#projections) and [d3-geo-projection](https://github.com/d3/d3-geo-projection) packages.

### rotate - optional

The rotation of the map. Defaults to `[0, 0, 0]`, i. e. the rotation you are most likely to expect.

### scale - optional

A numeric value to set the size of the map. By default will be calculated based on width.

### translate - optional

An array of x and y coordinates in pixels to center the map. By default will be calculated based on width.

### unitId - optional

A property of the unit that is unique, e. g. the `iso3` code of a country, which is also the default value.

### unitPrefix - optional

The value of `unitPrefix` is used to prefix CSS classes of units. It defaults to `unit-`, e. g. Spain would get a CSS class of `unit-ESP`.

### units - optional

The name of the `topojson.objects` property that contains the geographic units to display on the map.

### unitTitle - optional

A function that receives the TopoJSON feature object for the corresponding map unit, when the mouse is moved over it. The return value of this functions is the text shown in the standard browser tooltip. Defaults to `(d) => d.properties.name`.

### width - optional

The width of the map. By default will be set to the width of the containing element, i. e. the element passed to the selection.

### zoomFactor - optional

The zoom factor to use when a map unit is clicked. Defaults to 4.

## d3.geomap attributes

### geo

The loaded TopoJSON data, which gets assigned during the draw method.

### svg

The [d3-selection](https://github.com/d3/d3-selection) for the map object.

## d3.choropleth accessors

In addition to the accessors from `d3.geomap`, `d3.choropleth` objects provide the accessors listed below..

### column - required

The column from the CSV file that contains the values to be displayed on the map. You provide the appropriate column heading as a string value to the `column` method.

### colors - optional

An array of color values. A sequential orange-red scheme with 9 different color values is set by default. The [d3-scale-chromatic](https://github.com/d3/d3-scale-chromatic) package provides many other color scales you can use.

### domain - optional

Specify the array of values used to determine appropriate color values. Defaults to the extent of values from the data series set via the `column` accessor.

### format - optional

The number format used for values displayed in the legend and in tooltips. Defaults to `d3.format(',.02f')`.

### legend - optional

Defaults to `false`, so you can create your own legend by providing the code to draw it as a callback function to the `postUpdate` method.

If set to `true` the built-in legend will be displayed. You can set the width and height of the legend by passing an object with `width` and `height` attributes set to numeric values.

### duration - optional

If set countries will be colored using a transition of the specified duration in milliseconds. Defaults to `null`, i. e. no transition animation.

### valueScale - optional

The D3 scale function to use to determine colors based on the domain, i. e. the input values, and the color range. Defaults to [d3.scaleQuantize](https://github.com/d3/d3-scale#quantize-scales).

## d3.choropleth attributes

### data

The data object created from the loaded CSV file.

### colorScale

A function that returns the color from the range of colors for the numeric value passed as its argument.

### extent

The extent of the data range, i. e. minimum and maximum value in the given column of the CSV data file.