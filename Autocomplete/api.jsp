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

<ej:autocomplete id="auto" width="300px" watermarkText="Select a car" dataSource="${CarDataSource}" ></ej:autocomplete>


</div>

<div id="property-window" class="box wide">

<div class="prop-grid">
       <div class="row" style="width:100%">
           <div class="col-md-6" style="width:45%; float:left">
                            <ej:toggleButton id="toggle" defaultText="Disable" activeText="Enable" click="changeState" width="107px"></ej:toggleButton>
                            	<label for="toggle">Toggle</label>
                        </div>
           <div class="col-md-6" style="width:45%; float:right">                    
                            <ej:button id="btn" width="107px" click="currentValue" text="GetValue" ></ej:button>
                        </div>
                    </div>
                </div>
</div>
<script>

function changeState(args) {
	var autocomplete = $('#auto').ejAutocomplete("instance");
    if (args.isChecked) autocomplete.disable();
    else autocomplete.enable();
}
function currentValue(args) {
	var autocomplete = $('#auto').ejAutocomplete("instance");
    alert("Current value is : " + autocomplete.getValue());
}

</script>

