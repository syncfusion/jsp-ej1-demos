<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="datasource.GetJsonData"%>

<div class="cols-sample-area">
	<%
	GetJsonData obj =new GetJsonData();
    Object data = obj.getTreegridTemplateData();
    request.setAttribute("DataSource", data);
    %>

	<ej:treeGrid id="treetemplate" dataSource="${DataSource}"
		childMapping="Children" rowHeight="48">
				<ej:treeGrid-columns>
		<ej:treeGrid-column field="Name" headerText="Name"  isTemplateColumn="true"  templateID= "customColumnTemplate" ></ej:treeGrid-column>
		<ej:treeGrid-column field="Type" headerText="Type"></ej:treeGrid-column>
		<ej:treeGrid-column field="DateCreated" headerText="Date Created"></ej:treeGrid-column>
		<ej:treeGrid-column field="DateModified" headerText="Date Modified"></ej:treeGrid-column>
		</ej:treeGrid-columns>
		<ej:treeGrid-sizeSettings width="100%" height="300px"></ej:treeGrid-sizeSettings>
	</ej:treeGrid>
</div>
<style>
.cols-sample-area {
	width: 80%;
}
</style>
<script type="text/x-jsrender" id="customColumnTemplate">
        <div style='height:20px;' unselectable='on'>
            {{if hasChildRecords}}<div class='intend' style='height:1px; float:left; width:{{:level*20}}px; display:inline-block;'></div>
            {{else !hasChildRecords}}
            <div class='intend' style='height:1px; float:left; width:{{:(level)*20}}px; display:inline-block;'></div>
            {{/if}}
            <div class='{{if expanded}}e-treegridexpand {{else hasChildRecords}}e-treegridcollapse {{/if}} {{if level===4}}e-doc{{/if}}' style='height:20px;width:30px;margin:auto;float:left;margin-left:10px;
       style=' float left;display:inline-block; unselectable='on'></div>
            <div class='e-cell' style='display:inline-block;width:100%' unselectable='on'>{{:#data['Name']}}</div>
        </div>
    </script>

<style type="text/css">
.e-treegrid .e-treegridexpand {
	background-image: url(Content/images/treegrid/folder-open.png);
	background-repeat: no-repeat;
	width: 14px;
	height: 14px;
}

.e-treegrid .e-treegridcollapse {
	background-image: url(Content/images/treegrid/Folder.png);
	background-repeat: no-repeat;
	width: 14px;
	height: 14px;
}

.e-treegrid .e-doc {
	background-image: url(Content/images/treegrid/Document.png);
	background-repeat: no-repeat;
	width: 14px;
	height: 14px;
}

.e-treegrid .e-treegridexpand:before {
	content: none;
}

.e-treegrid .e-treegridcollapse:before {
	content: none;
}
.e-treegrid .e-treegridcollapse:after,
.e-treegrid .e-treegridexpand:after {
    opacity: 0;
}

</style>

