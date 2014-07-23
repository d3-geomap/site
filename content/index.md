---
url: /
title: d3.geomap - Create Geographic Maps for the Web
template: page-with-sidebar.html
created: 2014-07-23 19:53:22
scripts:
- /d3-geomap/vendor/d3.geomap.dependencies.min.js
- /d3-geomap/js/d3.geomap.min.js
- /js/maps/world-plain.js
styles:
- /d3-geomap/css/d3.geomap.css
---
d3.geomap is a library for creating geographic maps that are rendered in a Web browser. d3.geomap is written in CoffeeSccript and built on top of D3.js.

## Quickstart

Include the downloaded dependencies in your HTML file and create a `div` with the id `map`. In the other examples on this site inclusion of this code is assumed and not repeated on every page.

    {{ filesource('static/html/d3.geomap.html') }}

The JavaScript code you still need to write to create a plain world map, that can be zoomed by clicking on countries looks as follows.

    {{ filesource('static/js/maps/world-plain.js') }}

Either add the above code between `script` tags after including the dependencies or put it in an external JavaScript file (recommended) and include that. See the map created with this code rendered below. Click on a country to zoom the map.