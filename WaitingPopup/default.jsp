<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area" style="position:relative">
	<div  class="waiting">
		<ej:waitingPopup id="target" appendTo=".cols-sample-area" showOnInit="true"></ej:waitingPopup>
	</div>
</div>


<style>
.cols-sample-area {
	width: 400px;
	margin: 0 auto;
	float: none;
}
#target {
    height: 320px;
    width: 600px;
}

#target_WaitingPopup .e-image {
    display: block;
    height: 70px;
}
</style>
