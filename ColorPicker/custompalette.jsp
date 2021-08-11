
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<String> color=new ArrayList<String>();
color.add("ff33ff");
color.add("cc33ff");
color.add("eaeaea");
color.add("99ffff");
color.add("ccccff");
color.add("9999ff");
color.add("ffffcc");
color.add("cc33ff");
color.add("ff33ff");
color.add("eaeaea");
%>

<div class="cols-sample-area ">
<div class="control">
<ej:colorPicker id="color" value="#aeaeae" palette="custompalette" modelType="palette" showSwitcher="flase" custom="<%=color %>"></ej:colorPicker>
</div>
</div>

<style>
 .control{
margin-left: 20%;
}

.cols-sample-area {
		width: 95%;
}
</style>