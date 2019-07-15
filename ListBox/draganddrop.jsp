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
   %>
<div class="ctrllabel">Drag and drop</div>
 <div class="contents">
<ej:listBox id="list"  dataSource="${CarDataSource}" allowDrag="true" allowDrop="true" ></ej:listBox>
</div>

 <div class="contents">
<ej:listBox id="selectcar" allowDrag="true" allowDrop="true" ></ej:listBox>
</div>
</div>
<style>
.ctrllabel {
            font-weight: 600;
            padding-bottom: 12px;
            padding-left: 15px;
        }
 .contents {
            display: inline-block;
            padding: 0px 15px;
        }
</style>