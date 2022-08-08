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
    request.setAttribute("DataSource", data);;
    %>

	<ej:treeGrid id="treeevents" dataSource="${DataSource}" load="load"
		childMapping="subtasks" actionBegin="actionBegin"
		actionComplete="actionComplete" queryCellInfo="queryCellInfo"
		beginEdit="beginEdit" endEdit="endEdit" rowDataBound="rowDataBound"
		rowSelecting="rowSelecting" rowSelected="rowSelected"
		expanding="expanding" expanded="expanded" collapsing="collapsing"
		collapsed="collapsed" treeColumnIndex="1" rowHeight="48">
	    <ej:treeGrid-columns>
		<ej:treeGrid-column field="taskID" headerText="Task Id" editType="numericedit"></ej:treeGrid-column>
		<ej:treeGrid-column field="taskName" headerText="Task Name" editType="stringedit"></ej:treeGrid-column>
		<ej:treeGrid-column field="startDate" headerText="Start Date" editType="datepicker"></ej:treeGrid-column>
		<ej:treeGrid-column field="endDate" headerText="End Date" editType="datepicker"></ej:treeGrid-column>
		<ej:treeGrid-column field="progress" headerText="Progress" editType="numericedit"></ej:treeGrid-column>
		</ej:treeGrid-columns>
		
		<ej:treeGrid-editSettings allowAdding="true" allowDeleting="true"
			allowEditing="true" editMode="rowEditing"></ej:treeGrid-editSettings>
	</ej:treeGrid>
</div>
<div id="Logger" class="box">
	<h4>Event Trace</h4>
	<div class="EventLog" id="EventLog"></div>
	<ej:button id="clrevttxt" size="small" text="Clear"
		showRoundedCorner="true" click="onClear"></ej:button>
</div>
</body>
<style>
.cols-sample-area {
	width: 80%;
}
</style>
<script type="text/javascript"> 

function load(args){
	jQuery.addEventLog("Gantt <span class='eventTitle'>load</span> event called");
}		
function actionBegin(args) {
    jQuery.addEventLog("Treegrid <span class='eventTitle'>actionBegin</span> event called");
}
function actionComplete(args) {
    jQuery.addEventLog("Treegrid <span class='eventTitle'>actionComplete</span> event called");
}
function beginEdit(args) {
    jQuery.addEventLog("Treegrid <span class='eventTitle'>beginEdit</span> event called");
}
function endEdit(args) {
    jQuery.addEventLog("Treegrid <span class='eventTitle'>endEdit</span> event called");
}
function queryCellInfo(args) {
    jQuery.addEventLog("Treegrid <span class='eventTitle'>queryCellInfo</span> event called");
}
function rowDataBound(args) {
    jQuery.addEventLog("Treegrid <span class='eventTitle'>rowDataBound</span> event called");
}
function rowSelecting(args) {
    jQuery.addEventLog("Treegrid <span class='eventTitle'>rowSelecting</span> event called");
}
function rowSelected(args) {
    jQuery.addEventLog("Treegrid <span class='eventTitle'>rowSelected</span> event called");
}
function expanding(args) {
    jQuery.addEventLog("Treegrid <span class='eventTitle'>expanding</span> event called");
}
function expanded(args) {
    jQuery.addEventLog("Treegrid <span class='eventTitle'>expanded</span> event called");
}
function collapsing(args) {
    jQuery.addEventLog("Treegrid <span class='eventTitle'>collapsing</span> event called");
}
function collapsed(args) {
    jQuery.addEventLog("Treegrid <span class='eventTitle'>collapsed</span> event called");
}

function onClear() {
    $("#EventLog").html("");
}
</script>
</html>