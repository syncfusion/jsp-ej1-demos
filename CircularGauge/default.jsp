<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
</head>
<body>
	<div class="cols-sample-area"
		style="border: 0px solid white !important;background:transparent !important">
		<ej:circularGauge id="circulargauge" readOnly="false" backgroundColor="transparent"
			value="80" minimum="0" maximum="120">
			
			<ej:circularGauge-scales>
				<ej:circularGauge-scale  showRanges="true"  maximum="120" majorIntervalValue="20" minorIntervalValue="10" startAngle="122" sweepAngle="296" radius="130" showScaleBar="true" size="1">
					<ej:circularGauge-scale-pointers>
						<ej:circularGauge-scale-pointer showBackNeedle="true"
							backNeedleLength="20" length="95" width="7" value="80"></ej:circularGauge-scale-pointer>
					</ej:circularGauge-scale-pointers>
					<ej:circularGauge-scales-pointerCap radius="12"></ej:circularGauge-scales-pointerCap>
					<ej:circularGauge-scale-labels>
						<ej:circularGauge-scale-label color="#8c8c8c"></ej:circularGauge-scale-label>
					</ej:circularGauge-scale-labels>
					<ej:circularGauge-scale-ticks>
						<ej:circularGauge-scale-tick type="major" distanceFromScale="2"
							height="16" width="1" color="#8c8c8c"></ej:circularGauge-scale-tick>
						<ej:circularGauge-scale-tick type="minor" distanceFromScale="2"
							height="8" width="1" color="#8c8c8c"></ej:circularGauge-scale-tick>
					</ej:circularGauge-scale-ticks>
					<ej:circularGauge-scale-ranges>
						<ej:circularGauge-scale-range distanceFromScale="-30"
							startValue="0" endValue="70"></ej:circularGauge-scale-range>
						<ej:circularGauge-scale-range distanceFromScale="-30"
							startValue="70" endValue="110" backgroundColor="#fc0606">
							<ej:circularGauge-scales-ranges-border color="#fc0606"></ej:circularGauge-scales-ranges-border>
						</ej:circularGauge-scale-range>
						<ej:circularGauge-scale-range distanceFromScale="-30"
							startValue="110" endValue="120" backgroundColor="#f5b43f">
							<ej:circularGauge-scales-ranges-border color="#f5b43f"></ej:circularGauge-scales-ranges-border>
						</ej:circularGauge-scale-range>
					</ej:circularGauge-scale-ranges>
				</ej:circularGauge-scale>
		
			</ej:circularGauge-scales>
		</ej:circularGauge>
	</div>
</body>
</html>