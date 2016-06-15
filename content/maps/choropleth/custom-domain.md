---
url: /map/choropleth/custom-domain/
title: "Choropleth Map with Custom Data Domain"
template: example-map.html
created: 2016-06-15 12:24:16
data: static/data/custom-domain.csv
scripts:
- /js/maps/choropleth/custom-domain.js
---
A map demonstrating how to use a custom data domain, as an example for [this question on StackOverflow](https://stackoverflow.com/questions/37821940/using-d3-geomap-to-display-1-0-data). I replaced empty values in the CSV file with `NaN` for this to work, otherwise empty values get the same color as `0` values, i. e. in this case Austria (AUT) would be green as well.

See the complete JavaScript code needed to render the map below.

    {{ filesource('static/js/maps/choropleth/custom-domain.js') }}