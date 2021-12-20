<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<div class="cols-sample-area">
	<div class="control">
		<label id="txt">Appointment View</label>
		<div class="element">
			<ej:groupButton id="grup" height="45px" width="100%">
				<ej:groupButton-groupButtonItems>
					<ej:groupButton-groupButtonItem id="groupbtn1" text="Day"></ej:groupButton-groupButtonItem>
					<ej:groupButton-groupButtonItem id="groupbtn2" text="Work Week"></ej:groupButton-groupButtonItem>
					<ej:groupButton-groupButtonItem id="groupbtn3" text="Week"></ej:groupButton-groupButtonItem>
					<ej:groupButton-groupButtonItem id="groupbtn4" text="Month"></ej:groupButton-groupButtonItem>
					<ej:groupButton-groupButtonItem id="groupbtn5" text="Year"></ej:groupButton-groupButtonItem>
				</ej:groupButton-groupButtonItems>
			</ej:groupButton>
		</div>
	</div>
</div>
<style>


.cols-sample-area {
	width: 75%;
}

#txt {
	display: table;
	margin: 0 auto;
	margin-bottom: 10px;
}

</style>