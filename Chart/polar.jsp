<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %>    
    <%@ page import="com.syncfusion.*" %>

<%@ page session="false" import="java.util.ArrayList" %>
<%@ page session="false" import="java.util.Iterator" %> 
<%@ page import="datasource.ChartDataSource" %> 
<%@ page import="datasource.GetChartDataSource" %>
<body>
<div  style="border: 0px solid white !important;background:transparent !important">
<%
GetChartDataSource obj2 = new GetChartDataSource();
	ArrayList<ChartDataSource> data2 = obj2.getData7();
    request.setAttribute("DataSource2",data2);
    %>
    
    <ej:chart id="container" isResponsive="true" load="onchartload">
    
    	<ej:chart-primaryYAxis>
			<ej:chart-primaryYAxis-range min="15" max="90" interval="15"></ej:chart-primaryYAxis-range>
		</ej:chart-primaryYAxis>    
		
		<ej:chart-seriesCollection>
			<ej:chart-series name="Line"   dataSource="${DataSource2}" xName="Year" yName="XName">
					<ej:chart-series-marker visible="true"></ej:chart-series-marker>
				 
			</ej:chart-series>
			<ej:chart-series name="Column" dataSource="${DataSource2}" xName="Year" yName="YName"></ej:chart-series>
			<ej:chart-series name="Area"  dataSource="${DataSource2}" xName="Year" yName="YName1">
				<ej:chart-series-marker visible="true"></ej:chart-series-marker>
			
			</ej:chart-series>
		</ej:chart-seriesCollection>
    	<ej:chart-commonSeriesOptions type="polar" enableAnimation="true">
    		
    		<ej:chart-commonSeriesOptions-tooltip visible="true"></ej:chart-commonSeriesOptions-tooltip>
    		
    	</ej:chart-commonSeriesOptions> 
	</ej:chart>


  
</div>

</body>

<script>

function onchartload(sender) {
	
	sender.model.series[0].zOrder=2;
	sender.model.series[1].zOrder=1;
	sender.model.series[1].drawType="column";
	sender.model.series[2].zOrder=0;
	sender.model.series[2].drawType="area";
	
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
<style>
.cols-sample-area{
width:80%;
}
</style>
</html>