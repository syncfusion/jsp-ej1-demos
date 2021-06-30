<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
		<ej:menu id="keyboard" width="100%">
			<ej:menu-contentTemplate>
                 <li><a>Books</a>
                        <ul>
                            <li><a>New Releases</a></li>
                            <li><a>New Releases audio books</a></li>
                            <li><a>Bestsellers</a></li>
                            <li><a>Upcoming</a></li>
                            <li><a>Box Sets</a></li>
                        </ul>
                    </li>
                    <li><a>Gaming</a>
                        <ul>
                            <li><a>Upcoming</a></li>
                            <li><a>PC</a></li>
                            <li><a>PS Vista</a></li>
                            <li><a>PS3</a></li>
                            <li><a>XBox</a></li>
                            <li><a>Consoles</a></li>
                        </ul>
                    </li>
                    <li><a>Mobiles</a>
                        <ul>
                            <li><a>New Arrivals</a></li>
                            <li><a>Bestsellers</a></li>
                            <li><a>Low Price</a></li>
                            <li><a>Tablets</a></li>
                        </ul>
                    </li>
                    <li><a>Cameras</a>
                        <ul>
                            <li><a>Point & Shoots</a></li>
                            <li><a>Digital SLR</a></li>
                            <li><a>Camcorders</a></li>
                            <li><a>Bestsellers</a></li>
                        </ul>
                    </li>
                    <li><a>Music's</a>
                        <ul>
                            <li><a>New Releases</a></li>
                            <li><a>Bestsellers</a></li>
                            <li><a>Rock Music</a></li>
                            <li><a>Devotional & Spiritual</a></li>
                            <li><a>Sufi & Ghazal</a></li>
                        </ul>
                    </li>
              

			</ej:menu-contentTemplate>
		</ej:menu>
</div>		
		
<div id="property-window" class="box wide">
                <div class="prop-grid keyboard">
                    <div class="row">
                        <div class="col-md-3">
                            Alt + j
                        </div>
                        <div class="col-md-3">
                            Focuses the control
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            Up
                        </div>
                        <div class="col-md-3">
                            Navigates up or previous item
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            Down
                        </div>
                        <div class="col-md-3">
                            Navigates down or next item
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            Left
                        </div>
                        <div class="col-md-3">
                            Navigates to previous group
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            Right
                        </div>
                        <div class="col-md-3">
                            Navigates to next group
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            Esc
                        </div>
                        <div class="col-md-3">
                            Closes the menu group
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            Enter
                        </div>
                        <div class="col-md-3">
                            Selects the focused item
                        </div>
                    </div>
                </div>
            
</div>

<script type="text/javascript" class="jsScript">
        $(function () {
           
            $(document).on("keydown", function (e) {
                if (e.altKey && e.keyCode === 74) { 
                    $("#keyboard").focus();
                }
            });
        });
    </script>


<style>
.cols-sample-area {
    width: 600px;
    margin: 0 auto;
    float: none;
}
</style>
