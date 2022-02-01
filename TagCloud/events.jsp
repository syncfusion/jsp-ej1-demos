<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>


<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="dataSource.TagCloudDataSource"%>
<%@ page import="dataSource.GetTagCloudDataSource"%>




<div class="cols-sample-area">

	<%
	GetTagCloudDataSource obj2=new GetTagCloudDataSource();
	    ArrayList<TagCloudDataSource> Tagdata=obj2.getData();
	    request.setAttribute("TagDataSource",Tagdata);
	    %>


	<ej:tagCloud id="tag" dataSource="${TagDataSource}" titleText="Tech Sites"></ej:tagCloud>

</div>


<div id="Logger" class="box">
    <h4>Event Trace</h4>
    <div class="EventLog" id="EventLog"></div>
    <div>
       <ej:button id="clrevttxt" size="small" text="Clear" showRoundedCorner="true" click="onclick"></ej:button>
    </div>
</div>



<style>
.cols-sample-area {
	width: 400px;
	margin: 0 auto;
	float: none;
}
</style>


