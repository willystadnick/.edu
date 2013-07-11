

OracleAS  MapViewer & Map Builder 11 EA1 (Early Access release)



Contents 
--------------------------------------------------------------------

data/mvdemo_11ea1.zip   
    demo dataset specifically prepared for this release

docs/mapviewer_11ea1_ug.pdf  
    updated MapViewer User's Guide

software/mapviewer/mapviewer_11ea1.zip  
    The main MapViewer EAR file

software/mapbuilder/mapbuilder_11ea1.zip
    The new Map Builder desktop application

software/qs/mv11ea1_qs.zip
    The MapViewer Quick Start kit



What's new with this Early Access release:
----------------------------------------------------------------------

- Oracle Maps

Oracle Maps refers to a suite of technologies provided as part of MapViewer. 
It consists of automated caching of pregenerated base map image tiles; an
easy to use AJAX-based Web mapping interface, and powerful feature of 
interest (FOI) layers driven by Oracle Spatial database queries that are
also accessible through AJAX.

- Map Builder Tool

Map Builder is a standalone graphical tool for creating and editing 
styles, themes, and base maps. It replaces the Map Definition Utility 
that was provided in previous releases. 

- PL/SQL API: SDO_MVCLIENT Package

MapViewer now has a PL/SQL application programming interface (API). 

- New Advanced Style Types: Dot Density, Bar Chart, Collection

- TrueType Font Symbol Support

MapViewer can now manage TrueType font files, and turn any symbol 
in a TrueType font into a MapViewer marker. 

- Custom (External) Attribute Data Provider Support

MapViewer now supports middle-tier joins of external attribute data 
(such as sales) with geometries stored in Oracle Spatial, providing 
even more thematic mapping possibilities. 

- Map Scale Bars

MapViewer now enables you to provide easy to use, configurable scale 
bars on maps. 

- Theme-Wide Transparency

Any theme, even an external WMS layer, can now have a specified 
transparency when a map is rendered.

- Embedded Geometries and Label Text

MapViewer now supports geometries and label text that are embedded fields 
inside user-defined Oracle SQL object types.

- WMS Service Enhancements

MapViewer now supports a customizable SDO to EPSG SRID mapping table 
(file). This enables the WMS user to use EPSG SRIDs when interacting 
with MapViewer's WMS service.

- Image Processing Operations with GeoRaster Themes

MapViewer now supports image processing operations on GeoRaster themes 
in a map request. 

- Sticky Text Styles

A text style can now be specified as sticky, which means that any feature 
that uses it as a label style will always have its text label drawn on a 
map. 

- Client-Side Style Creation

When developing a MapViewer application, you can now create dynamic 
styles on the client side and add them to the map request using one 
method: MapViewer.addStyle(name, StyleModel)

- Bidirectional Language Text Labeling

MapViewer now supports bidirectional language text labeling, to 
accommodate text in languages with right-to-left text flow, such as 
Arabic and Hebrew.


Bugs fixed since 10.1.2.0.2:
-------------------------------------------------------------------------

5040927 - bad legend for Variable marker styles
4907082 - MapViewer not reading SRID def from correct data source
4879655 - Exception when multiple WMS themes with style element are present
4739596 - MapViewer root context must be "/mapviewer" when deploying
4733093 - MapViewer WMS theme always sends request with uppercase "GETMAP" 
4683859 - Dynamically added style not always cleared after a request
4955870 - cannot display text inside a marker for Point features
4682196 - cannot properly render collection-type topology features
