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
	ArrayList<ChartDataSource> data2 = obj2.getData2();
    request.setAttribute("DataSource2",data2);
    %>
    
    <ej:chart id="container" isResponsive="true" load="onchartload">
    	
    	
    	
    	
    	<ej:chart-primaryYAxis>
			<ej:chart-primaryYAxis-range min="0" max="80" interval="20"></ej:chart-primaryYAxis-range>
		</ej:chart-primaryYAxis>
		<ej:chart-primaryXAxis>
			<ej:chart-primaryXAxis-axisLine visible="true"></ej:chart-primaryXAxis-axisLine>
		</ej:chart-primaryXAxis> 
		<ej:chart-legend position="top"></ej:chart-legend>
		   
    	<ej:chart-seriesCollection>
			<ej:chart-series name="Gold" dataSource="${DataSource2}" xName="Year" yName="YName"></ej:chart-series>
			<ej:chart-series name="Silver" dataSource="${DataSource2}" xName="Year" yName="YName1"></ej:chart-series>
			<ej:chart-series name="Bronze" dataSource="${DataSource2}" xName="Year" yName="YName2"></ej:chart-series>
  		</ej:chart-seriesCollection>
    	<ej:chart-commonSeriesOptions type="column" enableAnimation="true">
    	
    		<ej:chart-commonSeriesOptions-tooltip visible="true" format="#point.x# :  #point.y#"></ej:chart-commonSeriesOptions-tooltip>
    	 
    	</ej:chart-commonSeriesOptions> 
    	<ej:chart-title text="Olympic Medals"></ej:chart-title>
	</ej:chart>


  
</div>

<script>

function onchartload(sender) {
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