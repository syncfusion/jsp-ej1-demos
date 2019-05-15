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
    String[] toolbarItems = new String[]{"add", "edit", "delete", "update", "cancel"};
    request.setAttribute("toolbarItems", toolbarItems);
    %>

	<ej:grid id="FlatGrid" allowPaging="true" dataSource="${DataSource}">
		<ej:grid-editSettings allowAdding="true" allowEditing="true" allowDeleting="true"></ej:grid-editSettings>
		<ej:grid-toolbarSettings showToolbar="true" toolbarItems="${toolbarItems}"></ej:grid-toolbarSettings>
		<ej:grid-contextMenuSettings enableContextMenu="true"></ej:grid-contextMenuSettings>
		<ej:grid-columns>
			<ej:grid-column field="OrderID" headerText="Order ID" isPrimaryKey="true" width="75" textAlign="right"></ej:grid-column>
			<ej:grid-column field="CustomerID" headerText="Customer ID" width="80"></ej:grid-column>
			<ej:grid-column field="EmployeeID" headerText="Employee ID" width="75" textAlign="right"></ej:grid-column>
			<ej:grid-column field="Freight" headerText="Freight" width="75" format="{0:C}" textAlign="right"></ej:grid-column>
			<ej:grid-column field="ShipCountry" headerText="Ship Country" width="80"></ej:grid-column>
		</ej:grid-columns>

	</ej:grid>
</div>
