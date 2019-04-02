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
<ej:rotator id="rotator" isResponsive="true" frameSpace="0px"  dataSource="${RotatorDataSource}" showThumbnail="true" thumbnailSourceID="thumbElement" displayItemsCount="1" navigateSteps="1" pagerPosition="outside" orientation="horizontal" showPager="true" >
 <ul id="thumbElement" style="display: none">
                        <li>
                            <img src="Content/images/rotator/nature.jpg" title="green" /></li>
                        <li>
                            <img src="Content/images/rotator/bird.jpg" title="tablet" /></li>             
                        <li>
                            <img src="Content/images/rotator/sculpture.jpg" title="bread" /></li>
                        <li>
                            <img src="Content/images/rotator/wheat.jpg" title="wheat" /></li>         
                        <li>
                            <img src="Content/images/rotator/snowfall.jpg" title="snowfall" /></li>
                    </ul>

</ej:rotator>

</div> 