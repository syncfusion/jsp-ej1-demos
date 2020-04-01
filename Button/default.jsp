<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<div class="control">
		<table>
			<tr>
				<td class="btn_label">Normal</td>
				<td class="btnsht"><ej:button id="buttonnormal" size="normal"
						text="Normal" showRoundedCorner="true"></ej:button></td>
			</tr>
			<tr>
				<td class="btn_label">Mini</td>
				<td class="btnsht"><ej:button id="buttonmin" size="mini"
						text="Mini" showRoundedCorner="true"></ej:button></td>
			</tr>

			<tr>
				<td class="btn_label">Small</td>
				<td class="btnsht"><ej:button id="buttonsmall" size="small"
						text="Small" showRoundedCorner="true"></ej:button></td>
			</tr>
			<tr>
				<td class="btn_label">Medium</td>
				<td class="btnsht"><ej:button id="buttonmedium" size="medium"
						text="Medium" showRoundedCorner="true"></ej:button></td>
			</tr>

			<tr>
				<td class="btn_label">Large</td>
				<td class="btnsht"><ej:button id="buttonlarge" size="large"
						text="large" showRoundedCorner="true"></ej:button></td>
			</tr>
		</table>
	</div>
</div>


<style>
.cols-sample-area {
	width: 75%;
}




table {
	margin: auto;
}

td {
	padding: 11px;
}

td.btn_label {
	padding: 0 19px;
}
</style>
