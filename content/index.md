---
url: /
title: d3-geomap - Create Geographic Maps for the Web
template: front.html
created: 2014-07-23 19:53:22
scripts:
- /js/maps/world-plain.js
---
**d3-geomap** is a library for creating geographic maps that are rendered in a Web browser. d3-geomap is written in JavaScript using features introduced in EcmaScript 6 and later and built on top of D3.js.

## Quickstart

Set the charset of your document to `utf-8` right at the beginning of the HTML head section, then include the downloaded dependencies, and in the body create a `div` with the id `map`. Setting the charset to `utf-8` must be done to ensure that the referenced dependencies and data files don't cause encoding issues in the browser. In the other examples on this site inclusion of this code is assumed and not repeated on every page.

    {{ filesource('static/html/d3-geomap.html') }}

The JavaScript code you still need to write to create a plain world map, that can be zoomed by clicking on countries, looks as follows.

    {{ filesource('static/js/maps/world-plain.js') }}

Either add the above code between `script` tags after including the dependencies or put it in an external JavaScript file (recommended) and include that. See the map created with this code rendered below. Click on a country to zoom the map.