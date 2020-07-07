<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<script type="text/javascript" src="Scripts/jquery.validate.min.js"></script>
<script type="text/javascript" src="Scripts/jquery.validate.unobtrusive.min.js"></script>
<div class="cols-sample-area">
<ej:spreadsheet id="spreadsheet" loadComplete="loadComplete" allowFormulaBar="false" showRibbon="false">
	<ej:spreadsheet-scrollSettings width="900" height="500"></ej:spreadsheet-scrollSettings>
	<ej:spreadsheet-sheets>
			<ej:spreadsheet-sheet>
				<ej:spreadsheet-sheet-rows>
					<ej:spreadsheet-sheet-row>
						<ej:spreadsheet-sheet-row-cells>
							<ej:spreadsheet-sheet-row-cell  value="Item Name">
								<ej:spreadsheet-sheets-rows-cells-style fontWeight="bold" color="#FFFFFF" backgroundColor="#428bca"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Quantity">
								<ej:spreadsheet-sheets-rows-cells-style fontWeight="bold" color="#FFFFFF" backgroundColor="#428bca"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Price">
								<ej:spreadsheet-sheets-rows-cells-style fontWeight="bold" color="#FFFFFF" backgroundColor="#428bca"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Amount">
								<ej:spreadsheet-sheets-rows-cells-style fontWeight="bold" color="#FFFFFF" backgroundColor="#428bca"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Stock Detail">
								<ej:spreadsheet-sheets-rows-cells-style fontWeight="bold" color="#FFFFFF" backgroundColor="#428bca"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Website">
								<ej:spreadsheet-sheets-rows-cells-style fontWeight="bold" color="#FFFFFF" backgroundColor="#428bca"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
						</ej:spreadsheet-sheet-row-cells>
					</ej:spreadsheet-sheet-row>
					<ej:spreadsheet-sheet-row>
						<ej:spreadsheet-sheet-row-cells>
							<ej:spreadsheet-sheet-row-cell  value="Casual Shoes">
								<ej:spreadsheet-sheets-rows-cells-comment value="Casual Footwears with wide variety of colors."></ej:spreadsheet-sheets-rows-cells-comment>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="10">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="20">
								<ej:spreadsheet-sheets-rows-cells-format type="currency"></ej:spreadsheet-sheets-rows-cells-format>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="=B2*C2">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="OUT OF STOCK">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Amazon">
								<ej:spreadsheet-sheets-rows-cells-hyperlink webAddr="www.amazon.com"></ej:spreadsheet-sheets-rows-cells-hyperlink>
							</ej:spreadsheet-sheet-row-cell>
						</ej:spreadsheet-sheet-row-cells>
					</ej:spreadsheet-sheet-row>
					<ej:spreadsheet-sheet-row>
						<ej:spreadsheet-sheet-row-cells>
							<ej:spreadsheet-sheet-row-cell  value="Sports Shoes">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="20">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="30">
								<ej:spreadsheet-sheets-rows-cells-format type="currency"></ej:spreadsheet-sheets-rows-cells-format>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="=B3*C3">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="IN STOCK">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="AliExpress">
								<ej:spreadsheet-sheets-rows-cells-hyperlink webAddr="www.aliexpress.com"></ej:spreadsheet-sheets-rows-cells-hyperlink>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
						</ej:spreadsheet-sheet-row-cells>
					</ej:spreadsheet-sheet-row>
					<ej:spreadsheet-sheet-row>
						<ej:spreadsheet-sheet-row-cells>
							<ej:spreadsheet-sheet-row-cell  value="Formal Shoes">
								<ej:spreadsheet-sheets-rows-cells-comment value="Formal Footwears with wide range of sizes."></ej:spreadsheet-sheets-rows-cells-comment>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="20">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="15">
								<ej:spreadsheet-sheets-rows-cells-format type="currency"></ej:spreadsheet-sheets-rows-cells-format>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="=B4*C4">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="IN STOCK">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Amazon">
								<ej:spreadsheet-sheets-rows-cells-hyperlink webAddr="www.amazon.com"></ej:spreadsheet-sheets-rows-cells-hyperlink>
							</ej:spreadsheet-sheet-row-cell>
						</ej:spreadsheet-sheet-row-cells>
					</ej:spreadsheet-sheet-row>
					<ej:spreadsheet-sheet-row>
						<ej:spreadsheet-sheet-row-cells>
							<ej:spreadsheet-sheet-row-cell  value="Sandals & Floaters">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="15">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="20">
								<ej:spreadsheet-sheets-rows-cells-format type="currency"></ej:spreadsheet-sheets-rows-cells-format>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="=B5*C5">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="OUT OF STOCK">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Alibaba">
								<ej:spreadsheet-sheets-rows-cells-hyperlink webAddr="www.alibaba.com"></ej:spreadsheet-sheets-rows-cells-hyperlink>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
						</ej:spreadsheet-sheet-row-cells>
					</ej:spreadsheet-sheet-row>
					<ej:spreadsheet-sheet-row>
						<ej:spreadsheet-sheet-row-cells>
							<ej:spreadsheet-sheet-row-cell  value="Flip-Flops & Slippers">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="30">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="10">
								<ej:spreadsheet-sheets-rows-cells-format type="currency"></ej:spreadsheet-sheets-rows-cells-format>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="=B6*C6">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="IN STOCK">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Ebay">
								<ej:spreadsheet-sheets-rows-cells-hyperlink webAddr="www.ebay.com"></ej:spreadsheet-sheets-rows-cells-hyperlink>
							</ej:spreadsheet-sheet-row-cell>
						</ej:spreadsheet-sheet-row-cells>
					</ej:spreadsheet-sheet-row>
					<ej:spreadsheet-sheet-row>
						<ej:spreadsheet-sheet-row-cells>
							<ej:spreadsheet-sheet-row-cell  value="Sneakers">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
								<ej:spreadsheet-sheets-rows-cells-comment value="Sneakers with recent designs."></ej:spreadsheet-sheets-rows-cells-comment>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="40">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="20">
								<ej:spreadsheet-sheets-rows-cells-format type="currency"></ej:spreadsheet-sheets-rows-cells-format>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="=B7*C7">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="OUT OF STOCK">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Amazon">
								<ej:spreadsheet-sheets-rows-cells-hyperlink webAddr="www.amazon.com"></ej:spreadsheet-sheets-rows-cells-hyperlink>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
						</ej:spreadsheet-sheet-row-cells>
					</ej:spreadsheet-sheet-row>
					<ej:spreadsheet-sheet-row>
						<ej:spreadsheet-sheet-row-cells>
							<ej:spreadsheet-sheet-row-cell  value="Running Shoes">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="20">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="10">
								<ej:spreadsheet-sheets-rows-cells-format type="currency"></ej:spreadsheet-sheets-rows-cells-format>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="=B8*C8">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="IN STOCK">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="AliExpress">
								<ej:spreadsheet-sheets-rows-cells-hyperlink webAddr="www.aliexpress.com"></ej:spreadsheet-sheets-rows-cells-hyperlink>
							</ej:spreadsheet-sheet-row-cell>
						</ej:spreadsheet-sheet-row-cells>
					</ej:spreadsheet-sheet-row>
					<ej:spreadsheet-sheet-row>
						<ej:spreadsheet-sheet-row-cells>
							<ej:spreadsheet-sheet-row-cell  value="Loafers">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="31">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="10">
								<ej:spreadsheet-sheets-rows-cells-format type="currency"></ej:spreadsheet-sheets-rows-cells-format>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="=B9*C9">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="OUT OF STOCK">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Alibaba">
								<ej:spreadsheet-sheets-rows-cells-hyperlink webAddr="www.alibaba.com"></ej:spreadsheet-sheets-rows-cells-hyperlink>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
						</ej:spreadsheet-sheet-row-cells>
					</ej:spreadsheet-sheet-row>
					<ej:spreadsheet-sheet-row>
						<ej:spreadsheet-sheet-row-cells>
							<ej:spreadsheet-sheet-row-cell  value="Cricket Shoes">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="41">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="30">
								<ej:spreadsheet-sheets-rows-cells-format type="currency"></ej:spreadsheet-sheets-rows-cells-format>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="=B10*C10">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="IN STOCK">
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Ebay">
								<ej:spreadsheet-sheets-rows-cells-hyperlink webAddr="www.ebay.com"></ej:spreadsheet-sheets-rows-cells-hyperlink>
							</ej:spreadsheet-sheet-row-cell>
						</ej:spreadsheet-sheet-row-cells>
					</ej:spreadsheet-sheet-row>
					<ej:spreadsheet-sheet-row>
						<ej:spreadsheet-sheet-row-cells>
							<ej:spreadsheet-sheet-row-cell  value="T-Shirts">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="50">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="10">
								<ej:spreadsheet-sheets-rows-cells-format type="currency"></ej:spreadsheet-sheets-rows-cells-format>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="=B11*C11">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="OUT OF STOCK">
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="Amazon">
								<ej:spreadsheet-sheets-rows-cells-hyperlink webAddr="www.amazon.com"></ej:spreadsheet-sheets-rows-cells-hyperlink>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#E5F3FF"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
						</ej:spreadsheet-sheet-row-cells>
					</ej:spreadsheet-sheet-row>
					<ej:spreadsheet-sheet-row>
						<ej:spreadsheet-sheet-row-cells>
							<ej:spreadsheet-sheet-row-cell>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#428bca"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#428bca"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell value="Total Amount" index="2">
								<ej:spreadsheet-sheets-rows-cells-style fontWeight="bold" color="#FFFFFF" backgroundColor="#428bca"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell  value="=Sum(D2:D11)">
								<ej:spreadsheet-sheets-rows-cells-style fontWeight="bold" color="#FFFFFF" backgroundColor="#428bca"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#428bca"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
							<ej:spreadsheet-sheet-row-cell>
								<ej:spreadsheet-sheets-rows-cells-style backgroundColor="#428bca"></ej:spreadsheet-sheets-rows-cells-style>
							</ej:spreadsheet-sheet-row-cell>
						</ej:spreadsheet-sheet-row-cells>
					</ej:spreadsheet-sheet-row>
				</ej:spreadsheet-sheet-rows>
			</ej:spreadsheet-sheet>
		</ej:spreadsheet-sheets>
</ej:spreadsheet>
</div>
<script>
    function loadComplete(args) {
        this.setWidthToColumns([140, 100, 100, 110, 140, 100, 110]);
    }
</script>
<style>
.cols-sample-area {
	width: 900px;
	height: 500px;
}
</style>