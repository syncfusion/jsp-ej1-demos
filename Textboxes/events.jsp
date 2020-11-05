<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<table class="editors">
		<tbody>
			<tr>
				<td><span>Numeric Textbox</span></td>
			</tr>
			<tr>
				<td><ej:numericTextbox id="eventnumeric" value="5"
						create="onNumericCreate" focusIn="numericFocusIn"
						focusOut="numericFocusOut" change="numericValChange" width="100%"></ej:numericTextbox>
				</td>
			</tr>
			<tr>
				<td><span>Percentage Textbox</span></td>
			</tr>
			<tr>
				<td><ej:percentageTextbox id="eventpercentage" value="55"
						create="onPercentageCreate" focusIn="percentFocusIn"
						focusOut="percentFocusOut" change="percentValChange" width="100%"></ej:percentageTextbox>
				</td>
			</tr>
			<tr>
				<td><span>Currency Textbox</span></td>
			</tr>
			<tr>
				<td><ej:currencyTextbox id="eventcurrency" value="555"
						create="onCurrencyCreate" focusIn="currencyFocusIn"
						focusOut="currencyFocusOut" change="currencyValChange"
						width="100%"></ej:currencyTextbox></td>
			</tr>
			<tr>
				<td><span>Mask Edit</span></td>
			</tr>
			<tr>
				<td><ej:maskEdit id="eventmask" inputMode="Text"
						maskFormat="99 999-99999" create="onMaskCreate"
						focusIn="maskFocusIn" focusOut="maskFocusOut"
						change="maskValueChange" width="100%"></ej:maskEdit></td>
			</tr>
		</tbody>
	</table>
</div>
<div id="Logger" class="box">
	<h4>Event Trace</h4>
	<div class="EventLog" id="EventLog"></div>
	<div>
		<ej:button id="clrevttxt" size="small" text="Clear"
			showRoundedCorner="true" click="onclick"></ej:button>
	</div>
</div>

<script>
	function onNumericCreate(args) {
		jQuery.addEventLog("NumericTextbox has been <span class='eventTitle'>created</span>.");
	}
	function onPercentageCreate(args) {
		jQuery.addEventLog("PercentageTextbox has been <span class='eventTitle'>created</span>.");
	}
	function onCurrencyCreate(args) {
		jQuery.addEventLog("CurrencyTextbox has been <span class='eventTitle'>created</span>.");
	}
	function onMaskCreate(args) {
		jQuery.addEventLog("MaskEditTextbox has been <span class='eventTitle'>created</span>.");
	}
	function numericValChange(args) {
		jQuery.addEventLog("NumericTextbox value has been <span class='eventTitle'>changed</span> to "+ args.value + ".<br/>");
	}
	function percentValChange(args) {
		jQuery.addEventLog("PercentageTextbox value has been <span class='eventTitle'>changed</span> to "+ args.value + ".<br/>");
	}
	function currencyValChange(args) {
		jQuery.addEventLog("CurrencyTextbox value has been <span class='eventTitle'>changed</span> to "+ args.value + ".<br/>");
	}
	function maskValueChange(args) {
		jQuery.addEventLog("MaskEditTextbox value has been <span class='eventTitle'>changed</span> to "+ args.value + ".<br/>");
	}
	function numericFocusIn(args) {
		jQuery.addEventLog("NumericTextbox is in <span class='eventTitle'>Focus</span>");
	}
	function numericFocusOut(args) {
		jQuery.addEventLog("NumericTextbox is out of <span class='eventTitle'>Focus</span>");
	}
	function percentFocusIn(args) {
		jQuery.addEventLog("PercentTextbox is in <span class='eventTitle'>Focus</span>");
	}
	function percentFocusOut(args) {
		jQuery.addEventLog("PercentTextbox is out of <span class='eventTitle'>Focus</span>");
	}
	function currencyFocusIn(args) {
		jQuery.addEventLog("CurrencyTextbox is in <span class='eventTitle'>Focus</span>");
	}
	function currencyFocusOut(args) {
		jQuery.addEventLog("CurrencyTextbox is out of <span class='eventTitle'>Focus</span>");
	}
	function maskFocusIn(args) {
		jQuery.addEventLog("MaskEditTextbox is in <span class='eventTitle'>Focus</span>");
	}
	function maskFocusOut(args) {
		jQuery.addEventLog("MaskEditTextbox is out of <span class='eventTitle'>Focus</span>");
	}
	function onclick() {
		$('#EventLog').html('');
	}
</script>
<style>
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