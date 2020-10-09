<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %>    
    <%@ page import="com.syncfusion.*" %>

<%@ page session="false" import="java.util.ArrayList" %>
<%@ page session="false" import="java.util.Iterator" %>
 
<%@ page import="com.syncfusion.*" %>
<%@ page import="datasource.GetJsonData"%>
<%@ page import="datasource.MapsData"%>
<%@ page import="datasource.MapsDataType"%>

<div class="cols-sample-area" style="height:450px;width:800px;border: 0px solid white !important;background:transparent !important">
 <%
 GetJsonData jsont=new GetJsonData();
 Object ob=jsont.getMapData();
 request.setAttribute("mapdata", ob);
 MapsData countryObj=new MapsData();
 Object cdata=countryObj.getCountryMapData();
 request.setAttribute("worldmap", cdata);
 %>
 <div style="margin-left: 0px; border-width: 2px; opacity: 0.7; height: 50px; width: 290px">
                    <label style="color: Black; font-size: 22px; margin-top: 7px; margin-left: 20px; margin-right: 20px; height: 25px; font-weight: Normal;">World Sales Data</label>
</div>
<ej:map id="Maps" enableAnimation="true" enablePan="true">
	<ej:map-zoomSettings enableZoom="true" level="1" factor="1"></ej:map-zoomSettings>
	
	<ej:map-navigationControl enableNavigation="false"></ej:map-navigationControl>
	
	<ej:map-layerCollection>
		<ej:map-layers shapeData="${mapdata}" dataSource="${worldmap}" shapeDataPath="country" shapePropertyPath="name" showMapItems="true" enableSelection="true" enableMouseHover="true">
			
			<ej:map-layers-shapeSettings fill="#4E7EC4" valuePath="Sales" highlightColor="#F4CD0C" strokeThickness="1" selectionColor="#207BB2" colorValuePath="Sales" stroke="white"></ej:map-layers-shapeSettings>
		
			<ej:map-layers-bubbleSettings showBubble="true" valuePath="Sales" minValue="15" maxValue="35" color="#C6C35C">
					<ej:map-layers-bubbleSettings-colorMappings>
						<ej:map-layers-bubbleSettings-colorMappings-rangeColorMappingCollection>
							<ej:map-layers-bubbleSettings-colorMappings-rangeColorMapping color="#C6C35C" from="400" to="600"></ej:map-layers-bubbleSettings-colorMappings-rangeColorMapping>
							<ej:map-layers-bubbleSettings-colorMappings-rangeColorMapping color="#F94165" from="601" to="900"></ej:map-layers-bubbleSettings-colorMappings-rangeColorMapping>
							<ej:map-layers-bubbleSettings-colorMappings-rangeColorMapping color="#F47F31" from="901" to="1500"></ej:map-layers-bubbleSettings-colorMappings-rangeColorMapping>
						</ej:map-layers-bubbleSettings-colorMappings-rangeColorMappingCollection>
					</ej:map-layers-bubbleSettings-colorMappings>
			</ej:map-layers-bubbleSettings>
		</ej:map-layers>
	</ej:map-layerCollection>

</ej:map>
</div>