<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>

<div class="cols-sample-area">
	<%
		request.setAttribute("values", new int[] { 30, 70 });
	%>
	<div class="frame">
		<div class="txt">Range</div>
		<ej:slider id="range" sliderType="Range" enableRTL="true" values="${values}">
		</ej:slider>
		<br></br>
		<div class="txt">Min-Range</div>
		<ej:slider id="minrange" sliderType="MinRange" value="40"
			enableRTL="true"></ej:slider>
	</div>
</div>

<style>
.cols-sample-area {
	width: 75%;
}

.txt {
	direction: rtl;
	font-size: 15px;
	margin-bottom: 13px;
	text-align: right;
}
</style>