<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%    request.setAttribute("modal", true);   %>
<div class="cols-sample-area">
<ej:dialog id="loginForm" title="Login Form"  showOnInit="${modal}" target=".cols-sample-area" enableModal="${modal}" containment= ".cols-sample-area" close="onDialogClose" width="291">
<ej:dialog-contentTemplate>
	<form id="form1">
      <table>
        <tr>
            <td>
                <p class="top">Please enter your username and password<p>
            </td>
        </tr>
        <tr>
            <td>
                Username <p class="reqired">*</p>
                <input type="text" id="txtName" name="txtName" class="ejinputtext" required /><br />
            </td>
        </tr>
        <tr>
            <td>
                Password <p class="reqired">*</p>
                <input type="password" id="txtPassword" name="txtPassword" class="ejinputtext" required />
            </td>
        </tr>
        <tr>
            <td>
               
            <ej:checkBox id="txtRember" text="Remember me" ></ej:checkBox>
            </td>
        </tr>
        <tr>
           <td align="center">
               <br />               
                <ej:button id="btn1" size="medium" click="onOpen" height="30" width="150" text="Login"> </ej:button>
                         									
			<label class="error" for="btn"></label>
            </td>
        </tr>
        <tr>
            <td align="center" class="acc">
                Don't have an account ? <a href="#">Signup</a>
            </td>
        </tr>
    </table>
</form> </ej:dialog-contentTemplate>
</ej:dialog>
<ej:button id="btnOpen" click="onOpen" text="Click Here to Open dialog"></ej:button>
		</div>			   

<script type="text/javascript">
function onOpen() {
    $("#btnOpen").hide();
    $("#loginForm").ejDialog("open");
}
function onDialogClose(args) {
    $("#btnOpen").show();
}
</script>
<style>
 		.error{
           color:red;
        }
      
        .ejinputtext {
            height: 25px;
            width: 100%;
            margin-bottom: 10px;
        }

        .cols-sample-area {
            padding: 0px;
            height: 500px;
            width: 500px;
            margin-bottom: 50px;
            position: relative;
        }
		#btnOpen {
		    position: absolute;
		    display: none;
		    margin: 10px;
		    }
        .acc {
            font-size: 12px;
            padding-top: 8px;
        }

        .top {
            margin-top: 5px;
        }

        .reqired {
            margin: 0 0 3px 0;
            color: red;
            display: inline-block;
        }

</style>
