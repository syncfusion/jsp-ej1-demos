<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>



<div class="cols-sample-area">

<ej:reportViewer id="groupingaggregate_reportViewer" isResponsive="true" reportServiceUrl="//js.syncfusion.com/demos/ejServices/api/ReportViewer" processingMode="Remote" reportPath="GroupingAgg.rdl"></ej:reportViewer>	
	
</div>

<style>
.cols-sample-area {
	width: 90%; 
}

#groupingaggregate_reportViewer{
		height: 550px;
		display: block;
}
</style>
