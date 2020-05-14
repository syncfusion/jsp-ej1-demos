<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%    request.setAttribute("resp", true);   %>
<div class="cols-sample-area">
<ej:dialog id="keyboardDialog" title="Amazon" target=".cols-sample-area" open="onDialogOpen" close="onDialogClose" isResponsive="${resp}" width="400" height="300" enableRTL="${resp}">
<ej:dialog-contentTemplate><div>    <div id="cntnt" >
                         Amazon.com, Inc., often referred to as simply Amazon, is an American electronic commerce and cloud computing company with headquarters in Seattle, Washington. It is the largest Internet-based retailer in the United States. Amazon.com started as an online bookstore, later diversifying to sell DVDs, Blu-rays, CDs, video downloads/streaming, MP3 downloads/streaming, audiobook downloads/streaming, software, video games, electronics, apparel, furniture, food, toys and jewelry. The company also produces consumer electronics—notably, Amazon Kindle e-book readers, Fire tablets, Fire TV and Fire Phone—and is the world's largest provider of cloud infrastructure services (IaaS). Amazon also sells certain low-end products like USB cables under its in-house brand AmazonBasics.
                        Amazon has separate retail websites for United States, United Kingdom and Ireland, France, Canada, Germany, Italy, Spain, Netherlands, Australia, Brazil, Japan, China, India and Mexico. Amazon also offers international shipping to certain other countries for some of its products.In 2011, it professed an intention to launch its websites in Poland and Sweden.
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
        	$("#keyboardDialog").ejDialog("open");
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
            padding: 0px;
            height:400px;
            width:500px;
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

