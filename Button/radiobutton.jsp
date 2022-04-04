
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<div class="control">
		<div class="radioalign">
			<br />
			<div class="btn_label">Category</div>
			<br />
			<table>
				<tr>
					<td class="chkrad"><ej:radioButton id="Radio1" name="small"
							checked="true"></ej:radioButton> <label for="Radio1"
						class="clslab">Fresher</label></td>
					<td class="chkrad" colspan="2"><ej:radioButton id="Radio3"
							name="small"></ej:radioButton> <label for="Radio3" class="clslab">Experienced</label></td>
				</tr>
			</table>
			<br /> <br /> <span class="btn_label">Experienced</span> <br /> <br />
			<table>
				<tr>
					<td class="chkrad"><ej:radioButton id="Radio2" name="medium"></ej:radioButton>
						<label for="Radio2" class="clslab">1+ years</label></td>
					<td class="chkrad"><ej:radioButton id="Radio4" name="medium"></ej:radioButton><label
						for="Radio4" class="clslab">2.5+years</label></td>
					<td class="chkrad"><ej:radioButton id="Radio5" name="medium"
							checked="true"></ej:radioButton><label for="Radio5"
						class="clslab">5+years</label></td>
				</tr>
			</table>
			<br />
		</div>
	</div>
</div>




<style>
.cols-sample-area {
	width: 75%;
}

.control {
	margin-left: 35%;
}

.btn_label {
	font-weight: 600;
}

td {
	padding: 11px;
}
</style>
