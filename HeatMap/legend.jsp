<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.util.HashMap"%>

<div class="cols-sample-area">

<%
    String[] columns = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
    String[] rows = {"Peter Scott", "Maria Anders", "John Camino", "Philips Cramer", "Robert King", "Simon Crowther"};
    ArrayList<HashMap<String, Object>> itemSource = new ArrayList<HashMap<String, Object>>();
    for (int i = 0; i < rows.length; i++) {
    	HashMap<String, Object> json1 = new HashMap<String, Object>();
        json1.put("EmpName", rows[i]);
        for(int j = 0; j < columns.length; j++) {
            json1.put(columns[j], Math.floor((Math.random() * 10) + 1));
        }
        itemSource.add(json1);
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
        <label class="ht-label1">Employee Rating in a Year</label><br />
    </div>
    <div style="width: 700px; margin: 0 auto; text-align: center;">
        <div style="width: 700px; margin: 0 auto; text-align: center;">
            <ej:heatMap id="heatMap1" width="500px" isResponsive="true" itemsSource="${DataSource}" legendCollection="${LegendCollection}" >
                <ej:heatMap-itemsMapping columnMapping="${ColumnMapping}">
                    <ej:heatMap-itemsMapping-headerMapping propertyName="EmpName" displayName="Employee Name">
                        <ej:heatMap-itemsMapping-columnStyle width="110" textAlign="right"></ej:heatMap-itemsMapping-columnStyle>
                    </ej:heatMap-itemsMapping-headerMapping>
                </ej:heatMap-itemsMapping>
                <ej:heatMap-colorMappingCollection>
                    <ej:heatMap-colorMapping color="#fe0002" value="0">
                        <ej:heatMap-colorMappingCollection-label text="Poor">
                        </ej:heatMap-colorMappingCollection-label>
                    </ej:heatMap-colorMapping>
                    <ej:heatMap-colorMapping color="#ffff01" value="3">
                        <ej:heatMap-colorMappingCollection-label text="Average">
                        </ej:heatMap-colorMappingCollection-label>
                    </ej:heatMap-colorMapping>
                    <ej:heatMap-colorMapping color="#13ab11" value="6">
                        <ej:heatMap-colorMappingCollection-label text="Good">
                        </ej:heatMap-colorMappingCollection-label>
                    </ej:heatMap-colorMapping>
                    <ej:heatMap-colorMapping color="#005ba2" value="10">
                        <ej:heatMap-colorMappingCollection-label text="Excellent">
                        </ej:heatMap-colorMappingCollection-label>
                    </ej:heatMap-colorMapping>
                </ej:heatMap-colorMappingCollection>
            </ej:heatMap>
            <div style="height: 15px; width: 100%;"></div>
        </div>
        <div style="height: 15px; width: 100%;"></div>
        <div style="height: 100px; width: 100%; margin-left: 100px;">
            <ej:heatMapLegend id="heatMapLegend1" width="75%" height="50px" isResponsive="true" legendMode="list">
                <ej:heatMapLegend-colorMappingCollection>
                    <ej:heatMapLegend-colorMapping color="#fe0002" value="0">
                        <ej:heatMapLegend-colorMappingCollection-label text="Poor">
                        </ej:heatMapLegend-colorMappingCollection-label>
                    </ej:heatMapLegend-colorMapping>
                    <ej:heatMapLegend-colorMapping color="#ffff01" value="3">
                        <ej:heatMapLegend-colorMappingCollection-label text="Average">
                        </ej:heatMapLegend-colorMappingCollection-label>
                    </ej:heatMapLegend-colorMapping>
                    <ej:heatMapLegend-colorMapping color="#13ab11" value="6">
                        <ej:heatMapLegend-colorMappingCollection-label text="Good">
                        </ej:heatMapLegend-colorMappingCollection-label>
                    </ej:heatMapLegend-colorMapping>
                    <ej:heatMapLegend-colorMapping color="#005ba2" value="10">
                        <ej:heatMapLegend-colorMappingCollection-label text="Excellent">
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
</style>
