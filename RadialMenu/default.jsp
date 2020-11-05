<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%> 

<div class="cols-sample-area" style="position:relative">
<div id="radialtarget1" class="content-container-fluid">

<ej:rte id="rteSample1" width="100%" change="rteChange" select="radialShow" showToolbar="false" showContextMenu="false">
	<ej:rte-contentTemplate>
				&lt;p&gt;&lt;b&gt;Description:&lt;/b&gt;&lt;/p&gt;
	    &lt;p&gt;The Rich Text Editor (RTE) control is an easy to render in
	    client side. Customer easy to edit the contents and get the HTML content for
	    the displayed content. A rich text editor control provides users with a toolbar
	    that helps them to apply rich text formats to the text entered in the text
	    area. &lt;/p&gt;
	    &lt;p&gt;&lt;b&gt;Functional
	    Specifications/Requirements:&lt;/b&gt;&lt;/p&gt;
	    &lt;ol&gt;&lt;li&gt;&lt;p&gt;Provide
	    the tool bar support, it's also customizable.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Options
	    to get the HTML elements with styles.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Support
	    to insert image from a defined path.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Footer
	    elements and styles(tag / Element information , Action button (Upload, Cancel))&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Re-size
	    the editor support. &lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Provide
	    efficient public methods and client side events.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;Keyboard
	    navigation support.&lt;/p&gt;&lt;/li&gt;&lt;/ol&gt;
	</ej:rte-contentTemplate>
</ej:rte>	
</div>
<ej:radialMenu id="defaultradialmenu" autoOpen="false" targetElementId="radialtarget1" >

<ej:radialmenu-contentTemplate>
<ul>
<li data-ej-imageurl="Content/images/RadialMenu/font.png" data-ej-text="Bold" data-ej-click="bold"></li>
<li data-ej-imageurl="Content/images/RadialMenu/f1.png" data-ej-text="Italic" data-ej-click="italic"></li>
<li data-ej-imageurl="Content/images/RadialMenu/undo.png" data-ej-text="Undo" data-ej-enabled="false" data-ej-click="undo"></li>
<li data-ej-imageurl="Content/images/RadialMenu/redo.png" data-ej-text="Redo" data-ej-enabled="false" data-ej-click="redo"></li>
</ul>
</ej:radialmenu-contentTemplate>

</ej:radialMenu>

</div>
<style>
.cols-sample-area{

width:80%;

}

</style>
<script>
var rteObj, rteEle = $("#rteSample1"), radialEle = $('#defaultradialmenu'), action = 0, forRedo = 0;
function radialShow(e) {
    var target = $("#rteSample1"), radialRadius = 150, radialDiameter = 2 * radialRadius,
        // To get Iframe positions
        iframeY = target.offset().top + e.event.clientY, iframeX = target.offset().left + e.event.clientX,
        // To set Radial Menu position within target
        x = iframeX < target.width() - radialRadius ? target.width() - radialDiameter : (iframeX > radialRadius ? iframeX - radialRadius : 0),
        y = iframeY < target.height() - radialRadius ? target.height() - radialDiameter : (iframeY > radialRadius ? iframeY - radialRadius : 0);
    radialEle.ejRadialMenu("setPosition", x, y);
    radialEle.focus();
	$('iframe').contents().find('body').blur();
}
function rteChange(e) {
    radialEle.ejRadialMenu("enableItem", "Undo");
}
function bold(e) {
	rteObj = rteEle.data("ejRTE");
    rteObj.executeCommand("bold");
    data = rteObj._getSelectedHtmlString() ? true : false;
    if (data) action += 1;
    forRedo = action;
    radialEle.focus();
}
function italic(e) {
	rteObj = rteEle.data("ejRTE");
    rteObj.executeCommand("italic");
    data = rteObj._getSelectedHtmlString() ? true : false;
    if (data) action += 1;
    forRedo = action;
    radialEle.focus();
}
function undo(e) {
	rteObj = rteEle.data("ejRTE");
    rteObj.executeCommand("undo");
    action -= 1;
    if (action == 0)
        radialEle.ejRadialMenu("disableItem", "Undo");
    radialEle.ejRadialMenu("enableItem", "Redo");
    radialEle.focus();
}
function redo(e) {
	rteObj = rteEle.data("ejRTE");
    rteObj.executeCommand("redo");
    action += 1;
    if (forRedo == action) radialEle.ejRadialMenu("disableItem", "Redo");
    radialEle.ejRadialMenu("enableItem", "Undo");
    radialEle.focus();
}
</script>