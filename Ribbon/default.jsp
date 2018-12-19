<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %><%@ page import="com.syncfusion.*" %><%@ page session="false" import="java.util.ArrayList" %><%@ page session="false" import="java.util.Iterator" %><%@ page session="false" import="org.json.simple.parser.JSONParser" %>
<link rel="stylesheet" href="Content/ejthemes/ribbon-css/ej.icons.css" >
	<body>
		<div id='newCon'>
			<div style='display:table-cell;padding-top:10px'>
				<table>
					<tr>
						<td>
							<button id='spltbutton1' class='e-bsinfobtnstyle e-bssplbtn1'>Protect Workbook</button>
							<ul id='Ul51'>
								<li>
									<span>Mark as Final</span>
								</li>
								<li>
									<span>Encrypt Password</span>
								</li>
							</ul>
						</td>
						<td style='vertical-align: top;padding-left:10px'>
							<span class='e-bsptitle' style='font-size:18px'>Protect Workbook</span>
							<span style='display:block;font-size:14px'>Control what types of changes people can make to this workbook.</span>
						</td>
					</tr>
					<tr>
						<td style='padding-top:10px'>
							<button id='spltbutton2' class='e-bsinfobtnstyle e-bssplbtn2'>Check for Issues</button>
							<ul id='Ul52'>
								<li>
									<span>Inspect Document</span>
								</li>
							</ul>
						</td>
						<td style='vertical-align: top;padding-left:10px;padding-top:10px'>
							<span class='e-bsptitle' style='font-size:18px'>Inspect Workbook</span>
							<span style='display:block;font-size:14px'>Before publishing this file,be aware that it contains:</span>
							<ul>
								<li style='list-style-type: square' class='e-inspectli'>
									<span class='e-inspectcon'>Author's name and absolute path</span>
								</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td style='padding-top:10px'>
							<button id='spltbutton3' class='e-bsinfobtnstyle e-bssplbtn3' style='font-size:18px'>Manage Versions</button>
							<ul id='Ul53'>
								<li>
									<span>Recover Workbooks</span>
								</li>
							</ul>
						</td>
						<td style='vertical-align: top;padding-left:10px;padding-top:10px'>
							<span class='e-bsptitle' style='font-size:18px'>Versions</span>
							<span style='display:block;font-size:14px'>There are no previous versions of this file.</span>
						</td>
					</tr>
					<tr>
						<td style='padding-top:10px'>
							<button id='btnlast' class='e-bsinfobtnstyle'>Browser view Options</button>
						</td>
						<td style='vertical-align: top;padding-left:10px;padding-top:10px'>
							<span class='e-bsptitle' style='font-size:18px'>Browser View Options</span>
							<span style='display:block;font-size:14px'>Pick what users can see when this workbook is viewed on the Web.</span>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="accountCon">
			<div style="padding-top:20px">
				<span style="font-size:17px">User Information</span>
				<div>
					<div class="e-accuser e-newpageicon" style="display:table-cell"></div>
					<div style="display:table-cell;vertical-align:middle">
						<div>user</div>
						<div>xyz@syncfusion.com</div>
					</div>
				</div>
			</div>
			<a href="#" style="font-size:11px">Sign out</a>
			<a href="#" style="display:table;font-size:11px">Switch Account</a>
			<div style="padding-top:20px;padding-bottom:10px">Background:</div>
			<input type="text" id="background" />
			<div id="backgroundList">
				<ul>
					<li>No Background</li>
					<li>Calligraphy</li>
					<li>Doodle Circles</li>
					<li>Geometry</li>
					<li>Stars</li>
				</ul>
			</div>
			<div style="padding-top:20px;padding-bottom:10px">Theme:</div>
			<input type="text" id="theme" />
			<div id="themeList">
				<ul>
					<li>White</li>
					<li>Light Gray</li>
					<li>Dark Gray</li>
				</ul>
			</div>
		</div>
		<div class="cols-sample-area"><%
JSONParser parser = new JSONParser();
	request.setAttribute("new_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"imagePosition\": \"imagetop\",\"prefixIcon\": \"e-icon e-ribbon e-new\" }"));
	request.setAttribute("paste_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon e-ribbonpaste\" }"));
	request.setAttribute("cut_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"prefixIcon\": \"e-icon e-ribbon e-ribboncut\" }"));
	request.setAttribute("copy_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"prefixIcon\": \"e-icon e-ribbon e-ribboncopy\" }"));
	request.setAttribute("clear_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"prefixIcon\": \"e-icon e-ribbon clearAll\" }"));
	request.setAttribute("paste_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon e-ribbonpaste\" }"));
	request.setAttribute("bullet_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon e-bullet\" }"));
	request.setAttribute("number_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon e-numbericon\" }"));
	request.setAttribute("indent_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon e-indent\" }"));
	request.setAttribute("outdent_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon e-outdent\" }"));
	request.setAttribute("sort_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon e-sort\" }"));
	request.setAttribute("border_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon e-border\" }"));
	request.setAttribute("alignleft_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon alignleft\" }"));
	request.setAttribute("aligncenter_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon aligncenter\" }"));
	request.setAttribute("alignright_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon alignright\" }"));
	request.setAttribute("justify_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon justify\" }"));
	request.setAttribute("uppercase_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon e-uppercase\" }"));
	request.setAttribute("lowercase_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-ribbon e-lowercase\" }"));
	request.setAttribute("undo_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"imagePosition\": \"imagetop\",\"prefixIcon\": \"e-icon e-ribbon e-undo\" }"));
	request.setAttribute("redo_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"imagePosition\": \"imagetop\",\"prefixIcon\": \"e-icon e-ribbon e-redo\" }"));
	request.setAttribute("table_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"imagePosition\": \"imagetop\",\"prefixIcon\": \"e-icon e-ribbon e-table\" }"));
    request.setAttribute("picture_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"imagePosition\": \"imagetop\",\"prefixIcon\": \"e-icon e-ribbon e-picture\" }"));
	request.setAttribute("video_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"imagePosition\": \"imagetop\",\"prefixIcon\": \"e-icon e-ribbon e-video\" }"));
	request.setAttribute("shape_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"imagePosition\": \"imagetop\",\"prefixIcon\": \"e-icon e-ribbon e-shape\" }"));
    request.setAttribute("chart_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"imagePosition\": \"imagetop\",\"prefixIcon\": \"e-icon e-ribbon e-chart\" }"));
	request.setAttribute("comment_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"imagePosition\": \"imagetop\",\"prefixIcon\": \"e-icon e-ribbon e-comment\" }"));
	request.setAttribute("hyperlink_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"imagePosition\": \"imagetop\",\"prefixIcon\": \"e-icon e-ribbon e-hyperlink\" }"));
	request.setAttribute("equation_buttonSettings",parser.parse("{\"contentType\": \"textandimage\",\"imagePosition\": \"imagetop\",\"prefixIcon\": \"e-icon e-ribbon e-equation\" }"));

	%>
			<ej:ribbon id="defaultRibbon" width="100%">
				<ej:ribbon-applicationTab type="backstage" >
					<ej:ribbon-applicationTab-backstageSettings headerWidth="120" text="File" height="350" width="800">
						<ej:ribbon-applicationTab-backstageSettings-pages>
							<ej:ribbon-applicationTab-backstageSettings-page id="account" text="Office Account" itemType="tab" contentID="accountCon"></ej:ribbon-applicationTab-backstageSettings-page>
							<ej:ribbon-applicationTab-backstageSettings-page id="info" text="Info"  contentID="newCon"></ej:ribbon-applicationTab-backstageSettings-page>
							<ej:ribbon-applicationTab-backstageSettings-page id="close" text="Close" enableSeparator="true" itemType="button" ></ej:ribbon-applicationTab-backstageSettings-page>
						</ej:ribbon-applicationTab-backstageSettings-pages>
					</ej:ribbon-applicationTab-backstageSettings>
				</ej:ribbon-applicationTab>
				<ej:ribbon-tabs>
					<ej:ribbon-tab id="home" text="Home">
						<ej:ribbon-tab-groups>
							<ej:ribbon-tab-group text="New" alignType="rows">
								<ej:ribbon-tab-group-contentCollection>
									<ej:ribbon-tab-group-content>
										<ej:ribbon-tab-group-content-groups>
											<ej:ribbon-tab-group-content-group id="new" text="New" toolTip="New" buttonSettings="${new_buttonSettings}"></ej:ribbon-tab-group-content-group>
										</ej:ribbon-tab-group-content-groups>
										<ej:ribbon-tabs-groups-content-defaults type="button" height="70" width="60"></ej:ribbon-tabs-groups-content-defaults>
									</ej:ribbon-tab-group-content>
								</ej:ribbon-tab-group-contentCollection>
							</ej:ribbon-tab-group>
							<ej:ribbon-tab-group text="Clipboard" alignType="columns">
								<ej:ribbon-tab-group-contentCollection>
									<ej:ribbon-tab-group-content>
										<ej:ribbon-tab-group-content-groups>
											<ej:ribbon-tab-group-content-group id="paste" text="paste" toolTip="Paste" buttonSettings="${paste_buttonSettings}"></ej:ribbon-tab-group-content-group>
										</ej:ribbon-tab-group-content-groups>
										<ej:ribbon-tabs-groups-content-defaults type="button" width="50" height="70" isBig="true"></ej:ribbon-tabs-groups-content-defaults>
									</ej:ribbon-tab-group-content>
									<ej:ribbon-tab-group-content>
										<ej:ribbon-tab-group-content-groups>
											<ej:ribbon-tab-group-content-group id="cut" text="Cut" toolTip="Cut" buttonSettings="${cut_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="copy" text="Copy" toolTip="Copy" buttonSettings="${copy_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="clear" text="Clear" toolTip="Clear All" buttonSettings="${clear_buttonSettings}"></ej:ribbon-tab-group-content-group>
										</ej:ribbon-tab-group-content-groups>
										<ej:ribbon-tabs-groups-content-defaults type="button" width="60" isBig="false"></ej:ribbon-tabs-groups-content-defaults>
									</ej:ribbon-tab-group-content>
								</ej:ribbon-tab-group-contentCollection>
							</ej:ribbon-tab-group>
							<ej:ribbon-tab-group text="Alignment" alignType="rows">
								<ej:ribbon-tab-group-contentCollection>
									<ej:ribbon-tab-group-content>
										<ej:ribbon-tab-group-content-groups>
											<ej:ribbon-tab-group-content-group id="bullet" text="Bullet Format" toolTip="Bullets" buttonSettings="${bullet_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="number" text="number Format" toolTip="Numbering" buttonSettings="${number_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="textindent" text="Indent" toolTip="Text Indent" buttonSettings="${indent_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="textoudent" text="Outdent" toolTip="Text Outdent" buttonSettings="${outdent_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="sortascending" text="Sort" toolTip="Sort" buttonSettings="${sort_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="border" text="Border" toolTip="Border" buttonSettings="${border_buttonSettings}"></ej:ribbon-tab-group-content-group>
										</ej:ribbon-tab-group-content-groups>
										<ej:ribbon-tabs-groups-content-defaults type="button" isBig="false" ></ej:ribbon-tabs-groups-content-defaults>
									</ej:ribbon-tab-group-content>
									<ej:ribbon-tab-group-content>
										<ej:ribbon-tab-group-content-groups>
											<ej:ribbon-tab-group-content-group id="alignleft" text="JustifyLeft" toolTip="Align Left" buttonSettings="${alignleft_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="aligncenter" text="JustifyCenter" toolTip="Align Center" buttonSettings="${aligncenter_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="alignright" text="JustifyRight" toolTip="Align Right" buttonSettings="${alignright_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="justify" text="JustifyFull" toolTip="Justify" buttonSettings="${justify_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="uppercase" text="Upper Case" toolTip="Upper Case" buttonSettings="${uppercase_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="lowercase" text="Lower Case" toolTip="Lower Case" buttonSettings="${lowercase_buttonSettings}"></ej:ribbon-tab-group-content-group>
										</ej:ribbon-tab-group-content-groups>
										<ej:ribbon-tabs-groups-content-defaults type="button" isBig="false" ></ej:ribbon-tabs-groups-content-defaults>
									</ej:ribbon-tab-group-content>
								</ej:ribbon-tab-group-contentCollection>
							</ej:ribbon-tab-group>
							<ej:ribbon-tab-group text="Actions" alignType="rows">
								<ej:ribbon-tab-group-contentCollection>
									<ej:ribbon-tab-group-content>
										<ej:ribbon-tab-group-content-groups>
											<ej:ribbon-tab-group-content-group id="undo" text="Undo" toolTip="Undo" buttonSettings="${undo_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="redo" text="Redo" toolTip="Redo" buttonSettings="${redo_buttonSettings}"></ej:ribbon-tab-group-content-group>
										</ej:ribbon-tab-group-content-groups>
										<ej:ribbon-tabs-groups-content-defaults type="button" width="40" height="70" ></ej:ribbon-tabs-groups-content-defaults>
									</ej:ribbon-tab-group-content>
								</ej:ribbon-tab-group-contentCollection>
							</ej:ribbon-tab-group>
						</ej:ribbon-tab-groups>
					</ej:ribbon-tab>
					<ej:ribbon-tab id="insert" text="Insert">
						<ej:ribbon-tab-groups>
							<ej:ribbon-tab-group alignType="columns" text="Tables">
								<ej:ribbon-tab-group-contentCollection>
									<ej:ribbon-tab-group-content>
										<ej:ribbon-tab-group-content-groups>
											<ej:ribbon-tab-group-content-group id="tables" text="Tables" toolTip="Tables" buttonSettings="${table_buttonSettings}"></ej:ribbon-tab-group-content-group>
										</ej:ribbon-tab-group-content-groups>
										<ej:ribbon-tabs-groups-content-defaults type="button" width="50" height="70"></ej:ribbon-tabs-groups-content-defaults>
									</ej:ribbon-tab-group-content>
								</ej:ribbon-tab-group-contentCollection>
							</ej:ribbon-tab-group>
							<ej:ribbon-tab-group alignType="rows" text="Illustrations">
								<ej:ribbon-tab-group-contentCollection>
									<ej:ribbon-tab-group-content>
										<ej:ribbon-tab-group-content-groups>
											<ej:ribbon-tab-group-content-group id="pictures" text="Pictures" toolTip="Pictures" buttonSettings="${picture_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="videos" text="Videos" toolTip="Videos" buttonSettings="${video_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="shapes" text="Shapes" toolTip="Shapes" buttonSettings="${shape_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="charts" text="Charts" toolTip="Charts" buttonSettings="${chart_buttonSettings}"></ej:ribbon-tab-group-content-group>
										</ej:ribbon-tab-group-content-groups>
										<ej:ribbon-tabs-groups-content-defaults type="button" width="56" height="70"></ej:ribbon-tabs-groups-content-defaults>
									</ej:ribbon-tab-group-content>
								</ej:ribbon-tab-group-contentCollection>
							</ej:ribbon-tab-group>
							<ej:ribbon-tab-group alignType="rows" text="Comments">
								<ej:ribbon-tab-group-contentCollection>
									<ej:ribbon-tab-group-content>
										<ej:ribbon-tab-group-content-groups>
											<ej:ribbon-tab-group-content-group id="comments" text="Comments" toolTip="Comments" buttonSettings="${comment_buttonSettings}"></ej:ribbon-tab-group-content-group>
										</ej:ribbon-tab-group-content-groups>
										<ej:ribbon-tabs-groups-content-defaults type="button" width="70" height="70"></ej:ribbon-tabs-groups-content-defaults>
									</ej:ribbon-tab-group-content>
								</ej:ribbon-tab-group-contentCollection>
							</ej:ribbon-tab-group>
							<ej:ribbon-tab-group alignType="rows" text="Hyperlink">
								<ej:ribbon-tab-group-contentCollection>
									<ej:ribbon-tab-group-content>
										<ej:ribbon-tab-group-content-groups>
											<ej:ribbon-tab-group-content-group id="hyperlink" text="Hyperlink" toolTip="Hyperlink" buttonSettings="${hyperlink_buttonSettings}"></ej:ribbon-tab-group-content-group>
										</ej:ribbon-tab-group-content-groups>
										<ej:ribbon-tabs-groups-content-defaults type="button" width="70" height="70"></ej:ribbon-tabs-groups-content-defaults>
									</ej:ribbon-tab-group-content>
								</ej:ribbon-tab-group-contentCollection>
							</ej:ribbon-tab-group>
							<ej:ribbon-tab-group alignType="rows" text="Equation">
								<ej:ribbon-tab-group-contentCollection>
									<ej:ribbon-tab-group-content>
										<ej:ribbon-tab-group-content-groups>
											<ej:ribbon-tab-group-content-group id="equation" text="Equation" toolTip="Equation" buttonSettings="${equation_buttonSettings}"></ej:ribbon-tab-group-content-group>
										</ej:ribbon-tab-group-content-groups>
										<ej:ribbon-tabs-groups-content-defaults type="button" width="60" height="70"></ej:ribbon-tabs-groups-content-defaults>
									</ej:ribbon-tab-group-content>
								</ej:ribbon-tab-group-contentCollection>
							</ej:ribbon-tab-group>
						</ej:ribbon-tab-groups>
					</ej:ribbon-tab>
				</ej:ribbon-tabs>
			</ej:ribbon>
		</div>
	</body>
	<style>
.cols-sample-area{
width:80%;
height:350px;
}

   .e-infopageicon {
            background-repeat: no-repeat;
            height: 150px;
            width: 198px;
        }
 .e-newpageicon {
            background-repeat: no-repeat;
            height: 42px;
            width: 42px;
        }

      .e-accuser {
            background-image: url("Content/ejthemes/common-images/ribbon/User.jpg");
        }

        .e-protect {
            background-image: url("Content/ejthemes/common-images/ribbon/Protect.png");
        }

        .e-browser {
            background-image: url("Content/ejthemes/common-images/ribbon/Browser.png");
        }

        .e-check {
            background-image: url("Content/ejthemes/common-images/ribbon/Check.png");
        }

        .e-version {
            background-image: url("Content/ejthemes/common-images/ribbon/Version.png");
        }
   .e-ribbon .e-ribbonbackstagepage .e-bsinfobtnstyle {
            font-family: segoe ui;
            border: 1px solid #c9c9c9;
            background: #fdfdfd;
            color: #212121;
        }
        .e-ribbon .e-ribbonbackstagepage .e-bsinfobtnstyle:hover{
         border: 1px solid #c9c9c9 !important;
        }
        .e-ribbon .e-ribbonbackstagepage .e-bsinfobtnstyle:hover,
            .e-ribbon .e-ribbonbackstagepage .e-bsnewbtnstyle:hover {
                color: black;
            }

        .e-bssplbtn1 .e-split-btn-div {
            text-indent: 40px;
            top: 64px;
        }

        .e-bssplbtn2 .e-split-btn-div {
            text-indent: 26px;
            top: 64px;
        }

        .e-bssplbtn3 .e-split-btn-div {
            text-indent: 34px;
            top: 64px;
        }

        .e-bsinfobtnstyle .e-btntxt {
            font-size: 14px;
        }

        .e-bssplbtn1 .e-btntxt, .e-bssplbtn2 .e-btntxt {
            position: relative;
            left: -6px;
        }

        .e-bssplbtn3 .e-btntxt {
            position: relative;
            left: -8px;
        }

        .e-suggestsearch a {
            padding-left: 7px;
        }

        .e-author {
            color: #939393;
        }

        .e-ribbonbackstagepage, .e-inspectcon {
            color: #565656;
        }

        .e-bsptitle {
            color: #000000;
        }

        .e-infoprop {
            color: #0072c6;
        }

        .e-inspectli {
            color: #aaaaaa;
        }

        .e-bssplbtn2 .e-newpageicon, .e-bssplbtn3 .e-newpageicon {
            position: relative;
            left: -5px;
        }
</style>
	<script>
$(function () {
    
	  $('#btn1').ejButton({
              size: 'large',
              height: 200,
              width: 225,
              contentType: 'textandimage',
              imagePosition: 'imagetop',
              prefixIcon: 'e-blank e-infopageicon'
          });
     $('#background').ejDropDownList({
          targetID: 'backgroundList',
          width: '200px',
          text: 'No Background'
      });
     $('#theme').ejDropDownList({
          targetID: 'themeList',
          width: '200px',
          text: 'White'
      });
       $('#spltbutton1').ejSplitButton({
              size: 'large',
              showRoundedCorner: false,
              targetID: 'Ul51',
              buttonMode: 'dropdown',
              contentType: 'textandimage',
              imagePosition: 'imagetop',
              prefixIcon: 'e-protect e-newpageicon',
              arrowPosition: 'bottom',
              height: 90,
              width: 100
          });
			
		$('#spltbutton2').ejSplitButton({
              size: 'large',
              showRoundedCorner: false,
              targetID: 'Ul52',
              contentType: 'textandimage',
              imagePosition: 'imagetop',
              prefixIcon: 'e-check e-newpageicon',
              buttonMode: 'dropdown',
              arrowPosition: 'bottom',
              height: 90,
              width: 100
          });
          $('#spltbutton3').ejSplitButton({
              size: 'large',
              showRoundedCorner: false,
              targetID: 'Ul53',
              contentType: 'textandimage',
              imagePosition: 'imagetop',
              prefixIcon: 'e-version e-newpageicon',
              buttonMode: 'dropdown',
              arrowPosition: 'bottom',
              height: 90,
              width: 100
          });
          $("#btnlast").ejButton({
              size: "large",
              showRoundedCorner: false,
              contentType: "textandimage",
              imagePosition: "imagetop",
              prefixIcon: "e-browser e-newpageicon",
              arrowPosition: "bottom",
              height: 100,
              width: 100
          });
  });
</script>
</html>