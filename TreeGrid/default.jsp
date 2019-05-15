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
    Object data = obj.getGanttData();
    request.setAttribute("DataSource", data);
    
    String[] toolbar = new String[]{"add","edit","delete","update","cancel","expandAll","collapseAll"};
    request.setAttribute("toolbarData",toolbar);
    %>

	<ej:treeGrid id="treeediting" dataSource="${DataSource}"
		childMapping="subtasks"  treeColumnIndex="1" rowHeight="48">
		<ej:treeGrid-columns>
		<ej:treeGrid-column field="taskID" headerText="Task Id" editType="numericedit"></ej:treeGrid-column>
		<ej:treeGrid-column field="taskName" headerText="Task Name" editType="stringedit"></ej:treeGrid-column>
		<ej:treeGrid-column field="startDate" headerText="Start Date" editType="datepicker"></ej:treeGrid-column>
		<ej:treeGrid-column field="endDate" headerText="End Date" editType="datepicker"></ej:treeGrid-column>
		<ej:treeGrid-column field="progress" headerText="Progress" editType="numericedit"></ej:treeGrid-column>
		</ej:treeGrid-columns>
		<ej:treeGrid-editSettings allowAdding="true" allowDeleting="true"
			allowEditing="true" editMode="rowEditing"></ej:treeGrid-editSettings>
		<ej:treeGrid-toolbarSettings showToolbar="true"
			toolbarItems="${toolbarData}"></ej:treeGrid-toolbarSettings>
	</ej:treeGrid>

</div>
<div id="property-window" class="box wide">
	<div>Edit Mode</div>
	<br />
	<div>
		<ej:dropDownList id="mode" targetID="editMode" change="onModeChange"
		value="Row Editing" text="Row Editing" width="118px"></ej:dropDownList>
		<div id="editMode">
			<ul>
				<li>Cell Editing</li>
				<li>Row Editing</li>
			</ul>
		</div>
	</div>
	<br />

	<div>Begin Edit Action</div>
	<br />
	<div>
<ej:dropDownList id="action" targetID="editAction"
		change="onActionChange" value="Double Click" text="Double Click"
		width="118px"></ej:dropDownList>
		<div id="editAction">
			<ul>
				<li>Double Click</li>
				<li>Click</li>
			</ul>
		</div>
	</div>


</div>
<style>
.cols-sample-area {
	width: 80%;
}
</style>
<script type="text/javascript">
function onActionChange(args) {
    var treeObject = $("#treeediting").data("ejTreeGrid");
    var value = args.text == "Double Click" ? ej.TreeGrid.BeginEditAction.DblClick : ej.TreeGrid.BeginEditAction.Click;
    var setting = {
        beginEditAction: value
    }
    treeObject.option("editSettings", setting);
}
function onModeChange(args) {
    var treeObject = $("#treeediting").data("ejTreeGrid");
    var value = args.text == "Cell Editing" ? ej.TreeGrid.EditMode.CellEditing : ej.TreeGrid.EditMode.RowEditing;
    var setting = {
        editMode: value
    }
    treeObject.option("editSettings", setting);
}
</script>
