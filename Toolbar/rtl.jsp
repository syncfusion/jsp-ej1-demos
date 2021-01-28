<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="datasource.ToolbarData"%>
<%@ page import="datasource.GetToolbarData2"%>

<div class="cols-sample-area">
<%
GetToolbarData2 obj=new GetToolbarData2();
	    ArrayList<ToolbarData> toolbar=obj.getData();
	    request.setAttribute("ToolbarData",toolbar);
	    %>
	    
	<div class="control">

		<ej:toolbar id="edittools" dataSource="${ToolbarData}" orientation="horizontal" width="100%" enableRTL="true">
			<ej:toolbar-fields  id="empid" spriteCssClass="spriteCss" tooltipText="title" ></ej:toolbar-fields>
		</ej:toolbar>
	</div>
</div>


<style>
.cols-sample-area
{
    width: 400px;
    margin: 0 auto;
    float: none;
}
.darktheme .cols-sample-area .e-tooltxt .editTools {
    background-image: url('Content/images/toolbar/editToolbar.png');
}

.cols-sample-area .e-tooltxt .editTools {
    display: block;
    background-image: url('Content/images/toolbar/editToolbarl.png');
    height: 26px;
    width: 26px;
    background-repeat: no-repeat;
}

.e-tooltxt:hover .editTools, .darktheme .cols-sample-area .e-tooltxt:hover .editTools {
    background-image: url('Content/images/toolbar/editToolbarh.png');
}

.editTools.cursor {
    background-position: -0px -0px;
}

.editTools.select {
    background-position: -0px -36px;
}

.editTools.move {
    background-position: -0px -72px;
}

.editTools.rectselect {
    background-position: -0px -108px;
}

.editTools.roundselect {
    background-position: -0px -144px;
}

.editTools.brush {
    background-position: -0px -180px;
}

.editTools.pen {
    background-position: -0px -216px;
}

.editTools.gradient {
    background-position: -0px -252px;
}

.editTools.crop {
    background-position: -0px -288px;
}

.editTools.symbols {
    background-position: -0px -324px;
}
</style>
