
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<div class="cols-sample-area">
	<div class="control">
		<div class="frame">
			<br /> Hobbies <br /> <br />
			<table>
				 <tr>
                                    <td class="chkrad">
                                     
                                        <ej:checkBox id="check1"></ej:checkBox>
                                        <label for="check1" class="clslab">Music</label></td>
                                    <td class="chkrad">
                                         <ej:checkBox id="Checkbox3" ></ej:checkBox>
                                        <label for="Checkbox3" class="clslab">Sports</label></td>
                                    <td class="chkrad">
                                         <ej:checkBox id="Checkbox4" ></ej:checkBox>
                                        <label for="Checkbox4" class="clslab">Bike Riding</label></td>
                                </tr>
			</table>
			<br /> <br /> Favorite Search Engines <br /> <br />
			<table>
				<tr>
					<td class="chkrad"> <ej:checkBox id="Checkbox1"  ></ej:checkBox>
						<label for="Checkbox1" class="clslab">Google</label></td>
					<td class="chkrad"> <ej:checkBox id="Checkbox5"  ></ej:checkBox>
						<label for="Checkbox5" class="clslab">Yahoo</label></td>
					<td class="chkrad"> <ej:checkBox id="Checkbox6" ></ej:checkBox>
						<label for="Checkbox6" class="clslab">Bing</label></td>
				</tr>
			</table>
			<br /> <br /> Favorite Social networks <br /> <br />
			<table>
				<tr>
					<td class="chkrad"><ej:checkBox id="Checkbox2"></ej:checkBox>
						<label for="Checkbox2" class="clslab">Facebook</label></td>
					<td class="chkrad"><ej:checkBox id="Checkbox7"></ej:checkBox>
						<label for="Checkbox7" class="clslab">GPlus</label></td>
					<td class="chkrad"><ej:checkBox id="Checkbox8"></ej:checkBox>
						<label for="Checkbox8" class="clslab">Twitter</label></td>
				</tr>
			</table>
			<br />
		</div>
	</div>
</div>



<style>



  td {
            padding: 5px;
        }
</style>
