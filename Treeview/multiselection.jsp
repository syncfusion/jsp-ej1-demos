<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page import="datasource.treeview.*"%>
<%@ page import="java.util.ArrayList"%>
<%
	GetTreeDataSource obj = new GetTreeDataSource();
	ArrayList<TreeDataSource> treedatas = obj.getSelectionData();
	request.setAttribute("treeData", treedatas);	
%>

<div class="cols-sample-area">
<div style="width: 250px; max-width:100%">
<ej:treeView id="tree" allowMultiSelection="true" allowDragAndDrop="true" enableAnimation="false">
<ej:treeView-fields id="Id" dataSource="${treeData}" parentId="PId" text="Name" hasChild="HasChild" 
	expanded="Expanded" selected="Selected">
</ej:treeView-fields>
</ej:treeView>
</div>
</div>
