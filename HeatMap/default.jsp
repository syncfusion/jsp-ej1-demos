<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.util.HashMap"%>

<div class="cols-sample-area">

<%
    String[] columns = {"Vegie-spread", "Tofuaa", "Alice Mutton", "Konbu", "Fløtemysost", "Kgfhka"};
	ArrayList<HashMap<String, Object>> itemSource = new ArrayList<HashMap<String, Object>>();
    for (int i = 0; i < columns.length; i++) {
        for (int j = 0; j < 6; j++) {
        	HashMap<String, Object> json1 = new HashMap<String, Object>();
            double value = Math.floor((Math.random() * 100) + 1);
            json1.put("ProductName", columns[i]);
            json1.put("Year", "Y" + (2011 + j)); 
            json1.put("Value", value);
            itemSource.add(json1);
        }
    }
    request.setAttribute("DataSource", itemSource);
    ArrayList<HashMap<String, Object>> columnMapping = new ArrayList<HashMap<String, Object>>();
    for (int i = 0; i < columns.length; i++) {
    	HashMap<String, Object> json1 = new HashMap<String, Object>();
        json1.put("propertyName", columns[i]);
        json1.put("displayName", columns[i]);
        columnMapping.add(json1);
    }
    request.setAttribute("ColumnMapping", columnMapping);
    String[] legendCollection = {"heatMapLegend1"};
    request.setAttribute("LegendCollection", legendCollection);
%>
<div style="border-width: 2px; opacity: 0.7; margin-bottom:10px; text-align: center;">
        <label class="ht-label1">Product Sales by Year</label><br />
        <label class="ht-label2">(In Percentage)</label>
    </div>
    <div style="width: 700px; margin: 0 auto; text-align: center;">
        <div style="width: 700px; margin: 0 auto; text-align: center;">
            <ej:heatMap id="heatMap1" width="500px" isResponsive="true" itemsSource="${DataSource}" legendCollection="${LegendCollection}" >
                <ej:heatMap-itemsMapping columnMapping="${ColumnMapping}">
                    <ej:heatMap-itemsMapping-column displayName="Product Name" propertyName="ProductName">
                    </ej:heatMap-itemsMapping-column>
                    <ej:heatMap-itemsMapping-row displayName="Year" propertyName="Year">
                    </ej:heatMap-itemsMapping-row>
                    <ej:heatMap-itemsMapping-value propertyName="Value">
                    </ej:heatMap-itemsMapping-value>
                    <ej:heatMap-itemsMapping-headerMapping propertyName="Year" displayName="Year">
                        <ej:heatMap-itemsMapping-columnStyle width="105" textAlign="right"></ej:heatMap-itemsMapping-columnStyle>
                    </ej:heatMap-itemsMapping-headerMapping>
                </ej:heatMap-itemsMapping>
                <ej:heatMap-colorMappingCollection>
                    <ej:heatMap-colorMapping color="#8ec8f8" value="0">
                        <ej:heatMap-colorMappingCollection-label text="0">
                        </ej:heatMap-colorMappingCollection-label>
                    </ej:heatMap-colorMapping>
                    <ej:heatMap-colorMapping color="#0d47a1" value="100">
                        <ej:heatMap-colorMappingCollection-label text="100">
                        </ej:heatMap-colorMappingCollection-label>
                    </ej:heatMap-colorMapping>
                </ej:heatMap-colorMappingCollection>
            </ej:heatMap>
            <div style="height: 15px; width: 100%;"></div>
        </div>
        <div style="height: 15px; width: 100%;"></div>
        <div style="height: 100px; width: 100%; margin-left: 100px;">
            <ej:heatMapLegend id="heatMapLegend1" width="75%" height="50px" isResponsive="true">
                <ej:heatMapLegend-colorMappingCollection>
                    <ej:heatMapLegend-colorMapping color="#8ec8f8" value="0">
                        <ej:heatMapLegend-colorMappingCollection-label text="0">
                        </ej:heatMapLegend-colorMappingCollection-label>
                    </ej:heatMapLegend-colorMapping>
                    <ej:heatMapLegend-colorMapping color="#0d47a1" value="100">
                        <ej:heatMapLegend-colorMappingCollection-label text="100">
                        </ej:heatMapLegend-colorMappingCollection-label>
                    </ej:heatMapLegend-colorMapping>
                </ej:heatMapLegend-colorMappingCollection>
            </ej:heatMapLegend>
        </div>
</div>
</div>
<style>
    .cols-sample-area {
        text-align: center;
    }

    .ht-label1 {
        color: Black;
        font-size: 22px;
        height: 25px;
        font-weight: Normal;
    }

    .ht-label2 {
        color: Black;
        font-size: 16px;
        margin-top: -2px;
        height: 25px;
        font-weight: normal;
    }
</style>
