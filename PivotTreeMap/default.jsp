<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>

<div class="cols-sample-area">
<ej:pivotTreeMap id="PivotTreeMap1">
<ej:pivotTreeMap-dataSource catalog="Adventure Works DW 2008 SE" cube="Adventure Works" data="//bi.syncfusion.com/olap/msmdpump.dll">
<ej:pivotTreeMap-dataSource-rowCollections>
<ej:pivotTreeMap-dataSource-rows fieldName="[Date].[Fiscal]"></ej:pivotTreeMap-dataSource-rows>
</ej:pivotTreeMap-dataSource-rowCollections>
<ej:pivotTreeMap-dataSource-columnCollections>
<ej:pivotTreeMap-dataSource-columns fieldName="[Customer].[Customer Geography]"></ej:pivotTreeMap-dataSource-columns>
</ej:pivotTreeMap-dataSource-columnCollections>
<ej:pivotTreeMap-dataSource-valueCollections>
<ej:pivotTreeMap-dataSource-values axis="columns">
<ej:pivotTreeMap-dataSource-values-measureCollections>
<ej:pivotTreeMap-dataSource-values-measure fieldName="[Measures].[Internet Sales Amount]"></ej:pivotTreeMap-dataSource-values-measure>
</ej:pivotTreeMap-dataSource-values-measureCollections>
</ej:pivotTreeMap-dataSource-values>
</ej:pivotTreeMap-dataSource-valueCollections>
</ej:pivotTreeMap-dataSource>
</ej:pivotTreeMap>
</div>
<script id="tooltipTemplate" type="application/jsrender">
	<div style="background:White; color:black; font-size:12px; font-weight:normal; border: 1px solid #4D4D4D; white-space: nowrap;border-radius: 2px; margin-right: 25px; min-width: 110px;padding-right: 5px; padding-left: 5px; padding-bottom: 2px ;width: auto; height: auto;">
		<div>Measure(s) : {{:~Measures(#data)}}</div><div>Row : {{:~Row(#data)}}</div><div>Column : {{:~Column(#data)}}</div><div>Value : {{:~Value(#data)}}</div>
	</div>
</script>   
<style>
    #PivotTreeMap1 {
        min-height: 275px; 
        min-width: 525px; 
        height: 450px; 
        width: 99%;
    }
    .cols-sample-area{
		width:90%;
	}
</style>