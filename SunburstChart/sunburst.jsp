<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %>    
    <%@ page import="com.syncfusion.*" %>
    <%@ page import="datasource.SunburstData" %>
<body>
<div style="border: 0px solid white !important;background:transparent !important">
	<%
	SunburstData obj =new SunburstData();
	Object data = obj.getData();
	request.setAttribute("sdata", data);
	double ce = 0.2;
	%>
	<ej:sunburstChart id="container" dataSource='${sdata}' load="onsunburstload"  valueMemberPath="EmployeesCount">
		<ej:sunburstChart-levels>
			<ej:sunburstChart-level groupMemberPath="Country"></ej:sunburstChart-level>
			<ej:sunburstChart-level groupMemberPath="JobDescription"></ej:sunburstChart-level>
			<ej:sunburstChart-level groupMemberPath="JobGroup"></ej:sunburstChart-level>
			<ej:sunburstChart-level groupMemberPath="JobRole"></ej:sunburstChart-level>
		</ej:sunburstChart-levels>
		<ej:sunburstChart-dataLabelSettings visible="true">
			<ej:sunburstChart-dataLabelSettings-font color="black"></ej:sunburstChart-dataLabelSettings-font>
		</ej:sunburstChart-dataLabelSettings>
		<ej:sunburstChart-size height='600'></ej:sunburstChart-size>
		<ej:sunburstChart-title text="Employees Count"></ej:sunburstChart-title>
		<ej:sunburstChart-zoomSettings enable="false"></ej:sunburstChart-zoomSettings>
		<ej:sunburstChart-legend visible="true" position="top"></ej:sunburstChart-legend>
	</ej:sunburstChart>
	
</div>
<script>
function onsunburstload(sender){
	sender.model.innerRadius = 0.2;
	sender.model.tooltip.visible = true;
}
</script>
</body>