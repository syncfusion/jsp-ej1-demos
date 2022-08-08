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
	String[] group = { "Rooms", "Owners" };
	ArrayList<HashMap<String, Object>> roomdata = new ArrayList<HashMap<String, Object>>();
	HashMap<String, Object> room1 = new HashMap<String, Object>();
	room1.put("text", "ROOM 1");
	room1.put("id", 1);
	room1.put("groupId", 1);
	room1.put("color", "#cb6bb2");
	roomdata.add(room1);
	HashMap<String, Object> room2 = new HashMap<String, Object>();
	room2.put("text", "ROOM 2");
	room2.put("id", 2);
	room2.put("groupId", 1);
	room2.put("color", "#56ca85");
	roomdata.add(room2);
	HashMap<String, Object> room3 = new HashMap<String, Object>();
	room3.put("text", "ROOM 3");
	room3.put("id", 3);
	room3.put("groupId", 1);
	room3.put("color", "#f8a398");
	roomdata.add(room3);

	ArrayList<HashMap<String, Object>> resourcedata = new ArrayList<HashMap<String, Object>>();

	HashMap<String, Object> owner1 = new HashMap<String, Object>();
	owner1.put("text", "Nancy");
	owner1.put("id", 1);
	owner1.put("groupId", 1);
	owner1.put("color", "#ffaa00");
	resourcedata.add(owner1);
	HashMap<String, Object> owner2 = new HashMap<String, Object>();
	owner2.put("text", "Steven");
	owner2.put("id", 3);
	owner2.put("groupId", 2);
	owner2.put("color", "#f8a398");
	resourcedata.add(owner2);
	HashMap<String, Object> owner3 = new HashMap<String, Object>();
	owner3.put("text", "Michael");
	owner3.put("id", 5);
	owner3.put("groupId", 1);
	owner3.put("color", "#51a0ed");
	resourcedata.add(owner3);
	HashMap<String, Object> owner4 = new HashMap<String, Object>();
	owner4.put("text", "Laura");
	owner4.put("id", 7);
	owner4.put("groupId", 2);
	owner4.put("color", "#ffaa00");
	resourcedata.add(owner4);
	HashMap<String, Object> owner5 = new HashMap<String, Object>();
	owner5.put("text", "Robert");
	owner5.put("id", 8);
	owner5.put("groupId", 1);
	owner5.put("color", "#f8a398");
	resourcedata.add(owner5);
	HashMap<String, Object> owner6 = new HashMap<String, Object>();
	owner6.put("text", "Janet");
	owner6.put("id", 4);
	owner6.put("groupId", 2);
	owner6.put("color", "#51a0ed");
	resourcedata.add(owner6);
	HashMap<String, Object> owner7 = new HashMap<String, Object>();
	owner7.put("text", "Milan");
	owner7.put("id", 13);
	owner7.put("groupId", 3);
	owner7.put("color", "#99ff99");
	resourcedata.add(owner7);
	HashMap<String, Object> owner8 = new HashMap<String, Object>();
	owner8.put("text", "Paul");
	owner8.put("id", 15);
	owner8.put("groupId", 3);
	owner8.put("color", "#cc99ff");
	resourcedata.add(owner8);
%>

<div class="cols-sample-area">
	<ej:schedule id="ResourcegroupSchedule" width="100%" height="525px"
		currentDate="<%=currentdate%>" currentView="workweek"
		orientation="horizontal" cellWidth="40px"
		showCurrentTimeIndicator="false"
		resourceHeaderTemplateId="#resTemplate">
		<ej:schedule-appointmentSettings dataSource="${scheduleData}" id="Id"
			subject="Subject" description="Description" startTime="StartTime"
			endTime="EndTime" allDay="AllDay" recurrence="Recurrence"
			recurrenceRule="RecurrenceRule" resourceFields="roomId,ownerId"></ej:schedule-appointmentSettings>
		<ej:schedule-resources>
			<ej:schedule-resource allowMultiple="false" field="roomId"
				name="Rooms" title="Room">
				<ej:schedule-resources-resourceSettings id="id" groupId="groupIf"
					color="color" text="text" dataSource="<%=roomdata%>"></ej:schedule-resources-resourceSettings>
			</ej:schedule-resource>
			<ej:schedule-resource allowMultiple="true" field="ownerId"
				name="Owners" title="Owner">
				<ej:schedule-resources-resourceSettings id="id" groupId="groupId"
					color="color" text="text" dataSource="<%=resourcedata%>"></ej:schedule-resources-resourceSettings>
			</ej:schedule-resource>
		</ej:schedule-resources>
		<ej:schedule-group resources="<%=group%>"></ej:schedule-group>
	</ej:schedule>

</div>
<script id="resTemplate" type="text/x-jsrender">
      <div style="height:100%">
            <div>
                {{if classname == 'e-parentnode'}}
                <div style="width:15px;height:15px;margin-right:5px;margin-top:0px;float:left;background:{{:color}};"></div>
                {{/if}}
                <div>{{:text}}</div>
            </div>
        </div>
</script>
<style>
.cols-sample-area {
	width: 90%;
}
</style>