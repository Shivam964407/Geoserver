<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <sld:NamedLayer>
    <sld:Name>Color Ramp</sld:Name>
    <sld:UserStyle>
      <sld:Title>Color Ramp Style</sld:Title>
      <sld:Abstract>Applies a color ramp to raster data</sld:Abstract>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:RasterSymbolizer>
            <sld:Opacity>1.0</sld:Opacity>
            <sld:ColorMap type="ramp">
              <sld:ColorMapEntry color="#0000FF" quantity="0" label="Low" opacity="1.0"/>
              <sld:ColorMapEntry color="#00FF00" quantity="1" label="Medium" opacity="1.0"/>
              <sld:ColorMapEntry color="#FF0000" quantity="2" label="High" opacity="1.0"/>
            </sld:ColorMap>
          </sld:RasterSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>