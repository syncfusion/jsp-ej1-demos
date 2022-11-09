<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>


<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="datasource.RTLTagCloudDataSource"%>
<%@ page import="datasource.GetRTLTagCloudDataSource"%>




<div class="cols-sample-area">

	<%
	GetRTLTagCloudDataSource obj2=new GetRTLTagCloudDataSource();
	    ArrayList<RTLTagCloudDataSource> Tagdata=obj2.getData();
	    request.setAttribute("RTLTagDataSource",Tagdata);
	    %>


	<ej:tagCloud id="tag" dataSource="${RTLTagDataSource}" enableRTL="true" titleText="Tech Sites"></ej:tagCloud>

</div>

<style>
.cols-sample-area {
	width: 400px;
	margin: 0 auto;
	float: none;
}
</style>
