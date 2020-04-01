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
	ArrayList<ChartDataSource> data2 = obj2.getData10();
    request.setAttribute("DataSource2",data2);
    %>
    
    <ej:chart id="container" isResponsive="true" load="onchartload">
    	
    	<ej:chart-primaryYAxis>
			<ej:chart-primaryYAxis-range min="0" max="160" interval="20"></ej:chart-primaryYAxis-range>
			<ej:chart-primaryYAxis-title text="Unit Sold"></ej:chart-primaryYAxis-title>
		</ej:chart-primaryYAxis>
		
		<ej:chart-primaryXAxis labelIntersectAction="hide">
			<ej:chart-primaryXAxis-title text="Month"></ej:chart-primaryXAxis-title>
		</ej:chart-primaryXAxis> 
		
    	<ej:chart-legend visible="true" shape="seriesType">
    		
    		<ej:chart-legend-itemStyle width="15" height="15"></ej:chart-legend-itemStyle>
    		    		
    	</ej:chart-legend>
	
    		<ej:chart-seriesCollection>
			<ej:chart-series name="Unit Sold" type="column" enableAnimation="true" fill="#69D2E7" dataSource="${DataSource2}" xName="Year" yName="XName">
				
				<ej:chart-series-tooltip visible="true" format="#point.x# <br/> Unit Sold :  #point.y# <br/>"></ej:chart-series-tooltip>
				 	
				
			
			</ej:chart-series>
			<ej:chart-series name="Total Transaction" type="line" enableAnimation="true" dataSource="${DataSource2}" xName="Year" yName="YName">
				
				<ej:chart-series-marker visible="true" shape="circle"></ej:chart-series-marker>
				<ej:chart-series-border width="2"></ej:chart-series-border>
				<ej:chart-series-tooltip visible="true" format="#point.x# <br/> Profit :  #point.y# <br/>"></ej:chart-series-tooltip>
				 			
			
			</ej:chart-series>
		</ej:chart-seriesCollection>
		
		<ej:chart-title text="Sales Report"></ej:chart-title>
    
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