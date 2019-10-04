<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>



<div class="cols-sample-area">

<ej:reportViewer id="territorysales_reportViewer" isResponsive="true" reportServiceUrl="//js.syncfusion.com/demos/ejServices/api/ReportViewer" processingMode="Remote" reportPath="/SSRSSamples2/Territory Sales new" reportServerUrl="//104.207.134.201/reportserver"></ej:reportViewer>	
	
</div>

<style>
.cols-sample-area {
	width: 90%; 
}

#territorysales_reportViewer{
	height: 550px;
	display: block;
}
</style>
