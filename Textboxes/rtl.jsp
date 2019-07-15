<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<div class="frame">
		<div class="control">
			<table class="editor e-rtl">
				<tbody>
					<tr>
						<td><span>Numeric Textbox</span></td>
					</tr>
					<tr>
						<td><ej:numericTextbox id="rtlnumeric" value="5" minValue="0"
								enableRTL="true" width="100%"></ej:numericTextbox></td>
					</tr>
					<tr>
						<td><span>Percentage Textbox</span></td>
					</tr>
					<tr>
						<td><ej:percentageTextbox id="rtlpercentage" value="55"
								enableRTL="true" minValue="0" width="100%"></ej:percentageTextbox>
						</td>
					</tr>
					<tr>
						<td><span>Currency Textbox</span></td>
					</tr>
					<tr>
						<td><ej:currencyTextbox id="rtlcurrency" value="555"
								enableRTL="true" width="100%"></ej:currencyTextbox></td>
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