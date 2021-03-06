<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<ej:accordion id="multiAccordion" enableMultipleOpen="true">
		<ej:accordion-accordionItem-contentTemplate>
			<h3>
                <a href="#">ASP.NET</a>
            </h3>
            <div>
                Microsoft ASP.NET is a set of technologies in the Microsoft .NET Framework for building Web applications and XML Web services. ASP.NET pages execute on the server and generate markup such as HTML, WML, or XML that is sent to a desktop or mobile browser. ASP.NET pages use a compiled, event-driven programming model that improves performance and enables the separation of application logic and user interface.
            </div>
            <h3>
                <a href="#">ASP.NET MVC</a>
            </h3>
            <div>
                The Model-View-Controller (MVC) architectural pattern separates an application into three main components: the model, the view, and the controller. The ASP.NET MVC framework provides an alternative to the ASP.NET Web Forms pattern for creating Web applications. The ASP.NET MVC framework is a lightweight, highly testable presentation framework that (as with Web Forms-based applications) is integrated with existing ASP.NET features, such as master pages and membership-based authentication.
            </div>
            <h3>
                <a href="#">Javascript</a>
            </h3>
            <div>
                JavaScript (JS) is an interpreted computer programming language.
                It was originally implemented as part of web browsers so that client-side scripts could interact with the user, control the browser, communicate asynchronously, and alter the document content that was displayed.More recently, however, it has become common in both game development and the creation of desktop applications.
            </div>
		</ej:accordion-accordionItem-contentTemplate>
	
	</ej:accordion>
</div>


<style>
.cols-sample-area {
	width: 700px;
	margin: 0 auto;
	float: none;
}

</style>
