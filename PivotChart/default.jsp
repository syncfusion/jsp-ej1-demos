<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>

<div class="cols-sample-area">
<ej:pivotChart id="PivotChart1" isResponsive="true" load="onLoad">
<ej:pivotChart-dataSource>
<ej:pivotChart-dataSource-rows>
<ej:pivotChart-dataSource-row fieldName="Date" fieldCaption="Date"></ej:pivotChart-dataSource-row>
<ej:pivotChart-dataSource-row fieldName="Product" fieldCaption="Product"></ej:pivotChart-dataSource-row>
</ej:pivotChart-dataSource-rows>
<ej:pivotChart-dataSource-columns>
<ej:pivotChart-dataSource-column fieldName="Country" fieldCaption="Country"></ej:pivotChart-dataSource-column>
</ej:pivotChart-dataSource-columns>
<ej:pivotChart-dataSource-values>
<ej:pivotChart-dataSource-value fieldName="Amount" fieldCaption="Amount"></ej:pivotChart-dataSource-value>
</ej:pivotChart-dataSource-values>
</ej:pivotChart-dataSource>
<ej:pivotChart-commonSeriesOptions type="column"></ej:pivotChart-commonSeriesOptions>
</ej:pivotChart>
</div>
<script type="text/javascript">

    function onLoad(args) {
        args.model.dataSource.data = [
	                    { Amount: 100, Country: "Canada", Date: "FY 2005", Product: "Bike", Quantity: 2, State: "Alberta" },
	                    { Amount: 200, Country: "Canada", Date: "FY 2006", Product: "Van", Quantity: 3, State: "British Columbia" },
	                    { Amount: 300, Country: "Canada", Date: "FY 2007", Product: "Car", Quantity: 4, State: "Brunswick" },
	                    { Amount: 150, Country: "Canada", Date: "FY 2008", Product: "Bike", Quantity: 3, State: "Manitoba" },
	                    { Amount: 200, Country: "Canada", Date: "FY 2006", Product: "Car", Quantity: 4, State: "Ontario" },
	                    { Amount: 100, Country: "Canada", Date: "FY 2007", Product: "Van", Quantity: 1, State: "Quebec" },
	                    { Amount: 200, Country: "France", Date: "FY 2005", Product: "Bike", Quantity: 2, State: "Charente-Maritime" },
	                    { Amount: 250, Country: "France", Date: "FY 2006", Product: "Van", Quantity: 4, State: "Essonne" },
	                    { Amount: 300, Country: "France", Date: "FY 2007", Product: "Car", Quantity: 3, State: "Garonne (Haute)" },
	                    { Amount: 150, Country: "France", Date: "FY 2008", Product: "Van", Quantity: 2, State: "Gers" },
	                    { Amount: 200, Country: "Germany", Date: "FY 2006", Product: "Van", Quantity: 3, State: "Bayern" },
	                    { Amount: 250, Country: "Germany", Date: "FY 2007", Product: "Car", Quantity: 3, State: "Brandenburg" },
	                    { Amount: 150, Country: "Germany", Date: "FY 2008", Product: "Car", Quantity: 4, State: "Hamburg" },
	                    { Amount: 200, Country: "Germany", Date: "FY 2008", Product: "Bike", Quantity: 4, State: "Hessen" },
	                    { Amount: 150, Country: "Germany", Date: "FY 2007", Product: "Van", Quantity: 3, State: "Nordrhein-Westfalen" },
	                    { Amount: 100, Country: "Germany", Date: "FY 2005", Product: "Bike", Quantity: 2, State: "Saarland" },
	                    { Amount: 150, Country: "United Kingdom", Date: "FY 2008", Product: "Bike", Quantity: 5, State: "England" },
	                    { Amount: 250, Country: "United States", Date: "FY 2007", Product: "Car", Quantity: 4, State: "Alabama" },
	                    { Amount: 200, Country: "United States", Date: "FY 2005", Product: "Van", Quantity: 4, State: "California" },
	                    { Amount: 100, Country: "United States", Date: "FY 2006", Product: "Bike", Quantity: 2, State: "Colorado" },
	                    { Amount: 150, Country: "United States", Date: "FY 2008", Product: "Car", Quantity: 3, State: "New Mexico" },
	                    { Amount: 200, Country: "United States", Date: "FY 2005", Product: "Bike", Quantity: 4, State: "New York" },
	                    { Amount: 250, Country: "United States", Date: "FY 2008", Product: "Car", Quantity: 3, State: "North Carolina" },
	                    { Amount: 300, Country: "United States", Date: "FY 2007", Product: "Van", Quantity: 4, State: "South Carolina" }
	    ];
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