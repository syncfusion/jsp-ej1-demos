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
		<ul id="extramenu">
			<li>
				<a>New Quick Step</a>
				<ul>
					<li>
						<a>Move to new folder</a>
					</li>
					<li>
						<a>Categorize & Move</a>
					</li>
					<li>
						<a>Flag & Move</a>
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
	
	request.setAttribute("gallery1_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-gallerycontent1 e-gbtnimg\",\"cssClass\": \"e-gbtnposition\" }"));
	request.setAttribute("gallery2_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-gallerycontent2 e-gbtnimg\",\"cssClass\": \"e-gbtnposition\" }"));
	request.setAttribute("gallery3_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-gallerycontent3 e-gbtnimg\",\"cssClass\": \"e-gbtnposition\" }"));
	request.setAttribute("gallery4_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-gallerycontent4 e-gbtnimg\",\"cssClass\": \"e-gbtnposition\" }"));
	request.setAttribute("gallery5_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-gallerycontent5 e-gbtnimg\",\"cssClass\": \"e-gbtnposition\" }"));
	request.setAttribute("gallery6_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-gallerycontent6 e-gbtnimg\",\"cssClass\": \"e-gbtnposition\" }"));
	request.setAttribute("gallery7_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-gallerycontent7 e-gbtnimg\",\"cssClass\": \"e-gbtnposition\" }"));
	request.setAttribute("gallery8_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-gallerycontent8 e-gbtnimg\",\"cssClass\": \"e-gbtnposition\" }"));
	request.setAttribute("gallery9_buttonSettings",parser.parse("{\"contentType\": \"imageonly\",\"prefixIcon\": \"e-icon e-gallerycontent9 e-gbtnimg\",\"cssClass\": \"e-gbtnposition\" }"));
	
	request.setAttribute("customGal1_buttonSettings",parser.parse("{\"cssClass\": \"e-extrabtnstyle\" }"));
	request.setAttribute("customGal2_menuSettings",parser.parse("{\"openOnClick\":false }"));
	request.setAttribute("customGal3_buttonSettings",parser.parse("{\"cssClass\": \"e-extrabtnstyle\" }"));
	request.setAttribute("customGal4_buttonSettings",parser.parse("{\"cssClass\": \"e-extrabtnstyle\" }"));

	%>
			<ej:ribbon id="defaultRibbon" width="100%" showQAT="true">
				<ej:ribbon-applicationTab type="menu" menuItemID="ribbonmenu" ></ej:ribbon-applicationTab>
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
											<ej:ribbon-tab-group-content-group id="paste" text="paste" toolTip="Paste"  quickAccessMode="toolbar" buttonSettings="${paste_buttonSettings}"></ej:ribbon-tab-group-content-group>
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
											<ej:ribbon-tab-group-content-group id="bullet" quickAccessMode="toolbar" text="Bullet Format" toolTip="Bullets" buttonSettings="${bullet_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="number" quickAccessMode="toolbar" text="number Format" toolTip="Numbering" buttonSettings="${number_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="textindent" quickAccessMode="toolbar" text="Indent" toolTip="Text Indent" buttonSettings="${indent_buttonSettings}"></ej:ribbon-tab-group-content-group>
											<ej:ribbon-tab-group-content-group id="textoudent" quickAccessMode="toolbar" text="Outdent" toolTip="Text Outdent" buttonSettings="${outdent_buttonSettings}"></ej:ribbon-tab-group-content-group>
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
							<ej:ribbon-tab-group text="Gallery" alignType="rows">
								<ej:ribbon-tab-group-contentCollection>
									<ej:ribbon-tab-group-content>
										<ej:ribbon-tab-group-content-groups>
											<ej:ribbon-tab-group-content-group id="Gallery" columns="3" itemHeight="54" itemWidth="68" expandedColumns="4" type="gallery">
												<ej:ribbon-tab-group-content-group-galleryItems>
													<ej:ribbon-tab-group-content-group-galleryItem text="GalleryContent1" toolTip="GalleryContent1" buttonSettings="${gallery1_buttonSettings}"></ej:ribbon-tab-group-content-group-galleryItem>
													<ej:ribbon-tab-group-content-group-galleryItem text="GalleryContent2" toolTip="GalleryContent2" buttonSettings="${gallery2_buttonSettings}"></ej:ribbon-tab-group-content-group-galleryItem>
													<ej:ribbon-tab-group-content-group-galleryItem text="GalleryContent3" toolTip="GalleryContent3" buttonSettings="${gallery3_buttonSettings}"></ej:ribbon-tab-group-content-group-galleryItem>
													<ej:ribbon-tab-group-content-group-galleryItem text="GalleryContent4" toolTip="GalleryContent4" buttonSettings="${gallery4_buttonSettings}"></ej:ribbon-tab-group-content-group-galleryItem>
													<ej:ribbon-tab-group-content-group-galleryItem text="GalleryContent5" toolTip="GalleryContent5" buttonSettings="${gallery5_buttonSettings}"></ej:ribbon-tab-group-content-group-galleryItem>
													<ej:ribbon-tab-group-content-group-galleryItem text="GalleryContent6" toolTip="GalleryContent6" buttonSettings="${gallery6_buttonSettings}"></ej:ribbon-tab-group-content-group-galleryItem>
													<ej:ribbon-tab-group-content-group-galleryItem text="GalleryContent7" toolTip="GalleryContent7" buttonSettings="${gallery7_buttonSettings}"></ej:ribbon-tab-group-content-group-galleryItem>
													<ej:ribbon-tab-group-content-group-galleryItem text="GalleryContent8" toolTip="GalleryContent8" buttonSettings="${gallery8_buttonSettings}"></ej:ribbon-tab-group-content-group-galleryItem>
													<ej:ribbon-tab-group-content-group-galleryItem text="GalleryContent9" toolTip="GalleryContent9" buttonSettings="${gallery9_buttonSettings}"></ej:ribbon-tab-group-content-group-galleryItem>
												</ej:ribbon-tab-group-content-group-galleryItems>
												<ej:ribbon-tab-group-content-group-customGalleryItems>
													<ej:ribbon-tab-group-content-group-customGalleryItem text="Save Selection as quick style" toolTip="Save Selection as quick style" customItemType="button" buttonSettings="${customGal1_buttonSettings}"></ej:ribbon-tab-group-content-group-customGalleryItem>
													<ej:ribbon-tab-group-content-group-customGalleryItem  customItemType="menu" menuId="extramenu" menuSettings="${customGal2_menuSettings}"></ej:ribbon-tab-group-content-group-customGalleryItem>
													<ej:ribbon-tab-group-content-group-customGalleryItem text="Clear Formatting" toolTip="Clear Formatting" customItemType="button" buttonSettings="${customGal3_buttonSettings}"></ej:ribbon-tab-group-content-group-customGalleryItem>
													<ej:ribbon-tab-group-content-group-customGalleryItem text="Apply Styles" toolTip="Apply Styles" customItemType="button" buttonSettings="${customGal4_buttonSettings}"></ej:ribbon-tab-group-content-group-customGalleryItem>
												</ej:ribbon-tab-group-content-group-customGalleryItems>
											</ej:ribbon-tab-group-content-group>
										</ej:ribbon-tab-group-content-groups>
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
 .e-ribbon .e-groupdiv .e-gallerybtn, .e-ribbon .e-groupdiv .e-gallerybtn:hover, .e-ribbon .e-groupdiv .e-galleryselect, .e-ribbon .e-resizediv .e-gallerybtn, .e-ribbon .e-resizediv .e-gallerybtn:hover, .e-ribbon .e-resizediv .e-galleryselect {
       border-width: 3px !important;
    	border-style:solid;
  }
 .e-ribbon .e-rbnquickaccessbar .e-ribbonpaste:before {
            font-size: 27px;
            left: -5px;
            top: -6px;
        }
         .e-gallerycontent1 {
            background-position: 0 -105px;
        }

        .e-gallerycontent2 {
            background-position: -69px -105px;
        }

        .e-gallerycontent3 {
            background-position: -136px -105px;
        }

        .e-gallerycontent4 {
            background-position: 0 -53px;
        }

        .e-gallerycontent5 {
            background-position: -69px -53px;
        }

        .e-gallerycontent6 {
            background-position: -136px -53px;
        }

        .e-gallerycontent7 {
            background-position: 0 0px;
        }

        .e-gallerycontent8 {
            background-position: -69px 0px;
        }

        .e-gallerycontent9 {
            background-position: -136px 0px;
        }

        .e-gbtnposition {
            margin-top: 5px;
        }

        .e-gbtnimg {
            background-image: url("Content/ejthemes/common-images/ribbon/homegallery.png");
            background-repeat: no-repeat;
            height: 64px;
            width: 64px;
        }

        .e-extracontent .e-extrabtnstyle {
            padding-left: 28px;
            text-align: left;
        }
</style>
	
</html>