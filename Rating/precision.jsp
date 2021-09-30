<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	    <table>
	        <tr>
	            <td valign="top">Full Precision :
	            </td>
	            <td>
	            	<ej:rating id="fullRating" value="4"></ej:rating>
	            </td>
	        </tr>
	        <tr>
	            <td valign="top">Half Precision :
	            </td>
	            <td>
	            	<ej:rating id="halfRating" value="3" precision="half"></ej:rating>
	            </td>
	        </tr>
	        <tr>
	            <td valign="top">Exact Precision :
	            </td>
	            <td>
	            	<ej:rating id="exactRating" value="3" precision="exact"></ej:rating>
	            </td>
	        </tr>
	    </table>
</div> 


<style>
.cols-sample-area
{
    width: 300px;
    margin: 0 auto;
    float: none;
}
</style>
 

