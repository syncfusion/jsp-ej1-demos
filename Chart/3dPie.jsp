<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %>    
    <%@ page import="com.syncfusion.*" %>

<%@ page session="false" import="java.util.ArrayList" %>
<%@ page session="false" import="java.util.Iterator" %> 
<%@ page import="datasource.ChartDataSource" %> 
<%@ page import="datasource.GetChartDataSource" %>
<body>
<div style="border: 0px solid white !important;background:transparent !important">
<%
GetChartDataSource obj2 = new GetChartDataSource();
	ArrayList<ChartDataSource> data2 = obj2.getData4();
    request.setAttribute("DataSource2",data2);
    %>
    
    <ej:chart id="container" isResponsive="true" load="onchartload" depth="30" tilt="-30" rotation="-30" perspectiveAngle="90" enable3D="true" enableRotation="false">
    	<ej:chart-legend visible="false"></ej:chart-legend>
		   
    	<ej:chart-seriesCollection>
			<ej:chart-series dataSource="${DataSource2}" explodeIndex="0" xName="Year" yName="XName" startAngle="145"></ej:chart-series>
		</ej:chart-seriesCollection>
    	<ej:chart-commonSeriesOptions type="pie" labelPosition="outside" enableAnimation="true">
    	
    		<ej:chart-commonSeriesOptions-tooltip visible="true" format="#point.x# :  #point.y#"></ej:chart-commonSeriesOptions-tooltip>
    		
    	</ej:chart-commonSeriesOptions> 
    	<ej:chart-title text="Expenditure shares on a child"></ej:chart-title>
	</ej:chart>


  
</div>

<script>

function onchartload(sender) {
	sender.model.primaryYAxis.labelFormat = "{value}%";
	if (!ej.util.isNullOrUndefined(window.orientation) && sender) {   	//to modify chart properties for mobile view
		var model = sender.model,
		seriesLength = model.series.length;
		model.title.enableTrim = true;
		model.elementSpacing = 5;
		model.legend.visible = false;
		model.size.height = null;
		model.size.width = null;
		for (var i=0; i< seriesLength; i++){
			if (!model.series[i].marker)
				model.series[i].marker = {};
			if (!model.series[i].marker.size)
				model.series[i].marker.size = {};							
			model.series[i].marker.size.width = 6;
			model.series[i].marker.size.height = 6;
		}
		model.primaryXAxis.labelIntersectAction = "rotate45";
		if (model.primaryXAxis.title)
			model.primaryXAxis.title.text = "";
		model.primaryXAxis.edgeLabelPlacement = "hide";
		model.primaryYAxis.labelIntersectAction = "rotate45";
		if (model.primaryYAxis.title)
			model.primaryYAxis.title.text = "";
		model.primaryYAxis.edgeLabelPlacement = "hide";			
		if (model.axes) {
			for (var j=0; j< model.axes.length; j++){
				model.axes[j].labelIntersectAction = "rotate45";
				if (model.axes[j].title)
					model.axes[j].title.text = "";
				model.axes[j].edgeLabelPlacement = "hide";
			}
		}
	}
}


</script>
</body>
<style>
.cols-sample-area{
width:80%;
}
</style>
</html>