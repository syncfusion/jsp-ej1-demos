<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>

<div class="cols-sample-area">
<ej:pivotChart id="PivotChart1" isResponsive="true" load="onLoad">
<ej:pivotChart-dataSource data="//bi.syncfusion.com/olap/msmdpump.dll" catalog="Adventure Works DW 2008 SE" cube="Adventure Works">
<ej:pivotChart-dataSource-rows>
<ej:pivotChart-dataSource-row fieldName="[Date].[Fiscal]"></ej:pivotChart-dataSource-row>
</ej:pivotChart-dataSource-rows>
<ej:pivotChart-dataSource-columns>
<ej:pivotChart-dataSource-column fieldName="[Customer].[Customer Geography]"></ej:pivotChart-dataSource-column>
</ej:pivotChart-dataSource-columns>
<ej:pivotChart-dataSource-values>
<ej:pivotChart-dataSource-value axis="columns">
<ej:pivotChart-dataSource-value-measures>
<ej:pivotChart-dataSource-value-measure fieldName="[Measures].[Internet Sales Amount]"></ej:pivotChart-dataSource-value-measure>
</ej:pivotChart-dataSource-value-measures>
</ej:pivotChart-dataSource-value>
</ej:pivotChart-dataSource-values>
</ej:pivotChart-dataSource>
<ej:pivotChart-commonSeriesOptions type="column"></ej:pivotChart-commonSeriesOptions>
</ej:pivotChart>
</div>
<script type="text/javascript">

    function onLoad(args) {
        args.model.commonSeriesOptions.enableAnimation = true;
        args.model.commonSeriesOptions.tooltip.visible = true;
        args.model.primaryYAxis.title.text = "Amount";     
		args.model.size.height = "450px";
		args.model.size.width = "100%";
		args.model.zooming.enableScrollbar = true;
    }
</script>
<style>
    #PivotChart1 {
        min-height: 275px; 
        min-width: 525px; 
        height: 450px; 
        width: 100%;
        float:left;
    }
    .cols-sample-area{
		width:90%;
	}
</style>