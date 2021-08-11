<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
    <div style="display:table">
        <div style="float:left">
            <span class="treeCaption">TREEVIEW - 1</span>
            <ej:treeView id="treeViewDrag" allowDragAndDrop="true" allowDropChild="true" 
            	allowDropSibling="true" allowDragAndDropAcrossControl="true" width="200px">
            <ej:treeview-contentTemplate>
            	<ul>
                <li class="expanded">
                    ASP.NET MVC Team
                    <ul>
                        <li>Smith</li>
                        <li>Johnson</li>
                        <li>Anderson</li>
                    </ul>
                </li>
                <li>
                    Windows Team
                    <ul>
                        <li>Clark</li>
                        <li>Wright</li>
                        <li>Lopez</li>
                    </ul>
                </li>
                <li>
                    Web Team
                    <ul>
                        <li>Joshua </li>
                        <li>Matthew </li>
                        <li>David </li>
                    </ul>
                </li>
                <li>
                    Build Team
                    <ul>
                        <li>Ryan </li>
                        <li>Justin </li>
                        <li>Robert </li>
                    </ul>
                </li>
                <li>
                    WPF Team
                    <ul>
                        <li>Brown </li>
                        <li>Johnson </li>
                        <li>Miller </li>
                    </ul>
                </li>
            </ul>
            </ej:treeview-contentTemplate>
            </ej:treeView>           
        </div>
        <div style="float:left">
            <span class="treeCaption">TREEVIEW - 2</span>
            <ej:treeView id="treeViewDrop"  allowDragAndDrop="true" allowDropChild="true" allowDropSibling="true" 
            	allowDragAndDropAcrossControl="true" width="200px">
            <ej:treeview-contentTemplate>
            <ul>
                <li class="expanded">
                    WinRT Team
                    <ul>
                        <li>Valentina</li>
                        <li>Williams </li>
                        <li>Jones </li>
                    </ul>
                </li>
                <li id="test">
                    Website Team
                    <ul>
                        <li>Thomas</li>
                        <li>Rodriguez</li>
                        <li>Michael </li>
                    </ul>
                </li>
                <li id="net">
                    Support Team
                    <ul>
                        <li>Christopher </li>
                        <li>Williams Smith</li>
                        <li>Jack</li>
                    </ul>
                </li>
            </ul>
            </ej:treeview-contentTemplate>
            </ej:treeView>            
        </div>
    </div>
</div>
<style>
    .treeCaption {
        padding: 5px;
        text-align: center;
        font-size: 12px;
        font-weight: bold;
    }

    .e-treeview-wrap {
        margin-top: 10px;
        margin-bottom: 10px;
    }
</style>