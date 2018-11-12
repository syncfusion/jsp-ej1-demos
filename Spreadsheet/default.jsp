
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@page import="datasource.GetJsonData" %>
<%
   GetJsonData obj =new GetJsonData();
    Object data = obj.getSpreadData();
    request.setAttribute("DataSource", data);
    %>
<script type="text/javascript" src="Scripts/jquery.validate.min.js"></script>
<script type="text/javascript" src="Scripts/jquery.validate.unobtrusive.min.js"></script>
<div class="cols-sample-area">
	<ej:spreadsheet id="spreadsheet" loadComplete="loadComplete">
		<ej:spreadsheet-scrollSettings width="900" height="500"></ej:spreadsheet-scrollSettings>
		<ej:spreadsheet-exportSettings excelUrl="//js.syncfusion.com/demos/ejservices/api/Spreadsheet/ExcelExport" pdfUrl="//js.syncfusion.com/demos/ejservices/api/Spreadsheet/PdfExport" csvUrl="//js.syncfusion.com/demos/ejservices/api/Spreadsheet/CsvExport"></ej:spreadsheet-exportSettings>
		<ej:spreadsheet-importSettings importMapper="//js.syncfusion.com/demos/ejservices/api/Spreadsheet/Import"></ej:spreadsheet-importSettings>
		<ej:spreadsheet-sheets>
			<ej:spreadsheet-sheet>
				<ej:spreadsheet-sheet-rangeSettings>
					<ej:spreadsheet-sheet-rangeSetting dataSource="${DataSource}"></ej:spreadsheet-sheet-rangeSetting>
				</ej:spreadsheet-sheet-rangeSettings>
			</ej:spreadsheet-sheet>
		</ej:spreadsheet-sheets>
	</ej:spreadsheet>
</div>
<script>
	function loadComplete(args) {
        var xlFormat = this.XLFormat;
        if (!this.isImport) {
            this.setWidthToColumns([140, 128, 105, 100, 100, 110, 120, 120, 100]);
            xlFormat.format({ "style": { "font-weight": "bold" } }, "A1:H1");
            xlFormat.format({ "type": "currency" }, "B2:D11");
			xlFormat.format({ "type": "currency" }, "G2:G11");
            this.XLRibbon.updateRibbonIcons();
        }
    }
</script>
<style>
.cols-sample-area {
	width: 900px;
	height: 500px;
}
</style>
