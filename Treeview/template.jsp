<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page import="datasource.treeview.*"%>
<%@ page import="java.util.ArrayList"%>
<%
	GetTreeDataSource obj = new GetTreeDataSource();
	ArrayList<TreeDataSource> treedata = obj.getTemplateData();
	request.setAttribute("treeData", treedata);	
%>

<div class="cols-sample-area">
<div style="width: 320px; max-width:100%">
	<ej:treeView id="TemplateTree" template="#treeTemplate" create="oncreate">
		<ej:treeView-fields id="Id" dataSource="${treeData}" parentId="PId" text="Name" hasChild="HasChild" 
			expanded="Expanded" >
		</ej:treeView-fields>
	</ej:treeView>
</div>
</div>
<script id="treeTemplate" type="text/x-jsrender">
        {{if HasChild}}
        <div class="{{>Name}}-style">{{>Name}}</div>
        {{else}}
        <div class="cont-list">
            <img class="con-img" src="Content/images/treeview/template-image-{{>ImageID}}.png" />
            <div class="cont-del"></div>
            <div class="cont-details">
                <b>{{>Name}}</b><br />
                <span>{{>City}}</span>
                <br />
                <span>{{>Phone}}</span>
            </div>
            <div class="treeFooter"></div>
        </div>
        {{/if}}
    </script>

<script type="text/javascript">
        function oncreate(evt) {
        	var proxy = this;
            this.element.find(".cont-del").bind("click", function (e) {
            	proxy.removeNode($(e.target).parents("li").first());
            });
        }
    </script>
<style>
 
    .e-treeview .e-text.e-node-hover, .e-treeview .e-text.e-active {
        background: transparent;
        border-color: transparent;
    }

    .e-treeview .e-node-hover {
        opacity: 0.8;
    }

    .con-img {
        float: left;
    }

    .cont-list {
        background: none repeat scroll 0 0 white;
        border: 1px solid #BBBCBB;
        height: 85px;
        width: 200px;
        color: #5c5c5c;
        line-height: 17px;
    }

    .cont-details {
        margin-top: 12px;
        font-size: 13px;
    }

    .UK-style {
        background-color: #74A247 !important;
        color: #FFFFFF !important;
    }

    .USA-style {
        background-color: #12A99A !important;
        color: #FFFFFF !important;
    }

    .cont-del {
        background-image: url("Content/images/treeview/remove-icon.png");
        background-position: -6px -10px;
        background-repeat: no-repeat;
        float: right;
        height: 16px;
        width: 16px;
        cursor: pointer;
    }

    .cont-list .treeFooter {
        height: 5px;
        width: 100%;
        background-color: gray;
        margin-top: 17px;
    }
</style>