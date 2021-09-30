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
    Object data = obj.getDiagramHierarchicalData();
    request.setAttribute("DataSource", data);
    
    HashMap<String, Object> defaultNode = new HashMap<String, Object>();
    defaultNode.put("width", 100);
    defaultNode.put("height", 40);
    defaultNode.put("borderColor", "black");
    defaultNode.put("borderWidth", 1);
    defaultNode.put("constraints", 2097154);
    defaultNode.put("fillColor", "#88C65C");
    ArrayList<HashMap<String, Object>> labels = new ArrayList<HashMap<String, Object>>();
    HashMap<String, Object> label = new HashMap<String, Object>();
    label.put("fontColor", "white");
    label.put("fontSize", 12);
    labels.add(label);
    defaultNode.put("labels", labels);
    request.setAttribute("DefaultNode", defaultNode);
    
    HashMap<String, Object> defaultConnector = new HashMap<String, Object>();
    defaultConnector.put("lineColor", "#000000");
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
	<ej:diagram id="diagram1" width="700px" height="400px" tool="SingleSelect" nodeTemplate="nodeTemplate">
        <ej:diagram-layout type="hierarchicaltree" horizontalSpacing="25" verticalSpacing="35" margin="${LayoutMargin}">
        </ej:diagram-layout>
        <ej:diagram-pageSettings scrollLimit="diagram"></ej:diagram-pageSettings>
        <ej:diagram-defaultSettings node="${DefaultNode}" connector="${DefaultConnector}"></ej:diagram-defaultSettings>
        
        <ej:diagram-dataSourceSettings dataSource="${DataSource}" id="Name" parent="Category"></ej:diagram-dataSourceSettings>
        <ej:diagram-snapSettings snapConstraints="None"></ej:diagram-snapSettings>
	</ej:diagram>
</div>

<script>
    function nodeTemplate(diagram, node) {
        node.labels[0].text = node.Name;
    }
</script>