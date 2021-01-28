
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<div class="cols-sample-area">
	<div class="control">
		<table>
			<tr>
				<td class="btn_label">Normal</td>
				<td class="btnsht">
					<div class="spltspan">
						<ej:splitButton id="normal" showRoundedCorner="true" size="normal"
							contentType="imageonly" prefixIcon="e-icon e-mediaplay">
							<ej:splitButton-splitButtonItems>
								<ej:splitButton-splitButtonItem text="User"></ej:splitButton-splitButtonItem>
								<ej:splitButton-splitButtonItem text="Guest"></ej:splitButton-splitButtonItem>
								<ej:splitButton-splitButtonItem text="Admin"></ej:splitButton-splitButtonItem>
							</ej:splitButton-splitButtonItems>
						</ej:splitButton>
					</div>
				</td>
			</tr>
			<tr>
				<td class="btn_label">Mini</td>
				<td class="btnsht"><ej:splitButton id="mini"
						showRoundedCorner="true" size="mini" text="Login">
						<ej:splitButton-splitButtonItems>
							<ej:splitButton-splitButtonItem text="User"></ej:splitButton-splitButtonItem>
							<ej:splitButton-splitButtonItem text="Guest"></ej:splitButton-splitButtonItem>
							<ej:splitButton-splitButtonItem text="Admin"></ej:splitButton-splitButtonItem>
						</ej:splitButton-splitButtonItems>
					</ej:splitButton></td>
			</tr>

			<tr>
				<td class="btn_label">Small</td>
				<td class="btnsht"><ej:splitButton id="small"
						showRoundedCorner="true" size="small" text="Login">
						<ej:splitButton-splitButtonItems>
							<ej:splitButton-splitButtonItem text="User"></ej:splitButton-splitButtonItem>
							<ej:splitButton-splitButtonItem text="Guest"></ej:splitButton-splitButtonItem>
							<ej:splitButton-splitButtonItem text="Admin"></ej:splitButton-splitButtonItem>
						</ej:splitButton-splitButtonItems>
					</ej:splitButton></td>
			</tr>
			<tr>
				<td class="btn_label">Medium</td>
				<td class="btnsht"><ej:splitButton id="medium"
						showRoundedCorner="true" size="medium" text="Login">
						<ej:splitButton-splitButtonItems>
							<ej:splitButton-splitButtonItem text="User"></ej:splitButton-splitButtonItem>
							<ej:splitButton-splitButtonItem text="Guest"></ej:splitButton-splitButtonItem>
							<ej:splitButton-splitButtonItem text="Admin"></ej:splitButton-splitButtonItem>
						</ej:splitButton-splitButtonItems>
					</ej:splitButton></td>
			</tr>

			<tr>
				<td class="btn_label">Large</td>
				<td class="btnsht"><ej:splitButton id="large"
						showRoundedCorner="true" size="large" text="Login"
						contentType="textandimage" prefixIcon="e-icon e-login">
						<ej:splitButton-splitButtonItems>
							<ej:splitButton-splitButtonItem text="User"></ej:splitButton-splitButtonItem>
							<ej:splitButton-splitButtonItem text="Guest"></ej:splitButton-splitButtonItem>
							<ej:splitButton-splitButtonItem text="Admin"></ej:splitButton-splitButtonItem>
						</ej:splitButton-splitButtonItems>
					</ej:splitButton></td>
			</tr>
		</table>
	</div>
</div>


<style>
.cols-sample-area {
	width: 75%;
}

table {
	margin: auto;
}

td {
	padding: 11px;
}

td.btn_label {
	padding: 0 19px;
}

.spltspan {
	width: 50px;
}
</style>
