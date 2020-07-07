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

	<ej:grid id="FlatGrid" allowPaging="true">
	 <ej:dataManager url="//js.syncfusion.com/demos/ejServices/Wcf/Northwind.svc/Orders/" crossDomain="true"></ej:dataManager>
		<ej:grid-columns>
			<ej:grid-column field="OrderID" headerText="Order ID" width="40" textAlign="right"></ej:grid-column>
			<ej:grid-column field="CustomerID" headerText="Customer ID" width="50"></ej:grid-column>
			<ej:grid-column field="EmployeeID" headerText="Employee ID" width="40" textAlign="right"></ej:grid-column>
			<ej:grid-column field="Freight" headerText="Freight" width="40" format="{0:C}" textAlign="right"></ej:grid-column>
			<ej:grid-column field="ShipCountry" headerText="Ship Country" width="50"></ej:grid-column>
		</ej:grid-columns>

	</ej:grid>
</div>
