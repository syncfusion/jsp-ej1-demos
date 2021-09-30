<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>

<%@ page import="com.syncfusion.*"%>
<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="datasource.Treemapdata"%>
<%@ page import="datasource.Treemapdatatype"%>


<div class="cols-sample-area" style="height:500px;width:800px;border: 0px solid white !important;background:transparent !important">

<%
Treemapdata treeObj=new Treemapdata();
ArrayList<Treemapdatatype> tdata=treeObj.getTreeData();
request.setAttribute("treemapdata",tdata);
%>

<ej:treeMap id="treemap" dataSource="${treemapdata}"  showLegend="true"	weightValuePath="Growth" colorValuePath="Growth" borderThickness="0">
	<ej:treeMap-leafItemSettings borderThickness="2" showLabels="true" labelPath="Country"></ej:treeMap-leafItemSettings>
	<ej:treeMap-levelCollection>
		<ej:treeMap-levels groupPath="Continent" groupGap="5" showHeader="true" headerHeight="25" groupPadding="5"></ej:treeMap-levels>
	</ej:treeMap-levelCollection>
	<ej:treeMap-rangeColorMappingCollection>
		<ej:treeMap-rangeColorMapping color="#77D8D8" legendLabel="1% Growth" to="1" from="0"></ej:treeMap-rangeColorMapping>
		<ej:treeMap-rangeColorMapping color="#AED960" legendLabel="2% Growth" to="2" from="0"></ej:treeMap-rangeColorMapping>
		<ej:treeMap-rangeColorMapping color="#FFAF51" legendLabel="3% Growth" to="3" from="0"></ej:treeMap-rangeColorMapping>
		<ej:treeMap-rangeColorMapping color="#F3D240" legendLabel="4% Growth" to="4" from="0"></ej:treeMap-rangeColorMapping>
	</ej:treeMap-rangeColorMappingCollection>
</ej:treeMap>
</div>