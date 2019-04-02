<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>

<div class="cols-sample-area">
<ej:pivotGrid id="PivotGrid1">
<ej:pivotGrid-dataSource catalog="Adventure Works DW 2008 SE" cube="Adventure Works" data="//bi.syncfusion.com/olap/msmdpump.dll">
<ej:pivotGrid-dataSource-rows>
<ej:pivotGrid-dataSource-row fieldName="[Date].[Fiscal]"></ej:pivotGrid-dataSource-row>
</ej:pivotGrid-dataSource-rows>
<ej:pivotGrid-dataSource-columns>
<ej:pivotGrid-dataSource-column fieldName="[Customer].[Customer Geography]"></ej:pivotGrid-dataSource-column>
</ej:pivotGrid-dataSource-columns>
<ej:pivotGrid-dataSource-values>
<ej:pivotGrid-dataSource-value axis="columns">
<ej:pivotGrid-dataSource-value-measures>
<ej:pivotGrid-dataSource-value-measure fieldName="[Measures].[Internet Sales Amount]"></ej:pivotGrid-dataSource-value-measure>
</ej:pivotGrid-dataSource-value-measures>
</ej:pivotGrid-dataSource-value></ej:pivotGrid-dataSource-values>
</ej:pivotGrid-dataSource>
</ej:pivotGrid>
</div>
<style>
    #PivotGrid1 {
        min-height: 275px; 
        min-width: 525px; 
        height: 450px; 
        width: 850px;
        overflow:auto;
    }
    .cols-sample-area{
		width:90%;
	}
</style>
