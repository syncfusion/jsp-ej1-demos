
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<div class="control">
		<ej:dateTimePicker id="DateTime" width="50%">
			<ej:dateTimePicker-timeDrillDown interval="5" enabled="true"
				showMeridian="false"></ej:dateTimePicker-timeDrillDown>
		</ej:dateTimePicker>
	</div>
</div>
<style>
.cols-sample-area {
		width: 95%;
}

.control {
	margin-left: 20%;
}
</style>
