<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
<ej:splitter id="inner" height="250" width="400" >
<ej:splitter-contentTemplate>
<div id="pane1" >
Pane 1
</div>
<div id="pane2" style="Height:100%; Width:100%"> Pane 2</div>
</ej:splitter-contentTemplate>
 </ej:splitter>
</div>
<div id="property-window" class="box wide">
 <div class="prop-orientation">
                    <div class="row">
                        <div class="col-md-3">
                            Orientation
                        </div>
                        <div class="col-md-3">
                            <select id="changeOrientation">
                                <option value="horizontal">Horizontal</option>
                                <option value="vertical">Vertical</option>
                            </select>
                        </div>
                    </div>

                </div>
</div>
            <script type="text/javascript">
            $(function () {
                     $("#changeOrientation").ejDropDownList({
                    selectedItem: 0,
                    change: "onOrientationChange",
                    width: "120px",
                    selectedItemIndex: 0
                });
            });
            function onOrientationChange(args) {
                var target = $('#inner').data('ejSplitter');
                if (args.value == 'vertical') {
                    $('#inner').ejSplitter({
                        orientation:'vertical'
                    });
                }
                if (args.value == 'horizontal') {
                    $('#inner').ejSplitter({
                        orientation: 'horizontal'
                    });
                }
            }
            </script>
          