---
url: /docs/creating-topojson-files/
title: Creating TopoJSON Files
template: page.html
created: 2015-02-06 23:34:22
---
To roll your own TopoJSON files from a [shapefile](https://en.wikipedia.org/wiki/Shapefile), you need the `ogr2ogr` utility from the [GDAL library](http://www.gdal.org/) and the [topojson package](https://github.com/mbostock/topojson) that you can install with `npm`.

## World Countries TopoJSON

First download a shapefile with administrative boundaries without boundary lakes from [naturalearthdata.com](http://www.naturalearthdata.com/).

    wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_0_countries_lakes.zip

Convert the shapefile to GeoJSON.

    ogr2ogr -f GeoJSON units.json ne_10m_admin_0_countries_lakes.shp

Convert GeoJSON to Topojson using simplification to reduce file size. The SU_A3 is used as the ID and the name as a property.

    topojson --simplify-proportion .08 --id-property SU_A3 -p name=NAME -o countries.json units.json

### Fixing Country IDs

Not all the SU_A3 IDs match those used in the ISO_A3 standard. The [d3.geomap git repository](https://github.com/yaph/d3-geomap) contains a Python script aptly called [fixids.py](https://github.com/yaph/d3-geomap/blob/master/scripts/fixids.py) to replace the non-matching IDs with the corresponding ISO_A3 values. For more details refer to [issue #12](https://github.com/yaph/d3-geomap/issues/12).

## Countries with Administrative Regions TopoJSON

Download a shapefile with administrative country regions.

    wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_1_states_provinces_lakes.zip

To create a Topojson file with US States run:

    ogr2ogr -f GeoJSON -where "ADM0_A3 IN ('USA')" units.json ne_10m_admin_1_states_provinces_lakes.shp

    topojson --simplify-proportion .08 --id-property fips -p name=name -o USA.json units.json