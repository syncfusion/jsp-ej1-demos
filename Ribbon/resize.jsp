<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %><%@ page import="com.syncfusion.*" %><%@ page session="false" import="java.util.ArrayList" %><%@ page session="false" import="java.util.Iterator" %><%@ page session="false" import="org.json.simple.parser.JSONParser" %>
<link rel="stylesheet" href="Content/ejthemes/ribbon-css/ej.icons.css" >
	<body>
		<ul id="ribbonmenu">
			<li>
				<a>FILE</a>
				<ul>
					<li>
						<a>New</a>
					</li>
					<li>
						<a>Open</a>
					</li>
					<li>
						<a>Save</a>
					</li>
					<li>
						<a>Save As</a>
					</li>
					<li>
						<a>Print</a>
					</li>
				</ul>
			</li>
		</ul>
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
			<ej:ribbon id="defaultRibbon" width="65%" isResponsive="true">
				<ej:ribbon-applicationTab type="menu" menuItemID="ribbonmenu"></ej:ribbon-applicationTab>
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
											<ej:ribbon-tab-group-content-group id="paste" text="paste" toolTip="Paste"  buttonSettings="${paste_buttonSettings}"></ej:ribbon-tab-group-content-group>
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
}
 
 .e-Illustrations:before {
    font-family: 'ej-ribbonfont';
    content: "\e16a";
    font-size: 32px;
        position: relative;
    top: 1px;
    left: 19px;
    }
    .e-Comments:before {
    font-family: 'ej-ribbonfont';
    content: "\e15d";
    font-size: 32px;
        position: relative;
    top: 1px;
    left: 15px;
    }
    .e-Hyperlink:before {
    font-family: 'ej-ribbonfont';
    content: "\e162";
    font-size: 32px;
        position: relative;
    top: 1px;
    left: 12px;
    }
    .e-Equation:before {
    font-family: 'ej-ribbonfont';
    content: "\e158";
    font-size: 32px;
        position: relative;
    top: 1px;
    left: 8px;
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