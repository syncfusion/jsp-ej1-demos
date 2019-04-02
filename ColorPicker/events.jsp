
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<div class="control">
		<ej:colorPicker id="color" value="#eaefdc" select="onSelect"
			close="onClose" open="onOpen" change="onChange"></ej:colorPicker>
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
function clearLog() {
    jQuery.clearEventLog();
}
function onOpen(args) {
    jQuery.addEventLog("ColorPicker popup has been <span class='eventTitle'>Opened</span>. ");
}
function onClose(args) {
    jQuery.addEventLog("ColorPicker popup has been <span class='eventTitle'>Closed</span>.");
}
function onSelect(args) {
    jQuery.addEventLog("The value '" + args.value + "' has been <span class='eventTitle'>selected</span>.");
}
function onChange(args) {
    jQuery.addEventLog("The value has been <span class='eventTitle'>changed</span> to '" + args.value + "'.");
}

function onClear() {
    jQuery.clearEventLog();
}
</script>

<style>
 .control{
margin-left: 20%;
}

.cols-sample-area {
		width: 95%;
}
</style>

