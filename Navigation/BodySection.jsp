<body>
<div>
        <div id="mainTab" style="visibility: hidden">      
             <%@include file="../Navigation/Header.jsp"%>
            <ul style="display:none">
                <!--<li><a href="#dashboard">Showcase Samples</a></li>-->
                <li><a href="#controls">Components</a></li>
            </ul>
            <div id="dashboard">
            </div>
            <div id="controls">
                <div id="categories">
                </div>
                <div id="sampleArea">
                    <div id="scrollcontainer" class="left">
                        <div id="control_list">
                        </div>
                    </div>
                    <div class="right-align">
                        <div class="panel_container" id="sb_container">
                            <div class="panel_heading e-box">
                                <span class="title_text"></span>
                                <a id="sb_next" class="nav_btn" title="Next sample">next</a>
                                <a id="sb_previous" class="nav_btn"  title="Previous sample">prev</a>
                               <!-- <a style="display: none" id="API" title="API reference" class="e-button e-js e-ntouch e-btn-normal e-btn e-select e-widget e-txt" target="_blank">API</a>-->
                            </div>
                            <div id="sampleContainer" class="e-box">
                            </div>
                        </div>
                        <span id='controllist_target' onclick="open" class="e-icon e-chevron-right"></span>
                        <div class="panel_container last" title="Code Preview">
                            <div class="panel_heading e-box">
                                <span class="preview_text">Code Preview</span>
                            </div>
                            <div class="panel_body">
                                <div id="sourceTab" >
                                    <ul>
                                        <li><a href="#JSP">JSP</a></li>
                                    </ul>
                                    <div id="JSP">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="control_ref hidepage">
                            <span class="ref_header">OTHER RESOURCES</span>
                            <div class="ref_options">
                                <a class="ref_buttons" target="_blank" id="ref_document">
                                    Documentation
                                </a>
                                <a class="ref_buttons" target="_blank" id="ref_forums">
                                    Forums
                                </a>
                                <a class="ref_buttons" target="_blank" id="ref_support" href="https://www.syncfusion.com/support/directtrac">
                                    Support
                                </a>
                            </div>
                        </div>
                      <%@include file="../Navigation/Footer.jsp"%>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <button id="scrollTop" class="e-icon" title="Back to top"></button>
    <script type="text/x-jsrender" id="btn_template">
        <li>
            <button data-role="ejbutton" id="{{:id}}" class="{{:class}}">{{:text}}</button>
        </li>
    </script>
    <div id="sbwaitingTemplate" class="sbloadingtemplate" style="display: none">
        <span class="sbloadingtext">Loading...
        </span>
        <span class="sbloadingimg"></span>
    </div>
    </body>