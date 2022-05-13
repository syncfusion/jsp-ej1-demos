<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %><%@ page import="com.syncfusion.*" %><%@ page session="false" import="java.util.ArrayList" %><%@ page session="false" import="java.util.Iterator" %><%@ page import="datasource.GetJsonData" %>
<body>
	<div class="cols-sample-area"><%
GetJsonData obj=new GetJsonData();
    Object data = obj.GetKanbanJson();
    request.setAttribute("KanbanDataSource",data);
    %>
		<ej:kanban id="Kanban" keyField="Status" allowTitle="true" allowSelection="true" dataSource="${KanbanDataSource}">
			<ej:kanban-fields content="Summary" primaryKey="Id" imageUrl="ImgUrl"></ej:kanban-fields>
			<ej:kanban-columns>
				<ej:kanban-column headerText="Backlog" key="Open"></ej:kanban-column>
				<ej:kanban-column headerText="In Progress" key="InProgress"></ej:kanban-column>
				<ej:kanban-column headerText="Testing" key="Testing"></ej:kanban-column>
			</ej:kanban-columns>
			<ej:kanban-cardSettings template="#cardtemplate"></ej:kanban-cardSettings>
		</ej:kanban>
	</div>
</body>
<style>
.cols-sample-area{
	display:block !important
}

.e-templatetable {
            width: 100%;
        }
        .details >table {
            margin-left:2px;            
			border-collapse: separate;
            border-spacing: 2px;
            width: 100%;
        }
	    .details td {
	        vertical-align: top;
	    }
        .details {
            padding: 8px 8px 10px 0;
        }
        .photo {
            padding: 8px 6px 10px 6px;
            text-align: center;
        }
        .CardHeader {
            font-weight: bolder;
            padding-right: 10px;
        }
</style>
<script id="cardtemplate" type="text/x-jsrender">
	<table class="e-templatetable">
		<colgroup>
			<col width="10%">
				<col width="90%">
				</colgroup>
				<tbody>
					<tr>
						<td class="photo">
							<img src="Content/images/kanban/{{:Priority}}.png">
							</td>
							<td class="details">
								<table>
									<colgroup>
										<col width="10%">
											<col width="90%">
											</colgroup>
											<tbody>
												<tr>
													<td class="CardHeader">   Assignee: </td>
													<td>{{:Assignee}}</td>
												</tr>
												<tr>
													<td class="CardHeader">   Summary: </td>
													<td>{{:Summary}}</td>
												</tr>
												<tr>
													<td class="CardHeader">   Type: </td>
													<td>{{:Type}}</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</script>
				</html>