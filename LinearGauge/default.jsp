<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %>    
    <%@ page import="com.syncfusion.*" %>

<%@ page session="false" import="java.util.ArrayList" %>
<%@ page session="false" import="java.util.Iterator" %> 

<body>
<div class="cols-sample-area" align="center" style="border: 0px solid white !important;background:transparent !important">


<ej:linearGauge id="container" readOnly="false" labelColor="#8c8c8c" isResponsive="true">

	<ej:linearGauge-scales>
	
		<ej:linearGauge-scale width="4" showRanges="true" length="310">
			<ej:linearGauge-scales-position x="52" y="50"></ej:linearGauge-scales-position>
			<ej:linearGauge-scale-markerPointers>
				<ej:linearGauge-scale-markerPointer value="50" length="10" width="10" distanceFromScale="8" backgroundColor="#4D4D4D">
					<ej:linearGauge-scales-markerPointers-border color="#4D4D4D"></ej:linearGauge-scales-markerPointers-border>
				</ej:linearGauge-scale-markerPointer>
			
			</ej:linearGauge-scale-markerPointers>
			
			<ej:linearGauge-scale-barPointers>
				<ej:linearGauge-scale-barPointer value="50" width="4" distanceFromScale="8" backgroundColor="#6FAAB0"
				></ej:linearGauge-scale-barPointer>
			</ej:linearGauge-scale-barPointers>
			
			<ej:linearGauge-scale-ranges>
			
				<ej:linearGauge-scale-range endValue="50" startValue="0" backgroundColor= "#F6B53F" startWidth= "4" endWidth= "4">
					<ej:linearGauge-scales-ranges-border color= "#F6B53F"></ej:linearGauge-scales-ranges-border>
				</ej:linearGauge-scale-range>
				<ej:linearGauge-scale-range endValue= "100" startValue= "50" backgroundColor= "#E94649" startWidth= "4" endWidth= "4">
					<ej:linearGauge-scales-ranges-border color= "#E94649"></ej:linearGauge-scales-ranges-border>
				</ej:linearGauge-scale-range>
			
			</ej:linearGauge-scale-ranges>
			
			
			<ej:linearGauge-scale-labels>
				<ej:linearGauge-scale-label>
					<ej:linearGauge-scales-labels-font size="11px" fontFamily="Segoe UI" fontStyle="bold"></ej:linearGauge-scales-labels-font>
				</ej:linearGauge-scale-label>
			</ej:linearGauge-scale-labels>
			
			<ej:linearGauge-scale-ticks>
				<ej:linearGauge-scale-tick type="majorinterval" width="1" color="#8c8c8c"></ej:linearGauge-scale-tick>
			</ej:linearGauge-scale-ticks>
		</ej:linearGauge-scale>
	
	</ej:linearGauge-scales>
</ej:linearGauge>


  
</div>
</body>
<style>
.cols-sample-area{
width:80%;
}
</style>
</html>