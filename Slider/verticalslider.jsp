<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>

<div class="cols-sample-area">
	<%
		int[] value = { 30, 70 };
		request.setAttribute("mVal", value);
	%>
	<div class="frame">
		<div class="control">
			<ej:slider id="normalslider" orientation="Vertical"
				sliderType="Default" value="30" height="200">
			</ej:slider>
			<span>Default</span>
		</div>
		<div class="control">
			<ej:slider id="minrangeslider" orientation="Vertical"
				sliderType="MinRange" value="70" height="200">
			</ej:slider>
			<span>Min-Range</span>
		</div>
		<div class="control">
			<ej:slider id="rangeslider" orientation="Vertical" sliderType="Range"
				values="${mVal}" height="200">
			</ej:slider>
			<span>Range</span>
		</div>
	</div>
</div>

<style>
.frame {
	height: 280px;
	width: 255px;
	padding: 40px;
}

.frame .e-slider-wrap {
	margin: 15px 35px;
}

.control {
	float: left;
}

.control span {
	display: block;
	text-align: center;
}
</style>