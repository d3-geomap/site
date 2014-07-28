---
url: /map/choropleth/us-states/
title: "Choropleth Map: US States"
template: example-map.html
created: 2014-07-23 23:55:22
data: static/data/venture-capital.csv
scripts:
- /d3-geomap/vendor/d3.geomap.dependencies.min.js
- /d3-geomap/js/d3.geomap.min.js
- /js/maps/choropleth/us-states.js
styles:
- /d3-geomap/css/d3.geomap.css
---
This example shows how to create a choropleth map of states in the US using data from the [National Science Foundation](http://www.nsf.gov/statistics/seind14/index.cfm/state-data/download.htm) about venture capital spent in the US in 2012.

I'll only explain the differences to the example [choropleth map of the world](/map/choropleth/world/), where you can learn about the meaning of the other settings.

Since this is a map of the US, we load the appropriate topojson file and set the map object to use the `d3.geo.albersUsa` projection. The `unitId` used in this topojson source is the [FIPS code](https://en.wikipedia.org/wiki/Federal_Information_Processing_Standard_state_code). Since we don't use the default projection (`d3.geo.naturalEarth`) we need to set the `scale` so the map fits well into the layout, in this case `1000` is a good value.

The remaining code should be straight-forward, provided you read the explanation of the [choropleth world map example](/map/choropleth/world/).

    {{ filesource('static/js/maps/choropleth/us-states.js') }}
