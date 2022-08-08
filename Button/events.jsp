<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<div class="control">
		<table>
        <tr>
            <td class="btn_label">Button</td>            
            <td class="btnsht">
              <ej:button id="Button" click="btnClick" enableRTL="true" size="large" create="btnLoad" text="click"></ej:button>
            </td>
        </tr>
        <tr>
            <td class="btn_label">Toggle Button</td>
            <td class="btnsht">
            <ej:toggleButton id="groupbutton" size="large" defaultText="Save" showRoundedCorner="true" activeText="Delete" create="tglebtnLoad" click="tglebtnClick" change="tglebtnChange"></ej:toggleButton>               
            </td>
        </tr>

        <tr>           
            <td class="btn_label">Split Button</td>
            <td class="btnsht">
            <ej:splitButton id="mini" showRoundedCorner="true" size="large" text="Save" beforeOpen="onFocusIn" create="spltbtnLoad" itemSelected="" close="spltbtnClosed" open="spltbtnOpened" itemMouseOver="spltbtnitmHover" itemMouseOut="spltbtnitmOut" click="spltbtnClick">
						<ej:splitButton-splitButtonItems>
							<ej:splitButton-splitButtonItem text="Open"></ej:splitButton-splitButtonItem>
							<ej:splitButton-splitButtonItem text="Save"></ej:splitButton-splitButtonItem>
							<ej:splitButton-splitButtonItem text="Delete"></ej:splitButton-splitButtonItem>
						</ej:splitButton-splitButtonItems>
				</ej:splitButton>
            </td>
        </tr>            
        <tr>
            <td class="btn_label">Group Button</td>
            <td class="btnsht">
            <ej:groupButton id="groupBtn" showRoundedCorner="true" height="45px" select="grpbtnSelect" keyPress="grpbtnKeyPress" beforeSelect="grpbtnBeforeSelect" create="grpbtnLoad">
				<ej:groupButton-groupButtonItems>
					<ej:groupButton-groupButtonItem id="groupbtn1" text="Day"></ej:groupButton-groupButtonItem>
					<ej:groupButton-groupButtonItem id="groupbtn2" text="Work Week"></ej:groupButton-groupButtonItem>
					<ej:groupButton-groupButtonItem id="groupbtn3" text="Week"></ej:groupButton-groupButtonItem>
					<ej:groupButton-groupButtonItem id="groupbtn4" text="Month"></ej:groupButton-groupButtonItem>
					<ej:groupButton-groupButtonItem id="groupbtn5" text="Year"></ej:groupButton-groupButtonItem>
				</ej:groupButton-groupButtonItems>
			</ej:groupButton>            			             
            </td>
        </tr>
    </table>	
	</div>
</div>
<div id="Logger" class="box">
    <h4>Event Trace</h4>
    <div class="EventLog" id="EventLog"></div>
    <div>
    <ej:button id="clearBtn" click="clearLog" size="small" text="Clear"></ej:button>       
    </div>
</div>

<script>
    // Client side Events  
    function btnLoad(e) {
        jQuery.addEventLog("Button has been <span class='eventTitle'>created</span>.");
    }
    function btnClick(e) {
        jQuery.addEventLog("Button has been <span class='eventTitle'>clicked</span>.");
    }
    function tglebtnLoad(e) {
        jQuery.addEventLog("ToggleButton has been <span class='eventTitle'>created</span>.");
    }
    function grpbtnLoad(e) {
        jQuery.addEventLog("Group Button has been <span class='eventTitle'>created</span>.");
    }
    function tglebtnChange(e) {
        jQuery.addEventLog("ToggleButton value has been <span class='eventTitle'>changed</span> to " + e.isChecked + ".");
    }
    function spltbtnLoad(e) {
        jQuery.addEventLog("SplitButton has been <span class='eventTitle'>created</span>.");
    }
    function spltbtnClick(e) {
        jQuery.addEventLog("SplitButton has been <span class='eventTitle'>clicked</span>.");
    }
    function onFocusIn(e) {
        jQuery.addEventLog("SplitButton popup has been <span class='eventTitle'>BeforeOpened</span>. ");
    }
    function spltbtnOpened(e) {
        jQuery.addEventLog("SplitButton popup has been <span class='eventTitle'>Opened</span>. ");
    }
    function spltbtnClosed(e) {
        jQuery.addEventLog("SplitButton popup has been <span class='eventTitle'>Closed</span>.");
    }
    function spltbtnitmHover(e) {
        jQuery.addEventLog("SplitButton item <span class='eventTitle'>hovered-in</span>.");
    }
    function spltbtnitmOut(e) {
        jQuery.addEventLog("SplitButton item <span class='eventTitle'>hovered-out</span>.");
    }
    function spltbtnitmSelected(e) {
        jQuery.addEventLog(e.text + " item has been <span class='eventTitle'>selected</span>.");
    }
    function grpbtnBeforeSelect(args) {
        jQuery.addEventLog("Group Button <span class='eventTitle'>BeforeActive</span> event is fired for Index " + args.index + ".");
    }
    function grpbtnSelect(args) {
        jQuery.addEventLog("Group Button <span class='eventTitle'>Active</span> event is fired for Index " + args.index + ".");
    }
    function grpbtnKeyPress(args) {
        jQuery.addEventLog("Group Button <span class='eventTitle'>Focus</span> Changed to the index" + args.index + ".");
    }
    function clearLog() {
        jQuery.clearEventLog();
    }
</script>

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
#txt {
	display: table;
	margin: 0 auto;
	margin-bottom: 10px;
}

</style>
