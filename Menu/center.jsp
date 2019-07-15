<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
		<ej:menu id="docfile" width="100%" enableCenterAlign="true">
			<ej:menu-contentTemplate>
                 <li><a>File</a>
                        <ul>
                            <li><a>New</a></li>
                            <li><a>Open</a></li>
                            <li><a>Save</a></li>
                            <li><a>PrintPreview</a></li>
                            <li><a>Print</a></li>
                        </ul>
                    </li>

                    <li><a>Edit</a>
                        <ul>
                            <li><a>Undo</a></li>
                            <li><a>Redo</a></li>
                            <li><a>Cut</a></li>
                            <li><a>Copy</a></li>
                            <li><a>Paste</a></li>
                            <li><a>Select All</a></li>
                        </ul>
                    </li>

                    <li><a>View</a>
                        <ul>
                            <li><a>Print Layout</a></li>
                            <li><a>Show ruler</a></li>
                            <li><a>Show spelling suggestion</a></li>
                            <li><a>Compact controls</a></li>
                            <li><a>Full screen</a></li>
                        </ul>
                    </li>

                    <li><a>Insert</a>
                        <ul>
                            <li><a>Image</a></li>
                            <li><a>Link</a></li>
                            <li><a>Comments</a></li>
                            <li><a>Foot note</a></li>
                            <li><a>Header</a></li>
                            <li><a>Footer</a></li>
                        </ul>
                    </li>

                    <li><a>Help</a>
                        <ul>
                            <li><a>Docs Help</a></li>
                            <li><a>User Forums</a></li>
                            <li><a>Report an Issue</a></li>
                            <li><a>Keyboard Shortcuts</a></li>
                        </ul>
                    </li>
			</ej:menu-contentTemplate>
		</ej:menu>
</div>


<style>
.cols-sample-area {
    width: 600px;
    margin: 0 auto;
    float: none;
}
</style>
