<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="datasource.CarDataSource"%>
<%@ page import="datasource.GetCarDataSource"%>

<div class="cols-sample-area">
	<%
    GetCarDataSource obj =new GetCarDataSource();
    Object data = obj.getData1();
    request.setAttribute("CarDataSource", data);
    request.setAttribute("popup", true);
   %>
  <span class="txt">Using Delimiter</span>
<ej:autocomplete id="auto1" width="300px" multiSelectMode="delimiter" showPopupButton="${popup}" dataSource="${CarDataSource}" ></ej:autocomplete>

 <span class="txt">Using VisualMode</span>
 <ej:autocomplete id="auto2" width="300px" multiSelectMode="visualmode" showPopupButton="${popup}" dataSource="${CarDataSource}" ></ej:autocomplete>
</div>

