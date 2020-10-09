<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %><%@ page session="false" import="org.json.simple.parser.JSONParser" %><%@ page import="com.syncfusion.*" %><%@ page session="false" import="java.util.ArrayList" %><%@ page session="false" import="java.util.Iterator" %><%@ page import="datasource.GetJsonData" %>
<body>
	<div class="cols-sample-area"><%
			GetJsonData obj=new GetJsonData();
    Object data = obj.GetKanbanJson();
    JSONParser parser = new JSONParser();
    request.setAttribute("KanbanDataSource",data);
	request.setAttribute("StringValidation",parser.parse("{\"required\": true,\"number\":true}"));
	request.setAttribute("GetNumericParam",parser.parse("{\"decimalPlaces\":2}"));
	request.setAttribute("Estimatevalidation",parser.parse("{\"range\": [0, 1000] }"));
	request.setAttribute("TextareaValdation",parser.parse("{\"required\": \"true\"}"));
    %>
		<ej:kanban id="Kanban" keyField="Status" allowTitle="true" allowSelection="true" dataSource="${KanbanDataSource}">
			<ej:kanban-fields content="Summary" primaryKey="Id" imageUrl="ImgUrl" priority="RankId"></ej:kanban-fields>
			<ej:kanban-columns>
				<ej:kanban-column headerText="Backlog" key="Open"></ej:kanban-column>
				<ej:kanban-column headerText="In Progress" key="InProgress"></ej:kanban-column>
				<ej:kanban-column headerText="Testing" key="Testing"></ej:kanban-column>
				<ej:kanban-column headerText="Done" key="Close"></ej:kanban-column>
			</ej:kanban-columns>
			<ej:kanban-contextMenuSettings enable="true" ></ej:kanban-contextMenuSettings>
			<ej:kanban-editSettings allowAdding="true" allowEditing="true">
				<ej:kanban-editSettings-editItems>
					<ej:kanban-editSettings-editItem field="Id" editType="stringedit" validationRules="${StringValidation}"></ej:kanban-editSettings-editItem>
					<ej:kanban-editSettings-editItem field="Status" editType="dropdownedit"></ej:kanban-editSettings-editItem>
					<ej:kanban-editSettings-editItem field="Assignee" editType="dropdownedit"></ej:kanban-editSettings-editItem>
					<ej:kanban-editSettings-editItem field="Estimate" editType="numericedit"  editParams="${GetNumericParam}" validationRules="${Estimatevalidation}"></ej:kanban-editSettings-editItem>
					<ej:kanban-editSettings-editItem field="Summary" editType="textarea" validationRules="${TextareaValdation}"></ej:kanban-editSettings-editItem>
				</ej:kanban-editSettings-editItems>
			</ej:kanban-editSettings>
		</ej:kanban>
	</div>
</body>
<style>
.cols-sample-area{
	display:block !important
}
</style></html>