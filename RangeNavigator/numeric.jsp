<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %>    
    <%@ page import="com.syncfusion.*" %>

<%@ page session="false" import="java.util.ArrayList" %>
<%@ page session="false" import="java.util.Iterator" %> 
<body>
	<div class="content-container-fluid">
        <div class="row">
            <div  style="border: 0px solid white !important;background:transparent !important">
                <div class="scrollcontent" style="display:block;" align="center">
                	<ej:rangeNavigator id="scrollContent" enableDeferredUpdate="true" load="onrnload" valueType="numeric" rangeChanged="onchartloaded" padding="15" isResponsive="true" allowSnapping="true">
                		<ej:rangeNavigator-selectedRangeSettings start="100" end="250"></ej:rangeNavigator-selectedRangeSettings>
                		<ej:rangeNavigator-sizeSettings height="120"></ej:rangeNavigator-sizeSettings>
                		<ej:rangeNavigator-tooltipSettings visible="true" tooltipDisplayMode="ondemand"></ej:rangeNavigator-tooltipSettings>
                	</ej:rangeNavigator>
                </div>
                <br/>
                 <div class="container" style="display:block;" align="center">
                	<ej:chart id="container" isResponsive="true" load="onchartload">
                		<ej:chart-crosshair visible="true" type="trackball">
                		
                			<ej:chart-crosshair-line color="transparent"></ej:chart-crosshair-line>
                			<ej:chart-crosshair-marker>
                			<ej:chart-crosshair-marker-size height="9" width="9"></ej:chart-crosshair-marker-size>
                			<ej:chart-crosshair-marker-border width="1"></ej:chart-crosshair-marker-border>
                			</ej:chart-crosshair-marker>
                		
                		</ej:chart-crosshair>
                		<ej:chart-commonSeriesOptions type="line" enableAnimation="true">
                			
                			<ej:chart-commonSeriesOptions-tooltip format="#point.x#  : ej.format(#point.y#,n2)"></ej:chart-commonSeriesOptions-tooltip>
                			
                		</ej:chart-commonSeriesOptions>
                		
                		<ej:chart-primaryXAxis>
                			<ej:chart-primaryXAxis-majorGridLines visible="false"></ej:chart-primaryXAxis-majorGridLines>
                		</ej:chart-primaryXAxis>
                		<ej:chart-primaryYAxis tickLinesPosition="inside">
                			<ej:chart-primaryYAxis-range min="60" max="160" interval="20"></ej:chart-primaryYAxis-range>
                		</ej:chart-primaryYAxis>
                		
                		<ej:chart-seriesCollection>
                		
                			<ej:chart-series xName="XValue" yName="YValue" name="Product X"></ej:chart-series>
                			<ej:chart-series xName="XValue" yName="YValue" name="Product Y"></ej:chart-series>
                		</ej:chart-seriesCollection>
                	</ej:chart>
                </div>

            </div>
        </div>
   	</div>

</body>

<script>
var data = GetData();
function onrnload(sender){
	 sender.model.series = [{
         name:'Product A',
         type:'line',
         enableAnimation:false,
         dataSource : data.Open,
         xName:"XValue",
         yName:"YValue",
         border:{
             color:"transparent",
             width:"2"
         },
         opcity: 1
       }]
}

function onchartload(sender){
	sender.model.primaryXAxis.zoomFactor=0.4285714285714;
	sender.model.primaryXAxis.zoomPosition=0.285714285714;
	sender.model.series[0].dataSource = data.Open;
	sender.model.series[1].dataSource = data.Close;
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
function GetData(){
    var series1 = [];
           var series2 = [];
           var value = 100;
           var value1 = 120;
           for (var i = 0; i < 351; i++) {

               if (Math.random() > .5) {
                   value += Math.random();
                   value1 += Math.random();
               } else {
                   value -= Math.random();
                   value1 -= Math.random();
               }
               var point1 = { XValue: i, YValue: value };
               var point2 = { XValue: i, YValue: value1 };
               series1.push(point1);
               series2.push(point2);
           }

           var data = { Open: series1, Close: series2 };
           return data;
}


function onchartloaded(sender) {
	var chartobj = $("#container").data("ejChart");
    if (chartobj != null) {
        chartobj.model.primaryXAxis.zoomPosition = sender.zoomPosition;
        chartobj.model.primaryXAxis.zoomFactor = sender.zoomFactor;
        chartobj.redraw();
    }
}
</script>
<style>
.cols-sample-area{
width:80%;
}
</style>
</html>