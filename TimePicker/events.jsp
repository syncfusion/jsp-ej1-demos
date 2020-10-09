
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<div class="cols-sample-area">
<div class="control">
	<ej:timePicker id="timepicker" width="50%"  create="onCreate" focusIn="onFocusIn" focusOut="onFocusOut" change="timeValChange" ></ej:timePicker>
</div>
</div>
<div id="Logger" class="box">
    <h4>Event Trace</h4>
    <div class="EventLog" id="EventLog"></div>
    <div>
    <ej:button id="clearBtn" click="clearLog" size="small" text="Clear"></ej:button>       
    </div>
</div>

<script>
function oncreate(args) {
    jQuery.addEventLog("TimePicker has been <span class='eventTitle'>created</span>.");
}
function timeValChange(args) {
    jQuery.addEventLog("TimePicker value has been <span class='eventTitle'>changed</span> to " + args.value + ".</br>");
}
function onFocusIn(args) {
    jQuery.addEventLog("TimePicker is in <span class='eventTitle'>Focus</span>");
}
function onFocusOut(args) {
    jQuery.addEventLog("TimePicker is out of <span class='eventTitle'>Focus</span>");
}
function clearLog() {
    jQuery.clearEventLog();
}
</script>

<style>
    .cols-sample-area
    {
        width: 300px;
        margin: 0 auto;
        float: none;
    }
</style>
<style>
.cols-sample-area {
	width: 75%;
}
.control{
margin-left: 35%;
}
</style>

