<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="datasource.GetJsonData"%>

<div class="cols-sample-area">
	<%
	GetJsonData obj =new GetJsonData();
    Object data = obj.getGridData();
    request.setAttribute("DataSource", data);
    %>

	<ej:grid id="FlatGrid" allowPaging="true" allowScrolling="true" dataSource="${DataSource}">
		<ej:grid-scrollSettings width="80" height="30"></ej:grid-scrollSettings>
		<ej:grid-columns>
			<ej:grid-column field="OrderID" headerText="Order ID" width="175" textAlign="right"></ej:grid-column>
			<ej:grid-column field="CustomerID" headerText="Customer ID" width="180"></ej:grid-column>
			<ej:grid-column field="EmployeeID" headerText="Employee ID" width="175" textAlign="right"></ej:grid-column>
			<ej:grid-column field="Freight" headerText="Freight" width="175" format="{0:C}" textAlign="right"></ej:grid-column>
			<ej:grid-column field="ShipCountry" headerText="Ship Country" width="180"></ej:grid-column>
		</ej:grid-columns>

	</ej:grid>
</div>
