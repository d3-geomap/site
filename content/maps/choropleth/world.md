---
url: /map/choropleth/world/
title: "Choropleth Map: World"
template: example-map.html
created: 2014-07-23 23:06:22
data: static/data/sp.pop.totl.csv
scripts:
- /js/maps/choropleth/world.js
---
This example shows how to create a choropleth world map with `d3.geomap.choropleth`. It displays world population data downloaded from the [World Bank databank](http://data.worldbank.org/indicator/SP.POP.TOTL).

You can set various properties of the map when instantiating a map object. First specify the TopoJSON file to load, then set the color scheme, choose the `YR2010` column as the one to display, set the format according to the `format` function defined first, display a legend, and set the unitId to `iso3`. Let's go into more details about the individual settings.

d3.geomap comes with support for color schemes from the [ColorBrewer project](http://colorbrewer2.org/). We choose the sequential multi-hue scheme Yellow - Green - Blue appropriate for the population data displayed and for best accuracy the maximum number of bins for sequential schemes from ColorBrewer, which is 9.

The value in the call to the `column` method specifies which column of the CSV file to display on the map based on the header row in the CSV. `d3.geomap.choropleth` requires this header row to be present.

The `format` function defines how to format values in the map legend and in tooltips when moving the mouse over a country.

The `legend` can currently be set to `true` and `false`. If `true` it will look like the one in the example. If you don't want to display a legend or prefer another type of legend you have to set `legend` to `false` and draw your own.

Finally the `unitId` specifies which column in the CSV file contains the ID values of the geographic units displayed on the map. In this case the units are countries and the ID is in the column `iso3`, the 3 letter country code defined in [ISO 3166-1 Alpha 3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3). This is the same ID as used in the TopoJSON properties. If you use a custom TopoJSON file with another code, e. g. the ISO 2 code, you need to make sure to include this in the CSV and set the `unitId` accordingly.

After setting up the map, we need to load the CSV file, select the div with the id `map` set the selection `datum` to the loaded CSV and call the `map.draw` method defined in d3-geomap. You have to provide the `map` object itself as the 2nd argument to `call`.

See the complete JavaScript code needed to render the map below.

    {{ filesource('static/js/maps/choropleth/world.js') }}

