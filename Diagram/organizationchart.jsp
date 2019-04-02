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
    Object data = obj.getDiagramOrgChartData();
    request.setAttribute("DataSource", data);
    
    HashMap<String, Object> defaultNode = new HashMap<String, Object>();
    HashMap<String, Object> addInfo = new HashMap<String, Object>();
    addInfo.put("orientation", "vertical");
    addInfo.put("type", "alternate");
    defaultNode.put("addInfo", addInfo);
    defaultNode.put("width", 100);
    defaultNode.put("height", 40);
    defaultNode.put("borderColor", "black");
    defaultNode.put("constraints", 2097154);
    
    ArrayList<HashMap<String, Object>> labels = new ArrayList<HashMap<String, Object>>();
    HashMap<String, Object> label = new HashMap<String, Object>();
    label.put("fontColor", "#ffffff");
    labels.add(label);
    defaultNode.put("labels", labels);
    
    request.setAttribute("DefaultNode", defaultNode);
    
    HashMap<String, Object> defaultConnector = new HashMap<String, Object>();
    defaultConnector.put("lineColor", "#000000");
    defaultConnector.put("constraints", 1);
    HashMap<String, Object> targetDecorator = new HashMap<String, Object>();
    targetDecorator.put("shape", "none");
    defaultConnector.put("targetDecorator", targetDecorator);
    
    ArrayList<HashMap<String, Object>> segments = new ArrayList<HashMap<String, Object>>();
    HashMap<String, Object> segment = new HashMap<String, Object>();
    segment.put("type", "orthogonal");
    segments.add(segment);
    defaultConnector.put("segments", segments);
    
    request.setAttribute("DefaultConnector", defaultConnector);
    
    HashMap<String, Object> margin = new HashMap<String, Object>();
    margin.put("top", 50);
    request.setAttribute("LayoutMargin", margin);
    
    %>
	<ej:diagram id="diagram1" width="900px" height="450px" tool="ZoomPan" nodeTemplate="nodeTemplate">
        <ej:diagram-layout type="organizationalchart" getLayoutInfo="getLayoutInfo" margin="${LayoutMargin}">
        </ej:diagram-layout>
        <ej:diagram-pageSettings scrollLimit="diagram"></ej:diagram-pageSettings>
        <ej:diagram-defaultSettings node="${DefaultNode}" connector="${DefaultConnector}"></ej:diagram-defaultSettings>
        <ej:diagram-dataSourceSettings dataSource="${DataSource}" id="Id" parent="Phase"></ej:diagram-dataSourceSettings>
        <ej:diagram-snapSettings snapConstraints="None"></ej:diagram-snapSettings>
	</ej:diagram>
</div>

<script>
	//Binds Custom JSON with node
	function nodeTemplate(diagram, node) {
	   node.labels[0].text = node.Function;
	   node.fillColor = node.Color;
	   if (node.Id == "parent") { node.fillColor = "#3484bb"; }
	   if (node.Phase == "parent") { node.fillColor = "#9ace7f"; }
	   if (node.Phase == "1") { node.fillColor = "#9264aa"; }
	   if (node.Phase == "2") { node.fillColor = "#9264aa"; }
	   if (node.Phase == "3") { node.fillColor = "#9264aa"; }
	}
	
	//Customize subtree orientation
    function getLayoutInfo(diagram, node, options) {
        if (!options.hasSubTree) {
            options.orientation = node.addInfo.orientation;
            options.type = node.addInfo.type;

        }
    }
</script>