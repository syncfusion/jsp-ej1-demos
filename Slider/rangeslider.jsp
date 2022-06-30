<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>

<div class="cols-sample-area">
	<%
		int[] value = { 30, 70 };
		request.setAttribute("sVal", value);
	%>
	<div class="frame">
		<div class="txt">Range</div>
		<ej:slider id="range" sliderType="Range" values="${sVal}">
		</ej:slider>
		<br></br>
		<div class="txt">Min-Range</div>
		<ej:slider id="minrange" sliderType="MinRange" value="40"></ej:slider>
	</div>
</div>

<style>
.cols-sample-area {
	width: 75%;
}

.frame {
	width: 100%;
}

.txt {
	font-size: 15px;
	margin-bottom: 13px;
}
</style>