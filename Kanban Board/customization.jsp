<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %><%@ page import="com.syncfusion.*" %><%@ page session="false" import="java.util.ArrayList" %><%@ page session="false" import="java.util.Iterator" %><%@ page session="false" import="java.util.HashMap" %><%@ page session="false" import="org.json.simple.parser.JSONParser" %><%@ page import="datasource.GetJsonData" %>
<body>
	<div class="cols-sample-area"><%
GetJsonData obj=new GetJsonData();
    Object data = obj.GetKanbanJson();
    request.setAttribute("KanbanDataSource",data);
    JSONParser parser = new JSONParser();
    request.setAttribute("colorMap", parser.parse("{\"#ee4e75\": \"Bug,Story\",\"#57b94c\": \"Improvement\",\"#edba3c\": \"Epic\",\"#5187c6\": \"Others\"}"));
    %>
		<ej:kanban id="Kanban" keyField="Status" allowTitle="true" allowSelection="true" dataSource="${KanbanDataSource}">
			<ej:kanban-fields content="Summary" primaryKey="Id" imageUrl="ImgUrl" color="Type"></ej:kanban-fields>
			<ej:kanban-columns>
				<ej:kanban-column headerText="Backlog" key="Open"></ej:kanban-column>
				<ej:kanban-column headerText="In Progress" key="InProgress">
					<ej:kanban-columns-constraints max="2"></ej:kanban-columns-constraints>
				</ej:kanban-column>
				<ej:kanban-column headerText="Testing" key="Testing"></ej:kanban-column>
				<ej:kanban-column headerText="Done" key="Close"></ej:kanban-column>
			</ej:kanban-columns>
			<ej:kanban-cardSettings colorMapping="${colorMap}"></ej:kanban-cardSettings>
			<ej:kanban-tooltipSettings enable="true"></ej:kanban-tooltipSettings>
		</ej:kanban>
	</div>
</body>
<style>
.cols-sample-area{
	display:block !important
}
</style></html>