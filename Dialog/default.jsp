<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<%    request.setAttribute("resp", true);   %>
<div class="cols-sample-area" >
<ej:dialog id="basicDialog" title="Audi Q3" target=".cols-sample-area" open="onDialogOpen" close="onDialogClose" isResponsive="${resp}" width="550">
<ej:dialog-contentTemplate>
<div>    
	<div id="cntnt" >
                        <h1>Audi Q3</h1>
                        <div class="audi-q3">
                            <img src="Content/images/dialog/audiq3-1.png" class="img" />
                            <br />
                            <img src="Content/images/dialog/audiq3-2.png" />
                        </div>
                        <div class="cnt">
                            It is a concept vehicle with Liquid Silver body colour, 20-inch wheels, fabric folding roof, electrically-controlled hood, 4-cylinder 2.0 TDI engine rated 204 PS (150 kW; 201 hp)
                            and 400 N·m (295.02 lbf·ft), diesel particulate filter and Bluetec emission control system, quattro permanent four-wheel drive system with Haldex clutch,
                            Audi S tronic dual-clutch gearbox, McPherson-strut front axle and a four-link rear axle, Audi drive select system with 3 modes (dynamic, sport, efficiency),
                            MMI control panel with touch pad and dual-view technology, sound system with the prominent extending tweeters.
                        </div>
                    </div>
</div> </ej:dialog-contentTemplate>
   </ej:dialog>
 

<ej:button id="btnOpen" click="BtnClick" text="Click Here to Open dialog"></ej:button>
         </div>
    <script type="text/javascript">

        function onDialogOpen(args) {
            $("#btnOpen").hide();
        }
        function onDialogClose() {
            $("#btnOpen").show();
            
        }
        function BtnClick(){
        	$("#basicDialog").ejDialog("open");
        }
    
    </script>
        <style>
        .audi-q3 {
            float: right;
            height: 356px;
            width: 267px;
            margin-left: 10px;
        }

          .cols-sample-area {
            padding:0px;
            height: 700px;
            width: 650px;
            margin-bottom: 50px;
			position: relative;
        }
		#btnOpen {
		    position: absolute;
		    display: none;
		    margin: 10px;
		    }
        .cnt {
            min-height: 356px;
            text-align: justify;
        }

        h1 {
            margin: 0 0 10px 0;
        }

        .img {
            margin-bottom: 10px;
        }

    </style>
