<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
<div style="width: 250px; max-width:100%">
<ej:treeView id="treeView" allowDragAndDrop="true" allowDropChild="true" allowDropSibling="true" showCheckbox="true" allowEditing="true" create="onCreate" nodeExpand="onExpand" nodeCollapse="onCollapse" beforeExpand="onBeforeExpand" beforeCollapse="onBeforeCollapse" nodeSelect="onSelect" nodeCheck="onChecked" nodeUncheck="onUnChecked" nodeDragStart="onDragStart" nodeDrag="onDrag" nodeDragStop="onDragStop" nodeDropped="onDropped" beforeEdit="onBeforeEdit" nodeEdit="onEdit" ready="onReady">
<ej:treeview-contentTemplate>
<ul id="treeView">
    <li class="expanded">
        Cricket
        <ul>
            <li>Princeton Club</li>
            <li>Harverd Club</li>
            <li>st.Columbia Club</li>
            <li>Dartmouth Club</li>
            <li>Middlebury Club</li>
        </ul>
    </li>
    <li>
        Football
        <ul>
            <li>A.F.C Blackpool </li>
            <li>A.F.C Emley </li>
            <li>Bedford </li>
            <li>Farsley </li>
        </ul>
    </li>
    <li>
        Basketball
        <ul>
            <li>AGE Halkida</li>
            <li>Iraklio</li>
            <li>Sporting Athens</li>
            <li>Pagrati Athens</li>
            <li>London Towers</li>
        </ul>
    </li>
</ul>
</ej:treeview-contentTemplate>
</ej:treeView>
  
</div>
</div>
<div id="Logger" class="box">
    <h4>Event Trace</h4>
    <div class="EventLog" id="EventLog"></div>
    <div>
       <ej:button id="clrevttxt" size="small" text="Clear" showRoundedCorner="true" click="onclick"></ej:button>
    </div>
</div>


<script>
function onCreate(args) {
    jQuery.addEventLog("Treeview has been <span class='eventTitle'>created</span>.");
}
function onExpand(args) {
    jQuery.addEventLog($.trim(args.value) + " node is <span class='eventTitle'>Expanded</span>.");
}
function onCollapse(args) {
    jQuery.addEventLog($.trim(args.value) + " node is <span class='eventTitle'>Collapsed</span>.");
}
function onBeforeExpand(args) {
    jQuery.addEventLog("<span class='eventTitle'>BeforeExpand</span> event is fired for " + $.trim(args.value) + " node.");
}
function onBeforeCollapse(args) {
    jQuery.addEventLog("<span class='eventTitle'>BeforeCollapse</span> event is fired for " + $.trim(args.value) + " node.")
}
function onSelect(args) {
    jQuery.addEventLog($.trim(args.value) + " node is <span class='eventTitle'>selected</span>.");
}
function onChecked(args) {
    jQuery.addEventLog($.trim(args.value) + " node is <span class='eventTitle'>checked</span>.");
}
function onUnChecked(args) {
    jQuery.addEventLog($.trim(args.value) + " node is <span class='eventTitle'>unchecked</span>.");
}
function onDragStart(args) {
    jQuery.addEventLog($.trim(args.targetElementData.text) + " node <span class='eventTitle'>dragging has been started</span>.");
}
function onDrag(args) {
    jQuery.addEventLog($.trim(args.draggedElementData.text) + " node is being <span class='eventTitle'>dragged</span>.");
}
function onDragStop(args) {
    jQuery.addEventLog($.trim(args.draggedElementData.text) + " node dragging has been <span class='eventTitle'>stopped</span>.");
}
function onDropped(args) {
    var targetText = (args.targetElementData.text != "") ? $.trim(args.targetElementData.text) : "Treeview";
    jQuery.addEventLog($.trim(args.droppedElementData.text) + " node has been <span class='eventTitle'>dropped </span> to " + targetText + ".");
}
function onBeforeEdit(args) {
    jQuery.addEventLog("<span class='eventTitle'>BeforeEdit</span> event is fired for " + $.trim(args.currentElement.text()) + " node.");
}
function onEdit(args) {
    jQuery.addEventLog($.trim(args.oldText) + " node has been <span class='eventTitle'>edited</span> to " + $.trim(args.newText) + ".");
}
function onReady(args) {
    jQuery.addEventLog("TreeView nodes are <span class='eventTitle'>loaded</span> successfully.");
}
function onclick() {
    $('#EventLog').html('');
}
</script>
