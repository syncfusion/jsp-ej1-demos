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
	ArrayList<ChartDataSource> data2 = obj2.getData3();
    request.setAttribute("DataSource2",data2);
    %>
    
    <ej:chart id="container" isResponsive="true" load="onchartload">
    	
    	<ej:chart-primaryYAxis>
			<ej:chart-primaryYAxis-range min="3" max="12" interval="1"></ej:chart-primaryYAxis-range>
			<ej:chart-primaryYAxis-title text="Year"></ej:chart-primaryYAxis-title>
		</ej:chart-primaryYAxis>
		
		<ej:chart-primaryXAxis labelIntersectAction="hide">
			<ej:chart-primaryXAxis-range min="2005" max="2012" interval="1"></ej:chart-primaryXAxis-range>
			<ej:chart-primaryXAxis-title text="Percentage"></ej:chart-primaryXAxis-title>
		</ej:chart-primaryXAxis>
		<ej:chart-legend visible="false"></ej:chart-legend>
		   
    	<ej:chart-seriesCollection>
			<ej:chart-series name="Gold" dataSource="${DataSource2}" xName="Year" yName="YName"></ej:chart-series>
			<ej:chart-series name="Silver" dataSource="${DataSource2}" xName="Year" yName="YName1"></ej:chart-series>
		</ej:chart-seriesCollection>
    	<ej:chart-commonSeriesOptions type="bar" enableAnimation="true">
    		
    		<ej:chart-commonSeriesOptions-tooltip visible="false"></ej:chart-commonSeriesOptions-tooltip>
    		<ej:chart-commonSeriesOptions-marker>
    			<ej:chart-commonSeriesOptions-marker-dataLabel visible="true"></ej:chart-commonSeriesOptions-marker-dataLabel>
    		</ej:chart-commonSeriesOptions-marker>
    	 	
    	</ej:chart-commonSeriesOptions> 
    	<ej:chart-title text="Unemployment rate (%)"></ej:chart-title>
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