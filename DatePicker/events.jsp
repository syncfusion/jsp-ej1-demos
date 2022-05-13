
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
<div class="control">
	<ej:datePicker id="datepicker" create="onCreate" select="onSelect" open="onOpen" close="onClose" width="50%"></ej:datePicker>
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
    function onCreate(args){ 
        jQuery.addEventLog("DatePicker has been <span class='eventTitle'>created.</span>");
    }
    function onSelect(args) {
        jQuery.addEventLog(args.value + " was <span class='eventTitle'>selected.</span>");
    }
    function onOpen(args) {
        jQuery.addEventLog("DatePicker popup has been <span class='eventTitle'>opened.</span>");
    }
    function onClose(args) {
        jQuery.addEventLog("DatePicker popup has been <span class='eventTitle'>closed.</span>");
    }
    function clearLog() {
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


