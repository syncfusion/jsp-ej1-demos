<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<ej:tab id="tabSample" >
		<ej:tab-contentTemplate>
		    <ul>
                <li><a href="#ASP">ASP.NET</a></li>
                <li><a href="#MVC">ASP.NET MVC</a></li>
                <li><a href="#JS">Javascript</a></li>
            </ul>
            <div id="ASP">
                Microsoft ASP.NET is a set of technologies in the Microsoft .NET Framework for building Web applications and XML Web services. ASP.NET pages execute on the server and generate markup such as HTML, WML, or XML that is sent to a desktop or mobile browser. ASP.NET pages use a compiled, event-driven programming model that improves performance and enables the separation of application logic and user interface.
            </div>
            <div id="MVC">
                The Model-View-Controller (MVC) architectural pattern separates an application into three main components: the model, the view, and the controller. The ASP.NET MVC framework provides an alternative to the ASP.NET Web Forms pattern for creating Web applications. The ASP.NET MVC framework is a lightweight, highly testable presentation framework that (as with Web Forms-based applications) is integrated with existing ASP.NET features, such as master pages and membership-based authentication.
            </div>
            <div id="JS">
                JavaScript (JS) is an interpreted computer programming language.
                It was originally implemented as part of web browsers so that client-side scripts could interact with the user, control the browser, communicate asynchronously, and alter the document content that was displayed.[5] More recently, however, it has become common in both game development and the creation of desktop applications.
            </div>
		</ej:tab-contentTemplate>
	</ej:tab>
</div>

<div id="property-window" class="box wide">
     <div class="prop-grid keyboard">
         <div class="row">
             <div class="col-md-3">
                 Alt + j
             </div>
             <div class="col-md-3">
                 Focuses the control.
             </div>
         </div>
         <div class="row">
             <div class="col-md-3">
                 Up / Left
             </div>
             <div class="col-md-3">
                 Selected previous item.
             </div>
         </div>
         <div class="row">
             <div class="col-md-3">
                 Down / Right
             </div>
             <div class="col-md-3">
                 Selected next item.
             </div>
         </div>
         <div class="row">
             <div class="col-md-3">
                 Home
             </div>
             <div class="col-md-3">
                 Selected first item.
             </div>
         </div>
         <div class="row">
             <div class="col-md-3">
                 End
             </div>
             <div class="col-md-3">
                 Selected last item.
             </div>
         </div>
     </div>
</div>

<script type="text/javascript">
        $(function () {
            $(document).on("keydown", function (e) {
                if (e.altKey && e.keyCode === 74) { 
                    $("#tabSample ul a").focus();
                }
            });
        });
    </script>

<style>
.cols-sample-area
{
    width: 500px;
    margin: 0 auto;
    float: none;
}
</style>
