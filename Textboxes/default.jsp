<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<div class="frame">
		<div class="control">
			<table class="editors">
				<tbody>
					<tr>
						<td><span>Numeric Textbox</span></td>
					</tr>
					<tr>
						<td><ej:numericTextbox id="defaultnumeric" value="35"
								minValue="0" width="100%"></ej:numericTextbox></td>
					</tr>
					<tr>
						<td><span>Percentage Textbox</span></td>
					</tr>
					<tr>
						<td><ej:percentageTextbox id="defaultpercentage" value="3"
								minValue="0" width="100%"></ej:percentageTextbox></td>
					</tr>
					<tr>
						<td><span>Currency Textbox</span></td>
					</tr>
					<tr>
						<td><ej:currencyTextbox id="defaultcurrency" value="555"
								width="100%"></ej:currencyTextbox></td>
					</tr>
					<tr>
						<td><span>Mask Edit</span></td>
					</tr>
					<tr>
						<td><ej:maskEdit id="defaultmask" inputMode="Text"
								value="4242422424" maskFormat="99 999-99999" width="100%"></ej:maskEdit>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

<style type="text/css" class="cssStyles">
.cols-sample-area {
	display: block;
}

table {
	width: 100%;
}

td {
	padding: 5px;
}
</style>