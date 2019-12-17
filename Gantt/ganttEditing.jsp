<%@page import="com.syncfusion.gantt.ToolbarSettings"%>
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
    
    String[] toolbar = new String[]{"add","edit","delete","update","cancel","indent","outdent","expandAll","collapseAll"};
    request.setAttribute("toolbarData",toolbar);
    %>

	<ej:gantt id="ganttediting" dataSource="${DataSource}"
		taskIdMapping="taskID" taskNameMapping="taskName"
		scheduleStartDate="02/01/2017" scheduleEndDate="03/16/2017"
		startDateMapping="startDate" endDateMapping="endDate"
		childMapping="subtasks" progressMapping="progress" 
		predecessorMapping="predecessor" allowGanttChartEditing="true"  
		treeColumnIndex="1" rowHeight="48" load="load">
		<ej:gantt-editSettings allowAdding="true" allowDeleting="true"
			allowEditing="true" allowIndent="true" editMode="cellEditing"></ej:gantt-editSettings>
		<ej:gantt-toolbarSettings showToolbar="true"
			toolbarItems="${toolbarData}"></ej:gantt-toolbarSettings>
	</ej:gantt>
</div>

<div id="property-window" class="box wide">
	<div>Edit Mode</div>
	<br />
	<div>
		<ej:dropDownList id="mode" targetID="editMode" change="onModeChange"
		value="Cell Editing" text="Cell Editing" width="118px"></ej:dropDownList>
		<div id="editMode">
			<ul>
				<li>Cell Editing</li>
				<li>Normal</li>
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
function load(args){		  
  this.getColumns()[0].width = 60;
}	
function onActionChange(args) {
    var ganttObject = $("#ganttediting").data("ejGantt");
    var value = args.text == "Double Click" ? ej.Gantt.BeginEditAction.DblClick : ej.Gantt.BeginEditAction.Click;
    var setting = {
        beginEditAction: value
    }
    ganttObject.option("editSettings", setting);
    ganttObject.reRenderChart(ej.Gantt.ScheduleHeaderType.Week);
}
function onModeChange(args) {
    var ganttObject = $("#ganttediting").data("ejGantt");
    var value = args.text == "Cell Editing" ? "cellEditing" : "normal";
    var setting = {
        editMode: value
    }
    ganttObject.option("editSettings", setting);
    ganttObject.reRenderChart(ej.Gantt.ScheduleHeaderType.Week);
}  
</script>
