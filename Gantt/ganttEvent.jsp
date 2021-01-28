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
    %>
	<ej:gantt id="ganttevents" dataSource="${DataSource}"
		taskIdMapping="taskID" taskNameMapping="taskName"
		scheduleStartDate="02/01/2017" scheduleEndDate="03/16/2017"
		startDateMapping="startDate" endDateMapping="endDate"
		childMapping="subtasks" progressMapping="progress"
		allowGanttChartEditing="true" load="load" actionBegin="actionBegin"
		actionComplete="actionComplete" queryCellInfo="queryCellInfo"
		beginEdit="beginEdit" endEdit="endEdit" rowDataBound="rowDataBound"
		rowSelecting="rowSelecting" rowSelected="rowSelected"
		taskbarEditing="taskbarEditing" taskbarEdited="taskbarEdited"
		queryTaskbarInfo="queryTaskbarInfo" expanding="expanding"
		expanded="expanded" collapsing="collapsing" collapsed="collapsed"
		toolbarClick="toolbarclick"  treeColumnIndex="1" rowHeight="48">
		<ej:gantt-editSettings allowAdding="true" allowDeleting="true"
			allowEditing="true"></ej:gantt-editSettings>
	</ej:gantt>
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
	  this.getColumns()[0].width = 60;		  
  jQuery.addEventLog("Gantt <span class='eventTitle'>load</span> event called");
}		
function create(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>create</span> event called");
}
function actionBegin(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>actionBegin</span> event called");
}
function actionComplete(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>actionComplete</span> event called");
}
function beginEdit(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>beginEdit</span> event called");
}		
function endEdit(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>endEdit</span> event called");
}
function queryCellInfo(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>queryCellInfo</span> event called");
}
function rowDataBound(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>rowDataBound</span> event called");
}
function rowSelecting(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>rowSelecting</span> event called");
}
function rowSelected(args) {
   jQuery.addEventLog("Gantt <span class='eventTitle'>rowSelected</span> event called");
}
function expanding(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>expanding</span> event called");
}  		
function expanded(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>expanded</span> event called");
}  		
function collapsing(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>collapsing</span> event called");
} 		
function collapsed(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>collapsed</span> event called");
}  		
function taskbarEditing(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>taskbarEditing</span> event called");
}  		
function queryTaskbarInfo(args) {
   jQuery.addEventLog("Gantt <span class='eventTitle'>queryTaskBarInfo</span> event called");
} 		
function taskbarEdited (args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>taskbarEdited </span> event called");
}
function toolbarclick(args) {
    jQuery.addEventLog("Gantt <span class='eventTitle'>toolbarClick </span> event called");
}
function onClear() {
    $("#EventLog").html("");
}
</script>
</html>