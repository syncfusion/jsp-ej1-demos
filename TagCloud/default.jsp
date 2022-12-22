<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>


<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="datasource.TagCloudDataSource"%>
<%@ page import="datasource.GetTagCloudDataSource"%>




<div class="cols-sample-area">

	<%
	GetTagCloudDataSource obj2=new GetTagCloudDataSource();
	    ArrayList<TagCloudDataSource> Tagdata=obj2.getData();
	    request.setAttribute("TagDataSource",Tagdata);
	    %>


	<ej:tagCloud id="tag" dataSource="${TagDataSource}" titleText="Tech Sites"></ej:tagCloud>

</div>

<style>
.cols-sample-area {
	width: 400px;
	margin: 0 auto;
	float: none;
}
</style>
