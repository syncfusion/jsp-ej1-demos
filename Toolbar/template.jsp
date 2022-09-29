<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<div class="control">
		<ej:toolbar id="toolbarTemplate">
			<ej:toolbar-contentTemplate>
				<ul>
                    <li>
                        <div class="ctrlradio">
                        	<ej:radioButton id="Radio1" name="small" checked="false"></ej:radioButton>
                        </div>
                        option
                    </li>
                    <li id="Dropdown" title="Dropdown Control">
                        <ej:dropDownList id="selectCar" targetID="carsList"   selectedIndex="0" ></ej:dropDownList>
	
						<div id="carsList">
					        <ul>
					            <li>Audi A4</li>
					            <li>Audi A5</li>
					            <li>Audi A6</li>
					            <li>Audi A7</li>
					        </ul>
					    </div>
                    </li>
                </ul>
	       </ej:toolbar-contentTemplate>
	</ej:toolbar>
	</div>
</div>


<style>
.cols-sample-area
{
    width: 300px;
    margin: 0 auto;
    float: none;
}
</style>
