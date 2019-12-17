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
    %>

	<ej:grid id="FlatGrid" allowPaging="true" dataSource="${DataSource}" showSummary="true">
		<ej:grid-summaryRows>
			<ej:grid-summaryRow>
				<ej:grid-summaryRow-summaryColumns>
					<ej:grid-summaryRow-summaryColumn dataMember="Freight" displayColumn="Freight" format="{0:C}" summaryType="sum"></ej:grid-summaryRow-summaryColumn>
				</ej:grid-summaryRow-summaryColumns>
			</ej:grid-summaryRow>
		</ej:grid-summaryRows>
		<ej:grid-columns>
			<ej:grid-column field="OrderID" headerText="Order ID" width="75" textAlign="right"></ej:grid-column>
			<ej:grid-column field="CustomerID" headerText="Customer ID" width="80"></ej:grid-column>
			<ej:grid-column field="EmployeeID" headerText="Employee ID" width="75" textAlign="right"></ej:grid-column>
			<ej:grid-column field="Freight" headerText="Freight" width="75" format="{0:C}" textAlign="right"></ej:grid-column>
			<ej:grid-column field="ShipCountry" headerText="Ship Country" width="80"></ej:grid-column>
		</ej:grid-columns>

	</ej:grid>
</div>
