<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %>    
    <%@ page import="com.syncfusion.*" %>

<%@ page session="false" import="java.util.ArrayList" %>
<%@ page session="false" import="java.util.Iterator" %> </head>
<body>
<div class="cols-sample-area" style="border: 0px solid white !important;background:transparent !important">
<ej:circularGauge id="pointer" backgroundColor="#e0e0e0" drawLabels="drawLabels" drawPointers="drawpointers" enableAnimation="false" readOnly="true" height="350" width="350" radius="40">

	<ej:circularGauge-scales>
	
		<ej:circularGauge-scale  showRanges="true" showTicks="false" showIndicators="true" startAngle="120" sweepAngle="300" radius="80" size="1"
                showScaleBar="false" minimum="0" maximum="100" majorIntervalValue="10" minorIntervalValue="10">
                
			<ej:circularGauge-scales-border width="1"></ej:circularGauge-scales-border>
			
			<ej:circularGauge-scale-customLabelsCollection>
				
				<ej:circularGauge-scale-customLabels value="SPORTS" color="#333333">
					<ej:circularGauge-scales-customLabels-font fontFamily="Segoe UI" fontStyle="Bold" size="16px"></ej:circularGauge-scales-customLabels-font>
					<ej:circularGauge-scales-customLabels-position x="175" y="160"></ej:circularGauge-scales-customLabels-position>
				</ej:circularGauge-scale-customLabels>
				<ej:circularGauge-scale-customLabels value="Fan Ratio" color="#333333">
					<ej:circularGauge-scales-customLabels-font fontFamily="Segoe UI" size="14px"></ej:circularGauge-scales-customLabels-font>
					<ej:circularGauge-scales-customLabels-position x="175" y="175"></ej:circularGauge-scales-customLabels-position>
				</ej:circularGauge-scale-customLabels>
				<ej:circularGauge-scale-customLabels value="(in million)" color="#333333">
					<ej:circularGauge-scales-customLabels-font fontFamily="Segoe UI" size="10px"></ej:circularGauge-scales-customLabels-font>
					<ej:circularGauge-scales-customLabels-position x="175" y="190"></ej:circularGauge-scales-customLabels-position>
				</ej:circularGauge-scale-customLabels>
				
			</ej:circularGauge-scale-customLabelsCollection>
			
			<ej:circularGauge-scale-labels>
			
				<ej:circularGauge-scale-label color="transparent"></ej:circularGauge-scale-label>
			
			</ej:circularGauge-scale-labels>
			
			<ej:circularGauge-scale-ranges>
				<ej:circularGauge-scale-range size= "20" distanceFromScale="-36" startValue="0" endValue="80" backgroundColor="#bc4b4b">
					<ej:circularGauge-scales-ranges-border color="#bc4b4b" width="2"></ej:circularGauge-scales-ranges-border>
				</ej:circularGauge-scale-range>	
				<ej:circularGauge-scale-range size= "20" distanceFromScale="-66" startValue="0" endValue="70" backgroundColor="#21a56f">
					<ej:circularGauge-scales-ranges-border color="#21a56f" width="2"></ej:circularGauge-scales-ranges-border>
				</ej:circularGauge-scale-range>	
				<ej:circularGauge-scale-range  size= "20" distanceFromScale="-95" startValue="0" endValue="90" backgroundColor="#2bafbc">
					<ej:circularGauge-scales-ranges-border color="#2bafbc" width="2"></ej:circularGauge-scales-ranges-border>
				</ej:circularGauge-scale-range>
			</ej:circularGauge-scale-ranges>
			
			
			<ej:circularGauge-scale-pointers>
				<ej:circularGauge-scale-pointer imageUrl="Content/images/gauge/golfball.png" type="marker" markerType="image" value="80" distanceFromScale="1" placement="far" width="18" length="18" backgroundColor="transparent">
					<ej:circularGauge-scales-pointers-border width="0" color="transparent"></ej:circularGauge-scales-pointers-border>
				</ej:circularGauge-scale-pointer>
				<ej:circularGauge-scale-pointer imageUrl= "Content/images/gauge/basketball.png" type="marker" markerType="image" value="70" distanceFromScale="30" placement="far" width="18" length="18" backgroundColor="transparent">
					<ej:circularGauge-scales-pointers-border width="0" color="transparent"></ej:circularGauge-scales-pointers-border>
				</ej:circularGauge-scale-pointer>
				<ej:circularGauge-scale-pointer imageUrl= "Content/images/gauge/football.png" type="marker" markerType="image" value="90" distanceFromScale="59" placement="far" width="18" length="18" backgroundColor="transparent">
					<ej:circularGauge-scales-pointers-border width="0" color="transparent"></ej:circularGauge-scales-pointers-border>
				</ej:circularGauge-scale-pointer>		
			
			</ej:circularGauge-scale-pointers>
			<ej:circularGauge-scale-indicators>
			<ej:circularGauge-scale-indicator height="10" width="10" type="text">
					
						<ej:circularGauge-scale-indicator-stateRanges>
							<ej:circularGauge-scale-indicator-stateRange   startValue="0" endValue="100" text="" textColor="#8c8c8c"></ej:circularGauge-scale-indicator-stateRange>
						</ej:circularGauge-scale-indicator-stateRanges>   
				</ej:circularGauge-scale-indicator>
				<ej:circularGauge-scale-indicator height="10" width="10" type="text">
						<ej:circularGauge-scale-indicator-stateRanges>
							<ej:circularGauge-scale-indicator-stateRange   startValue="0" endValue="100" text="" textColor="#8c8c8c"></ej:circularGauge-scale-indicator-stateRange>
						</ej:circularGauge-scale-indicator-stateRanges>   
				</ej:circularGauge-scale-indicator>
				<ej:circularGauge-scale-indicator height="10" width="10" type="text">
						<ej:circularGauge-scale-indicator-stateRanges>
							<ej:circularGauge-scale-indicator-stateRange   startValue="0" endValue="100" text="" textColor="#8c8c8c"></ej:circularGauge-scale-indicator-stateRange>
						</ej:circularGauge-scale-indicator-stateRanges>   
				</ej:circularGauge-scale-indicator>
			
			</ej:circularGauge-scale-indicators>
			
		</ej:circularGauge-scale>	
	
	</ej:circularGauge-scales>

</ej:circularGauge>
</div>

<script>

        function drawLabels(args) {
            if (args.pointerValue != 100 && args.pointerValue != 0)
                args.style.textValue = "";
        }
        function drawpointers(args) {
            var i = args.pointer.index;
            args.model.scales[0].indicators[i].stateRanges[0].text = args.pointer.pointerValue.toString();
            args.model.scales[0].indicators[i].position.x = args.position.startX + 8;
            args.model.scales[0].indicators[i].position.y = args.position.startY + 25;
        }

    </script>
</body>
</html>