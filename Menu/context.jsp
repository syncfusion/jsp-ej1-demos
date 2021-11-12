<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
<div id="target" class="textarea">
                    HTML is written in the form of HTML elements consisting of tags enclosed in angle
                            brackets (like
                            &lt;html&gt;
                            ),within the web page content. HTML tags most commonly come in pairs like and ,although
                            some tags, known as empty elements, are unpaired, for example
                            &lt;img&gt;. The purpose of a web browser is to read HTML documents and compose them into
                            visible or audible web pages. The browser does not display the HTML tags, but uses
                            the tags to interpret the content of the page.
                </div>
		<ej:menu id="contextMenu" menuType="contextmenu" openOnClick="false" contextMenuTarget="#target" >
			<ej:menu-contentTemplate>
                 <li><a>Cut</a></li>
                    <li><a>Copy</a></li>
                    <li class="e-separator"><a>Paste</a></li>
                    <li><a>Comments</a></li>
                    <li><a>Links</a></li>
                    <li><a>Clear Formatting</a></li>
			</ej:menu-contentTemplate>
		</ej:menu>
</div>


<style>
.cols-sample-area {
    width: 600px;
    margin: 0 auto;
    float: none;
}
.textarea {
    border: 1px solid;
    padding: 10px;
    position: relative;
    text-align: justify;
    width: 463px;
    color: gray;
}
</style>
