<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<ej:slider id="minrangeslider" sliderType="MinRange" value="40"
		stop="onstop" start="onstart" slide="onslide" change="onchange"></ej:slider>
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
	function onstart(args) {
		jQuery.addEventLog("Slider has been <span class='eventTitle'>started</span> at "+ args.value + ". <br/>");
	}
	function onstop(args) {
		jQuery.addEventLog("Slider has been <span class='eventTitle'>stopped</span> at "+ args.value + ". <br/>");
	}
	function onchange(args) {
		jQuery.addEventLog("Slider value has been <span class='eventTitle'>changed</span> to "+ args.value + ". <br/>");
	}
	function onslide(args) {
		jQuery.addEventLog("Slider is being <span class='eventTitle'>changed</span> to "+ args.value + ".");
	}
	function onclick() {
		$('#EventLog').html('');
	}
</script>
<style>
.cols-sample-area {
	width: 75%;
}
</style>