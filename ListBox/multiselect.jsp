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
<div class="ctrllabel">Select cars</div>
<ej:listBox id="multiselection"  dataSource="${CarDataSource}" allowMultiSelection="true" ></ej:listBox>

</div>

<script>

$(document).on("keydown", function (e) {
    if (e.altKey && e.keyCode === 74) { // j- key code.
        $("#select_container").focus();
    }
});
</script>
