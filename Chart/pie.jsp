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
	ArrayList<ChartDataSource> data2 = obj2.getData5();
    request.setAttribute("DataSource2",data2);
    %>
    
    <ej:chart id="container" isResponsive="true" load="onchartload">
    	
    	<ej:chart-seriesCollection>
			<ej:chart-series name="Expenses" dataSource="${DataSource2}" xName="Year" yName="XName">
			
				<ej:chart-series-marker>
    			<ej:chart-series-marker-dataLabel visible="true" shape="none">
    				<ej:chart-series-marker-dataLabel-connectorLine type="bezier">
    				</ej:chart-series-marker-dataLabel-connectorLine>
    				<ej:chart-series-marker-dataLabel-font size="20px">
    				</ej:chart-series-marker-dataLabel-font>
    			</ej:chart-series-marker-dataLabel>
    		</ej:chart-series-marker>
			
			</ej:chart-series>
		</ej:chart-seriesCollection>
    	<ej:chart-commonSeriesOptions type="pie" labelPosition="inside" enableSmartLabels="true"  enableAnimation="true">
    		<ej:chart-commonSeriesOptions-border color="white" width="2"></ej:chart-commonSeriesOptions-border>
    		
    	</ej:chart-commonSeriesOptions> 
    	<ej:chart-legend visible="false"></ej:chart-legend>
    	<ej:chart-title text="Expenditures"></ej:chart-title>
	</ej:chart>


  
</div>

<script>

function onchartload(sender) {
	sender.model.series[0].marker.dataLabel.textMappingName = "Text";
	sender.model.series[0].marker.dataLabel.font.color="white";
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