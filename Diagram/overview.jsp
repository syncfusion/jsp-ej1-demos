<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="datasource.GetJsonData"%>

<div class="cols-sample-area">
    <%
    GetJsonData obj = new GetJsonData();
    Object data = obj.getOveriewData();
    request.setAttribute("DataSource", data);
    
    HashMap<String, Object> defaultNode = new HashMap<String, Object>();
    defaultNode.put("width", 102);
    defaultNode.put("height", 142);
    defaultNode.put("borderColor", "none");
    defaultNode.put("type", "image");
    request.setAttribute("DefaultNode", defaultNode);
    
    %>
    <div class="diagram_section">
		<ej:diagram id="diagram1" enableContextMenu="false" width="600px" height="600px" tool="ZoomPan" nodeTemplate="nodeTemplate">
	        <ej:diagram-defaultSettings node="${DefaultNode}"></ej:diagram-defaultSettings>
	        <ej:diagram-snapSettings snapConstraints="None"></ej:diagram-snapSettings>
	        <ej:diagram-dataSourceSettings dataSource="${DataSource}" id=""></ej:diagram-dataSourceSettings>
		</ej:diagram>
	</div>
	<div class="overview_section">
		<ej:overview id="overview1" width="300" height="330" sourceID="diagram1"></ej:overview>
	</div>
</div>
<script>
    function nodeTemplate(diagram, node) {
    	node.source = "Content/images/overviewcontrol/" + node.source;
    }
</script>
<style>
    
    .diagram_section {
        float: left;
        margin-right:10px;
    }
    
    .overview_section {
        float: left;
        background-color: #f5f5f5;
    }
</style>