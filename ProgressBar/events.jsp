<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
 <div class="control">
    <div class="e-prodefault">
		<ej:progressBar id="progressBar" value="10" text="10 %" showRoundedCorner="true" create="oncreate" start="onstart"        change="onchange" complete="completed" ></ej:progressBar>
	</div>
  </div>
  <div class="startButton">
  	<ej:toggleButton id="startButton" size="small" defaultText="Play" activeText="Pause" showRoundedCorner="true"  click="startProcess" ></ej:toggleButton>
  	<label for="startButton">Toggle</label>
  </div>
</div>

<div id="Logger" class="box">
    <h4>Event Trace</h4>
    <div class="EventLog" id="EventLog"></div>
    <div>
       <ej:button id="clearBtn" size="small" text="Clear" type="button" click="onClear" ></ej:button>
    </div>
</div>

<script>
var progresObj, buttonObj, k = 10, timer = window.clearInterval(timer), showComplete = true;
buttonObj = $("#startButton").data("ejToggleButton");
 $(function () {
            progresObj = $("#progressBar").data("ejProgressBar");
            progresObj.option("text", progresObj.getPercentage() + " %");
 });
   function startProcess(args) {
       buttonObj = $("#startButton").data("ejToggleButton");
            if (args.isChecked) {
				$(progresObj.element).find("div.e-progress-txt").removeClass("e-prodefault");
                timer = window.setInterval(draw, 100);
			}
            else {
                buttonObj.setModel({ "defaultText": "Start" });
                timer = window.clearInterval(timer);
            }
        }
        function draw() {
            progresObj.option("text", ++k + " %");
            progresObj.option("percentage", k);
        }
        function completed(args) {
            buttonObj = $("#startButton").data("ejToggleButton");
            progresObj.option("text", "Completed");
            timer = window.clearInterval(timer);
            k = 0;
            if (showComplete)
                oncomplete(args);
            buttonObj.setModel({ "toggleState": false, "defaultText": "Restart" });
        }

        function oncomplete(args) {
            jQuery.addEventLog("The process has been <span class='eventTitle'>completed</span> successfully.</br>");
        }
        function oncreate(args) {
            jQuery.addEventLog("Progressbar has been <span class='eventTitle'>created</span>.");
        }
        function onstart(args) {
            jQuery.addEventLog("Progressbar has been <span class='eventTitle'>started</span>.</br>");
        }
        function onchange(args) {
            jQuery.addEventLog("Progressbar value has been <span class='eventTitle'>changed</span> to " + args.percentage + "%.</br>");
			if(args.percentage>50)
			$(this.element.find("div.e-progress-txt")).addClass("e-prodefault");
        }
			
        function onClear() {
            $("#EventLog").html("");
        }

</script>

<style>
.cols-sample-area {
	width: 400px;
	margin: 0 auto;
	float: none;
}
.frame {
    width: 50%;
}

.startButton {
    text-align:center;
    padding:10px;
}
.e-prodefault{
	color:white;
}
</style>
