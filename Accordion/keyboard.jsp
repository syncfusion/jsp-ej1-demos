<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<ej:accordion id="KeyAccordion" allowKeyboardNavigation="true">
		<ej:accordion-accordionItem-contentTemplate>
			<h3>
                <a href="#">Twitter</a>
            </h3>
            <div>
                Twitter is an online social networking service that enables users to send and read short 140-character messages called "tweets".
                Registered users can read and post tweets, but those who are unregistered can only read them. Users access Twitter through the website interface, SMS or mobile device app Twitter Inc. is based in San Francisco and has more than 25 offices around the world.
                Twitter was created in March 2006 by Jack Dorsey, Evan Williams, Biz Stone, and Noah Glass and launched in July 2006. The service rapidly gained worldwide popularity, with more than 100 million users posting 340 million tweets a day in 2012.The service also handled 1.6 billion search queries per day.
            </div>
            <h3>
                <a href="#">Facebook</a>
            </h3>
            <div>
                Facebook is an online social networking service headquartered in Menlo Park, California. Its website was launched on February 4, 2004, by Mark Zuckerberg with his Harvard College roommates and fellow students Eduardo Saverin, Andrew McCollum, Dustin Moskovitz and Chris Hughes.The founders had initially limited the website's membership to Harvard students, but later expanded it to colleges in the Boston area, the Ivy League, and Stanford University. It gradually added support for students at various other universities and later to high-school students.
            </div>
            <h3>
                <a href="#">WhatsApp</a>
            </h3>
            <div>
                WhatsApp Messenger is a proprietary cross-platform instant messaging client for smartphones that operates under a subscription business model. It uses the Internet to send text messages, images, video, user location and audio media messages to other users using standard cellular mobile numbers.
                As of February 2016, WhatsApp had a user base of up to one billion,[10] making it the most globally popular messaging application.
                WhatsApp Inc., based in Mountain View, California, was acquired by Facebook Inc. on February 19, 2014, for approximately US$19.3 billion.
            </div>
		</ej:accordion-accordionItem-contentTemplate>
	
	</ej:accordion>
</div>

<div id="property-window" class="box wide">
     <div class="prop-grid keyboard">
        <div class="row">
            <div class="col-md-3">
                Alt + j
            </div>
            <div class="col-md-3">
                Focuses the control.
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                Up
            </div>
            <div class="col-md-3">
                Selected previous item.
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                Left
            </div>
            <div class="col-md-3">
                Selected previous item.
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                Down
            </div>
            <div class="col-md-3">
                Selected next item.
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                Right
            </div>
            <div class="col-md-3">
                Selected next item.
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                Home
            </div>
            <div class="col-md-3">
                Selected first item.
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                End
            </div>
            <div class="col-md-3">
                Selected last item.
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" class="jsScript">
        $(function () {
           
            $(document).on("keydown", function (e) {
                if (e.altKey && e.keyCode === 74) { 
                    $("#KeyAccordion").focus();
                }
            });
        });
    </script>

<style>
.cols-sample-area {
	width: 700px;
	margin: 0 auto;
	float: none;
}

</style>
