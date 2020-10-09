<%@page import="java.security.acl.Owner"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page import="datasource.schedule.*"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
	ScheduleGetDataSource obj = new ScheduleGetDataSource();
	ArrayList<ScheduleDataSource> scheduledatas = obj.getData();
	request.setAttribute("scheduleData", scheduledatas);
	Date currentdate = new SimpleDateFormat("yyyy/MM/dd").parse("2017/6/5");
	ArrayList<HashMap<String, Object>> categorizelist = obj.getCategorize();
	ArrayList<HashMap<String, String>> appMenuItems = obj.getAppItems();
%>

<div class="cols-sample-area">
	<ej:schedule id="CategorizeSchedule" width="100%" height="525px"
		currentDate="<%=currentdate%>">
		<ej:schedule-appointmentSettings dataSource="${scheduleData}" id="Id"
			subject="Subject" description="Description" startTime="StartTime"
			endTime="EndTime" allDay="AllDay" recurrence="Recurrence"
			recurrenceRule="RecurrenceRule" categorize="Categorize"></ej:schedule-appointmentSettings>
		<ej:schedule-categorizeSettings enable="true"
			dataSource="<%=categorizelist%>" allowMultiple="true" id="id"
			text="text" color="color" fontColor="fontColor"></ej:schedule-categorizeSettings>
		<ej:schedule-contextMenuSettings enable="true">
			<ej:schedule-contextMenuSettings-menuItems
				appointment="<%=appMenuItems%>"></ej:schedule-contextMenuSettings-menuItems>
		</ej:schedule-contextMenuSettings>
	</ej:schedule>
</div>

<style>
.cols-sample-area {
	width: 90%;
}
</style>