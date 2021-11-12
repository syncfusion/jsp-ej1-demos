<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">

	<ej:dropDownList id="selectCar" targetID="carsList" width="100%" watermarkText="Select a car" ></ej:dropDownList>
	
	<div id="carsList">
        <ul>
            <li>Audi A4</li>
            <li>Audi A5</li>
            <li>Audi A6</li>
            <li>Audi A7</li>
            <li>Audi A8</li>
        </ul>
    </div>
</div>


<style>
.cols-sample-area {
	width: 400px;
	margin: 0 auto;
	float: none;
}
</style>
