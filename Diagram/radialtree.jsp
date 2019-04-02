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
    Object data = obj.getDiagramRadialTreeData();
    request.setAttribute("DataSource", data);
    
    HashMap<String, Object> defaultNode = new HashMap<String, Object>();
    defaultNode.put("width", 50);
    defaultNode.put("height", 50);
    defaultNode.put("borderColor", "transparent");
    defaultNode.put("type", "image");
    defaultNode.put("constraints", 2621440);
    request.setAttribute("DefaultNode", defaultNode);
    
    HashMap<String, Object> defaultConnector = new HashMap<String, Object>();
    defaultConnector.put("constraints", 1);
    request.setAttribute("DefaultConnector", defaultConnector);
    
    
    %>
	<ej:diagram id="diagram1" width="800px" height="600px" tool="ZoomPan" create="diagramCreate" enableContextMenu="false" nodeTemplate="nodeTemplate">
        <ej:diagram-layout type="radialtree" horizontalSpacing="30" verticalSpacing="30">
        </ej:diagram-layout>
        <ej:diagram-pageSettings scrollLimit="diagram"></ej:diagram-pageSettings>
        <ej:diagram-defaultSettings node="${DefaultNode}" connector="${DefaultConnector}"></ej:diagram-defaultSettings>
        
        <ej:diagram-dataSourceSettings dataSource="${DataSource}" id="Id" parent="ReportingPerson"></ej:diagram-dataSourceSettings>
        <ej:diagram-snapSettings snapConstraints="None"></ej:diagram-snapSettings>
        
	</ej:diagram>
</div>
<script type="text/x-jsrender" id="mouseovertoolTipId">
	<svg style="position: relative; width: 150px; height: 75px;">
            <g>
                <path fill="#FFFFFF" d="M 147 75 H 3 c -1.7 0 -3 -1.3 -3 -2.8 V 2.8 C 0 1.3 1.3 0 3 0 h 144 c 1.7 0 3 1.3 3 2.8 v 69.4 C 150 73.7 148.7 75 147 75 Z" />
                <path d="M 147.2 74 H 2.8 c -1.3 0 -2.3 -0.6 -2.3 -1.4 V 68 h 149 v 4.6 C 149.5 73.3 148.4 74 147.2 74 Z" fill="{{:RatingColor}}" />
                <path style="fill: none; stroke: #D0D0D0; stroke-miterlimit: 10;" d="M 147.2 74.5 H 2.8 c -1.3 0 -2.3 -0.9 -2.3 -2.1 V 2.6 c 0 -1.2 1 -2.1 2.3 -2.1 h 144.5 c 1.3 0 2.3 0.9 2.3 2.1 v 69.8 C 149.5 73.5 148.4 74.5 147.2 74.5 Z" />
                <text transform="matrix(1 0 0 1 61.0801 16.0686)" style="fill: #2D2D2D; font-family: Segoe UI;font-weight:bold; font-size: 10px;">{{:Name}}</text>
                <text transform="matrix(1 0 0 1 61.0801 32.6208)" style="font-size: 10px; fill: #2D2D3A; font-family: Segoe UI;font-size: 9px;">{{:Designation:}}</text>
                <text transform="matrix(1 0 0 1 61.0801 44.4484)" style="font-size: 10px; fill: #2D2D3A; font-family: 'Segoe UI';font-size: 9px;">xyz@abc.com</text>
                <text transform="matrix(1 0 0 1 61.0801 57.987)" style="font-size: 10px; fill: #2D2D3A; font-family: 'Segoe UI';font-size: 9px;">456 789</text>
                <image style="overflow: visible; enable-background: new;" width="116" height="121" xlink:href="{{:ImageUrl}}" transform="matrix(0.3763 0 0 0.3798 6.2543 10.1381)">
                </image>
            </g>
	</svg>
</script>
<script>
    function nodeTemplate(diagram, node) {
    	node.source = "Content/images/radialtree/" + node.ImageUrl;
    }
    
    function diagramCreate(){
    	$("#diagram1").ejDiagram("instance").fitToPage();
    }
</script>