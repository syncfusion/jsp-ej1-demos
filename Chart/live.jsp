<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %>    
    <%@ page import="com.syncfusion.*" %>

<%@ page session="false" import="java.util.ArrayList" %>
<%@ page session="false" import="java.util.Iterator" %>
<body>
<div style="border: 0px solid white !important;background:transparent !important">
    <ej:chart id="livechart" isResponsive="true" enableCanvasRendering="true" load="onchartload">
    	
    	<ej:chart-primaryYAxis>
			<ej:chart-primaryYAxis-range min="0" max="50" interval="10"></ej:chart-primaryYAxis-range>
		</ej:chart-primaryYAxis>
		<ej:chart-primaryXAxis>
			<ej:chart-primaryXAxis-majorGridLines visible="false"></ej:chart-primaryXAxis-majorGridLines>
		</ej:chart-primaryXAxis> 
		<ej:chart-legend visible="false"></ej:chart-legend>
		   
    	<ej:chart-seriesCollection>
			<ej:chart-series type="line" enableAnimation="false" fill="#E46455"></ej:chart-series>
			<ej:chart-series type="line" enableAnimation="false"></ej:chart-series>
		</ej:chart-seriesCollection>
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
	
	
	
	var chartobj = this;
    var num = 100, data = [], data1 = [];
    var i;
    var value = 10;
    var chartData=null;
    var chartData1 = null
    var value1 = 15;
    for (i = 0; i < num; i++) {
        if (Math.random() > .5) {
            if (value < 45)
                value += Math.random() * 2.0;
            else
                value -= 2.0;


            if (value1 < 40)
                value1 += Math.random() * 1.8;
            else
                value1 -= 2.0;
        }
        else {
            if (value > 5)
                value -= Math.random() * 2.0;
            else
                value += 2.0;

            if (value1 > 5)
                value1 -= Math.random() * 1.8;
            else
                value1 += 2.0;
        }
        data[i] = {
            x: i.toString(), y: value
        };
        data1[i] = {
            x: i.toString(), y: value1+10
        };
    }
    chartData = data;
    chartData1 = data1; 
    sender.model.series[0].points = chartData;
    sender.model.series[1].points = chartData1;
    
 
    var interval   = setInterval((count) => {
        
    var chartobj = jQuery("#livechart").data("ejChart");
    if (Math.random() > .5) {
            if (value < 45)
                value += Math.random() * 2.0;
            else
                value -= 2.0;


            if (value1 < 40)
                value1 += Math.random() * 1.8;
            else
                value1 -= 2.0;
        }
        else {
            if (value > 5)
                value -= Math.random() * 2.0;
            else
                value += 2.0;

            if (value1 > 5)
                value1 -= Math.random() * 1.8;
            else
                value1 += 2.0;
        }
        chartData.push({ x: i.toString(), y: value });
        chartData1.push({ x: i.toString(), y: value1+10 });
        i++;
        chartData.shift();
        chartData1.shift();
        if(chartobj && chartobj.model){
                 chartobj.model.series[0].points = chartData;
                 chartobj.model.series[1].points = chartData1;
                 chartobj.redraw();
         }
        else{
        	clearInterval(interval);
        }
       
  
  }, 50);
}




</script>
</body>
<style>
.cols-sample-area{
width:80%;
}
</style>
</html>