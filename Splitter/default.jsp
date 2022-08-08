<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page session="false" import="java.util.ArrayList" %>
<%@ page import="datasource.prop" %> 
<%@ page import="datasource.getprop" %> 


<%
getprop props=new getprop();
ArrayList<prop> data2 = props.GetPropdata();
request.setAttribute("DataSource2",data2);
    %>
<div class="cols-sample-area">
<ej:splitter id="inner" height="250" width="400" properties="${DataSource2}" >
<ej:splitter-contentTemplate>
<div id="pane1" >
Pane 1
</div>
<div id="pane2" style="Height:100%; Width:100%"> Pane 2</div>
</ej:splitter-contentTemplate>
 </ej:splitter>
</div>
