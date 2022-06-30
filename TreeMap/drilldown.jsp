<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>


    <%@ page import="com.syncfusion.*" %>
    <%@ page session="false" import="java.util.ArrayList"%>
	<%@ page session="false" import="java.util.Iterator"%>
	<%@ page import="datasource.GetJsonData"%>

<div class="cols-sample-area" style="height:450px;width:800px;border: 0px solid white !important;background:transparent !important">
<%
GetJsonData jsont=new GetJsonData();
Object ob=jsont.getTreemapData();
request.setAttribute("treemap", ob);
%>
<ej:treeMap id="drilldown" dataSource="${treemap}" enableDrillDown="true"
drillDownSelectionColor="#199DAF" weightValuePath="Population"
>
<ej:treeMap-levelCollection>
	<ej:treeMap-levels groupPath="Continent" showLabels="true" groupGap="5" headerHeight="25" showHeader="false"></ej:treeMap-levels>
	<ej:treeMap-levels groupPath="Country" showLabels="true" groupGap="0" headerHeight="25" showHeader="false"></ej:treeMap-levels>
	<ej:treeMap-levels groupPath="Name" showLabels="true" groupGap="0" headerHeight="25" showHeader="false"></ej:treeMap-levels>
</ej:treeMap-levelCollection>
<ej:treeMap-uniColorMapping color="#CCDFE3"></ej:treeMap-uniColorMapping>

</ej:treeMap>
</div>
<style>
        label{
            display:inline-block;
        }
		.e-drilldownHeader{
			background-color:steelblue;
		}
    </style>