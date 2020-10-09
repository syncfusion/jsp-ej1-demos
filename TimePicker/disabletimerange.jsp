
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.ArrayList"%>
<%
	ArrayList<HashMap<String, Object>> data = new ArrayList<HashMap<String, Object>>();
	HashMap<String, Object> time = new HashMap<String, Object>();
	time.put("startTime", "3:00 AM");
	time.put("endTime", "6:00 AM");
	data.add(time);
%>


<div class="cols-sample-area">
<div class="control">
	<ej:timePicker id="time" width="50%" disableTimeRanges="<%=data%>"></ej:timePicker>
</div>
</div>
<style>
.cols-sample-area {
	width: 75%;
}
.control{
margin-left: 35%;
}
</style>
