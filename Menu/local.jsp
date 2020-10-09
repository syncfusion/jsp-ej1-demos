<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="datasource.MenuData"%>
<%@ page import="datasource.GetMenuData"%>

<div class="cols-sample-area">
<%
	GetMenuData obj=new GetMenuData();
	    ArrayList<MenuData> menudata=obj.getData();
	    request.setAttribute("MenuData",menudata);
	    %>
	    
	<ej:menu id="menujson" width="100%">
		<ej:menu-fields dataSource="${MenuData}" id="id" parentId="parentId" text="text" spriteCssClass="sprite"></ej:menu-fields>
	</ej:menu>
</div>


<style>
.cols-sample-area {
    width: 600px;
    margin: 0 auto;
    float: none;
}
.e-menu li > ul > li > a {
    padding: 3px 24px 3px 35px;
}

[class^="flag-"],
[class*="flag-"] {
    background-image: url("Content/images/autocomplete/flags.png");
    height: 14px;
    left: 2px;
    top: 4px;
    width: 24px;
}

.flag-am {
    background-position: -25px 0;
}

.flag-ar {
    background-position: -50px 0;
}

.flag-bd {
    background-position: -75px 0;
}

.flag-br {
    background-position: -100px 0;
}

.flag-ca {
    background-position: -125px 0;
}

.flag-cn {
    background-position: 0 -15px;
}

.flag-cu {
    background-position: -25px -15px;
}

.flag-dk {
    background-position: -50px -15px;
}

.flag-dz {
    background-position: -75px -15px;
}

.flag-ee {
    background-position: -100px -15px;
}

.flag-eg {
    background-position: -125px -15px;
}

.flag-es {
    background-position: 0 -30px;
}

.flag-fi {
    background-position: -25px -30px;
}

.flag-fr {
    background-position: -50px -30px;
}

.flag-gl {
    background-position: -75px -30px;
}

.flag-id {
    background-position: -100px -30px;
}

.flag-in {
    background-position: -125px -30px;
}

.flag-mx {
    background-position: 0 -45px;
}

.flag-my {
    background-position: -25px -45px;
}

.flag-nl {
    background-position: -50px -45px;
}

.flag-no {
    background-position: -75px -45px;
}

.flag-nz {
    background-position: -100px -45px;
}

.flag-pl {
    background-position: -125px -45px;
}

.flag-pt {
    background-position: 0 -60px;
}

.flag-qa {
    background-position: -25px -60px;
}

.flag-ro {
    background-position: -50px -60px;
}

.flag-sa {
    background-position: -75px -60px;
}

.flag-sg {
    background-position: -100px -60px;
}

.flag-th {
    background-position: -125px -60px;
}

.flag-tr {
    background-position: 0 -75px;
}

.flag-ua {
    background-position: -25px -75px;
}

.flag-us {
    background-position: -50px -75px;
}

.flag-uy {
    background-position: -75px -75px;
}

.flag-vn {
    background-position: -100px -75px;
}

.flag-ye {
    background-position: -125px -75px;
}
</style>
