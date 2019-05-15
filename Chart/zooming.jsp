<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %>    
    <%@ page import="com.syncfusion.*" %>

<%@ page session="false" import="java.util.ArrayList" %>
<%@ page session="false" import="java.util.Iterator" %> 
<body>
<div style="border: 0px solid white !important;background:transparent !important">

    
    <ej:chart id="container" isResponsive="true" load="onchartload">
    	
    	<ej:chart-primaryXAxis labelFormat="yyyy">
			<ej:chart-primaryXAxis-range interval="4"></ej:chart-primaryXAxis-range>
		</ej:chart-primaryXAxis> 
		<ej:chart-legend visible="false"></ej:chart-legend>
		 <ej:chart-zooming enable="true" enableMouseWheel="true"></ej:chart-zooming>
    	<ej:chart-seriesCollection>
			<ej:chart-series name="Server"></ej:chart-series>
		</ej:chart-seriesCollection>
    	<ej:chart-commonSeriesOptions type="line" enableAnimation="true">
    	
    		<ej:chart-commonSeriesOptions-tooltip visible="false" format="#point.x# :  #point.y#"></ej:chart-commonSeriesOptions-tooltip>
    		
    	</ej:chart-commonSeriesOptions> 
    	<ej:chart-title text="Server CPU Load"></ej:chart-title>
	</ej:chart>


  
</div>

<script>

function onchartload(sender) {
	sender.model.primaryYAxis.labelFormat="{value}%";
	var data = GetData();
    sender.model.series[0].dataSource = data.Open;
    sender.model.series[0].xName = "XValue";
    sender.model.series[0].yName = "YValue";
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

function GetData() {
    var series1 = [];
    var value = 100;
    for (var i = 1; i < 250; i++) {
        if (Math.random() > .5) {
            value += Math.random();
        } else {
            value -= Math.random();
        }
        var point = { XValue: new Date(1970, i + 2, i), YValue: value };
        series1.push(point);
    }
    var data = { Open: series1 };
    return data;
}
</script>
</body>
<style>
.cols-sample-area{
width:80%;
}
</style>
</html>