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
	String[] group = { "Owners" };
	ArrayList<HashMap<String, Object>> resourcedata = new ArrayList<HashMap<String, Object>>();

	HashMap<String, Object> res1 = new HashMap<String, Object>();
	res1.put("text", "Nancy");
	res1.put("id", 1);
	res1.put("color", "#f8a398");
	resourcedata.add(res1);
	HashMap<String, Object> res2 = new HashMap<String, Object>();
	res2.put("text", "Steven");
	res2.put("id", 3);
	res2.put("color", "#56ca85");
	resourcedata.add(res2);
	HashMap<String, Object> res3 = new HashMap<String, Object>();
	res3.put("text", "Michael");
	res3.put("id", 5);
	res3.put("color", "#51a0ed");
	resourcedata.add(res3);
%>

<div class="cols-sample-area">
	<ej:schedule id="MultipleresourceSchedule" width="100%" height="525px"
		currentDate="<%=currentdate%>" currentView="workweek">
		<ej:schedule-appointmentSettings dataSource="${scheduleData}" id="Id"
			subject="Subject" description="Description" startTime="StartTime"
			endTime="EndTime" allDay="AllDay" recurrence="Recurrence"
			recurrenceRule="RecurrenceRule" resourceFields="ownerId"></ej:schedule-appointmentSettings>
		<ej:schedule-resources>
			<ej:schedule-resource allowMultiple="true" field="ownerId"
				name="Owners" title="Owner">
				<ej:schedule-resources-resourceSettings id="id" color="color"
					text="text" dataSource="<%=resourcedata%>"></ej:schedule-resources-resourceSettings>
			</ej:schedule-resource>
		</ej:schedule-resources>
		<ej:schedule-group resources="<%=group%>"></ej:schedule-group>
	</ej:schedule>

</div>

<style>
.cols-sample-area {
	width: 90%;
}
</style>