<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="datasource.ToolbarData"%>
<%@ page import="datasource.GetToolbarData"%>

<div class="cols-sample-area">
<%
GetToolbarData obj=new GetToolbarData();
	    ArrayList<ToolbarData> toolbar=obj.getData();
	    request.setAttribute("ToolbarData",toolbar);
	    %>
	    
	<div class="control">

		<ej:toolbar id="toolbarJson" dataSource="${ToolbarData}" width="100%">
		<ej:toolbar-fields  id="empid" spriteCssClass="spriteCss" tooltipText="title" ></ej:toolbar-fields>
	</ej:toolbar>
	</div>
</div>


<style>
.cols-sample-area
{
    width: 300px;
    margin: 0 auto;
    float: none;
}
.darktheme .cols-sample-area .e-tooltxt .Browsers {
    background-image: url('Content/images/toolbar/browserd.png');
}

.cols-sample-area .e-tooltxt .Browsers {
    display: block;
    background-image: url('Content/images/toolbar/browserl.png');
    height: 32px;
    width: 32px;
    background-repeat: no-repeat;
}

.e-tooltxt:hover .Browsers, .darktheme .cols-sample-area .e-tooltxt:hover .Browsers {
    background-image: url('Content/images/toolbar/browserh.png');
}

.Browsers.ieb {
    background-position: -84px 0px;
}

.Browsers.chromeb {
    background-position: -42px 0px;
}

.Browsers.firefoxb {
    background-position: 0px 0px;
}

.Browsers.bittyb {
    background-position: -126px 0px;
}

.Browsers.operab {
    background-position: -168px 0px;
}
</style>
