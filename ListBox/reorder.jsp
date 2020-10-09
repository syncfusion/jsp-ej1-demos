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
<div class="ctrllabel">Reorder cars</div>
<ej:listBox id="selectcar"  dataSource="${CarDataSource}"></ej:listBox>

</div>
<div id="property-window" class="box wide">

<div class="prop-grid">
       <div class="row" style="width:100%">
           <div class="col-md-6" style="width:45%; float:left">
                            <ej:button id="btn1" text="Move Up" size="normal" click="Moveup"></ej:button>
                        </div>
           <div class="col-md-6" style="width:45%; float:right">
                           <ej:button id="btn2" text="Move down" size="normal" click="Movedown"></ej:button>
                        </div>
                    </div>
                </div>

</div>

<script>

function Moveup(e) {
    var target = $('#selectcar').data("ejListBox");
    target.moveUp();
}
function Movedown(e) {
    var target = $('#selectcar').data("ejListBox");
    target.moveDown();
}

</script>