
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
                    <label for="check11">Toggle</label>
                    <ej:toggleButton id="check11"  showRoundedCorner="true" size="normal" contentType="imageonly" defaultPrefixIcon="e-icon e-mediaplay" activePrefixIcon="e-icon e-mediapause e-uiLight"></ej:toggleButton>                  
                </td>
            </tr>
            <tr>
                <td class="btn_label">Mini</td>
                <td class="btnsht">
                    <label for="check12">Toggle</label>
                         <ej:toggleButton id="check12" showRoundedCorner="true" size="mini"  defaultText="play" activeText="Pause"></ej:toggleButton>                   
                </td>
            </tr>

            <tr>
                <td class="btn_label">Small</td>
                <td class="btnsht">
                    <label for="check13">Toggle</label>
                    <ej:toggleButton id="check13" showRoundedCorner="true" size="small"  defaultText="play" activeText="Pause"></ej:toggleButton>             
                </td>
            </tr>
            <tr>
                <td class="btn_label">Medium</td>
                <td class="btnsht">
                    <label for="check14">Toggle</label>
                   <ej:toggleButton id="check14" showRoundedCorner="true" size="medium"  defaultText="play" activeText="Pause"></ej:toggleButton>
                </td>
            </tr>

            <tr>
                <td class="btn_label">Large</td>
                <td class="btnsht">
                    <label for="check15">Toggle</label>
                    <ej:toggleButton id="check15" showRoundedCorner="true" size="large"  defaultText="play" activeText="Pause"  contentType="textandimage" defaultPrefixIcon="e-icon e-mediaplay" activePrefixIcon="e-icon e-mediapause"></ej:toggleButton>                  
                </td>
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
</style>
