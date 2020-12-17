<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page import="datasource.RotatorDataSource"%>
<%@ page import="datasource.GetRotatorDataSource"%>

<div class="cols-sample-area">

	<%
	GetRotatorDataSource obj =new GetRotatorDataSource();
    Object data = obj.getData();
    request.setAttribute("RotatorDataSource", data);
   %>
<ej:rotator id="rotator" frameSpace="0px" slideWidth="600px" slideHeight="350px" dataSource="${RotatorDataSource}" displayItemsCount="1" navigateSteps="1" isResponsive="true" pagerPosition="outside" orientation="horizontal" showPager="true" >

</ej:rotator>

</div> 