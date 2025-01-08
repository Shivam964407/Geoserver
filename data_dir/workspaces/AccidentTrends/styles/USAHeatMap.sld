<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>USAHeatMap</Name>
    <UserStyle>
      <Title>USAHeatMap</Title>
      <Abstract>A heatmap surface showing point density for accident data</Abstract>
      <FeatureTypeStyle>
        <Transformation>
          <ogc:Function name="gs:Heatmap">
            <!-- Specify data source -->
            <ogc:Function name="parameter">
              <ogc:Literal>data</ogc:Literal>
            </ogc:Function>
            <!-- Set heatmap radius -->
            <ogc:Function name="parameter">
              <ogc:Literal>radiusPixels</ogc:Literal>
              <ogc:Function name="env">
                <ogc:Literal>radiusPixels</ogc:Literal>
                <ogc:Literal>10</ogc:Literal>
              </ogc:Function>
            </ogc:Function>
            <!-- Set weight attribute -->
            <ogc:Function name="parameter">
              <ogc:Literal>weightAttr</ogc:Literal>
              <ogc:Literal>weight</ogc:Literal>
            </ogc:Function>
            <!-- Define output bounding box -->
            <ogc:Function name="parameter">
              <ogc:Literal>outputBBOX</ogc:Literal>
              <ogc:Function name="env">
                <ogc:Literal>wms_bbox</ogc:Literal>
              </ogc:Function>
            </ogc:Function>
            <!-- Define output width -->
            <ogc:Function name="parameter">
              <ogc:Literal>outputWidth</ogc:Literal>
              <ogc:Function name="env">
                <ogc:Literal>wms_width</ogc:Literal>
              </ogc:Function>
            </ogc:Function>
            <!-- Define output height -->
            <ogc:Function name="parameter">
              <ogc:Literal>outputHeight</ogc:Literal>
              <ogc:Function name="env">
                <ogc:Literal>wms_height</ogc:Literal>
              </ogc:Function>
            </ogc:Function>
          </ogc:Function>
        </Transformation>
        <Rule>
          <RasterSymbolizer>
            <!-- Specify geometry attribute -->
            <Geometry>
              <ogc:PropertyName>the_geom</ogc:PropertyName>
            </Geometry>
            <Opacity>0.75</Opacity>
            <!-- Define color ramp -->
            <ColorMap type="ramp">
              <ColorMapEntry color="#0000FF" quantity="0" label="No Data" opacity="0" />
              <ColorMapEntry color="#00007F" quantity="0.001" label="Lowest" />
              <ColorMapEntry color="#0000FF" quantity="0.003" label="Very Low" />
              <ColorMapEntry color="#00FFFF" quantity="0.005" label="Low" />
              <ColorMapEntry color="#00FF00" quantity="0.01" label="Medium-Low" />
              <ColorMapEntry color="#FFFF00" quantity="0.02" label="Medium" />
              <ColorMapEntry color="#FF7F00" quantity="0.05" label="Medium-High" />
              <ColorMapEntry color="#FF6600" quantity="0.1" label="High" />
              <ColorMapEntry color="#FF0000" quantity="0.35" label="Very High" />
              <ColorMapEntry color="#FF00DE" quantity="0.65" label="Highest" />
            </ColorMap>
          </RasterSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>