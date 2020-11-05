<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page import="datasource.schedule.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	ScheduleGetDataSource obj = new ScheduleGetDataSource();
	ArrayList<ScheduleDataSource> scheduledatas = obj.getTemplateData();
	request.setAttribute("scheduleData", scheduledatas);
	Date currentdate = new SimpleDateFormat("yyyy/MM/dd").parse("2017/6/5");
%>

<div class="cols-sample-area">
	<ej:schedule id="TemplateSchedule" width="100%" height="525px"
		currentDate="<%=currentdate%>" currentView="month"
		appointmentTemplateId="#apptemplate">
		<ej:schedule-appointmentSettings dataSource="${scheduleData}" id="Id"
			subject="Subject" description="Description" startTime="StartTime"
			endTime="EndTime" allDay="AllDay" recurrence="Recurrence"
			recurrenceRule="RecurrenceRule">
		</ej:schedule-appointmentSettings>
	</ej:schedule>
</div>
<script id="apptemplate" type="text/x-jsrender">
        <div style="height:100%;padding-top:5px;">
            <div style='float:left; width:auto;'>{{:~format(StartTime)}}</div>
            <div>
                <div>{{:Subject}}</div>
            </div>
        </div>
</script>

<script type="text/javascript">
	function _getImages(date) {
		switch (new Date(date).getDay()) {
		case 0:
			return "<img src='Content/images/schedule/cake.png'/>";
		case 1:
			return "<img src='Content/images/schedule/basketball.png'/>";
		case 2:
			return "<img src='Content/images/schedule/rugby.png'/>";
		case 3:
			return "<img src='Content/images/schedule/guitar.png'/>";
		case 4:
			return "<img src='Content/images/schedule/music.png'/>";
		case 5:
			return "<img src='Content/images/schedule/doctor.png'/>";
		case 6:
			return "<img src='Content/images/schedule/beach.png'/>";
		default:
			return null;
		}
	}
	$.views.helpers({
		format : _getImages
	});
</script>
<style>
.cols-sample-area {
	width: 90%;
}

.e-monthappointment img {
	width: 30px;
}

.e-agendaappointment img {
	background-color: #3277b2;
}
</style>