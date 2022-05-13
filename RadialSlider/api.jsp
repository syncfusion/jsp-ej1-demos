<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">

<ej:radialSlider id="apiradialSlider" innerCircleImageUrl="Content/images/radialslider/chevron-right.png"></ej:radialSlider>

</div>
<div id="property-window" class="box wide">
    <div class="prop-grid" style="margin:0 auto">
                    <div class="row-fluid">
                        <div class="row">
                            <div class="col-md-12" style="text-align:left">
                                Start Angle (0-360)
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                <ej:slider id="startAngleSlider" height="16" width="225" value="0" minValue="0" maxValue="360" incrementStep="10" change="onStartchange" slide="onchange" ></ej:slider>
                            </div>
                        </div>
                    <div class="row-fluid">
                        <div class="row">
                            <div class="col-md-12" style="text-align:left">
                                End Angle (360-0)
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
				<ej:slider id="endAngleSlider" height="16" width="225" value="360" minValue="360" maxValue="0" incrementStep="10" change="onEndchange" slide="onchange" ></ej:slider>
                            </div>
                        </div>
                    <div class="row">
                        <div class="col-md-3">
                            Stroke width
                        </div>
                        <div class="col-md-3">
        	<ej:numericTextbox id="numeric" value="2" minValue="1" maxValue="10" change="valueChange"></ej:numericTextbox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            Show
                        </div>
                        <div class="col-md-3">
                           <ej:toggleButton id="radialshow" width="107px" change="radialshowChange" defaultText="Hide" activeText="Show"></ej:toggleButton>
                        </div>
                    </div>
           </div>
<script>
function onStartchange(args) {
    var instance = $("#apiradialSlider").data("ejRadialSlider");
    var value1 = instance.model.endAngle;
    if (args.value > value1)
        alert("Value must be less than end angle");
    else
        $("#apiradialSlider").ejRadialSlider({ startAngle: args.value })
}
function onEndchange(args) {
    var instance = $("#apiradialSlider").data("ejRadialSlider");
    var value2 = instance.model.startAngle;
    if (args.value < value2)
        alert("Value must be greater than start angle");
    else
        $("#apiradialSlider").ejRadialSlider({ endAngle: args.value })
}
function onShowHideReset(args) {
    var roundUpp = args.isChecked ? false : true;
    $("#apiradialSlider").ejRadialSlider({ enableRoundOff: roundUpp })
}
function valueChange(args) {
    if (!ej.isNullOrUndefined(args.value))
        $("#apiradialSlider").ejRadialSlider({ strokeWidth: (args.value != null) ? args.value : 1 })
}
function radialshowChange(args) {
    $("#apiradialSlider").ejRadialSlider(args.isChecked ? "hide" : "show");
}
</script>
           </div>

