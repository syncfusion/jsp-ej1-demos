<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<ej:accordion id="iconAccordion">
	<ej:accordion-customIcon header="header-close" selectedHeader="header-expand" ></ej:accordion-customIcon>
		<ej:accordion-accordionItem-contentTemplate>
			<h3>
                <div class="logos volkswagan"></div>
                <a href="#">Volkswagen</a>
            </h3>
            <div>
                Volkswagen is a German automobile manufacturer headquartered in Wolfsburg, Lower Saxony, Germany.
                Volkswagen is the original and top-selling marquee of the Volkswagen Group, the biggest German automaker and the third largest automaker in the world.
            </div>
            <h3>
                <div class="logos mitsubishi"></div>
                <a href="#">Mitsubishi</a>
            </h3>
            <div>
                The Mitsubishi Group is a group of autonomous Japanese multinational companies covering a range of businesses which share the Mitsubishi brand,
                trademark, and legacy.The Mitsubishi group of companies form a loose entity, the Mitsubishi Keiretsu, which is often referenced in Japanese and US media and official reports.
            </div>
            <h3>
                <div class="logos benz"></div>
                <a href="#">Mercedes-Benz</a>
            </h3>
            <div>
                Mercedes-Benz is a multinational division of the German manufacturer Daimler AG, and the brand is used for luxury automobiles, buses, coaches, and trucks.
                Mercedes-Benz is headquartered in Stuttgart, Baden-Württemberg, Germany.The name first appeared in 1926 under Daimler-Benz but traces its origins
                to Daimler-Motormen-Gesell shaft's 1901 Mercedes and to Karl Benz's 1886 Benz Patent Motorwagen, which is widely regarded as the first automobile.
            </div>
            
           
		</ej:accordion-accordionItem-contentTemplate>
	
	</ej:accordion>
</div>


<style>
.cols-sample-area {
	width: 700px;
	margin: 0 auto;
	float: none;
}
#iconAccordion img {
    float: left;
    margin: -7px 1px 0 -13px;
}

.header-expand {
    background-image: url(Content/images/ui-icons/ui-icons-active.png);
    background-position: -187px -60px;
    cursor: pointer;
    display: block;
    float: right !important;
    height: 16px;
    width: 16px;
}

.header-close {
    background-image: url(Content/images/ui-icons/ui-icons-default.png);
    background-position: -161px -60px;
    cursor: pointer;
    display: block;
    float: right !important;
    height: 16px;
    width: 16px;
}

.e-acrdn-header:hover .header-expand {
    background-image: url(Content/images/ui-icons/ui-icons-active.png);
    background-position: -187px -60px;
}

.e-acrdn-header:hover .header-close {
    background-image: url(Content/images/ui-icons/ui-icons-active.png);
    background-position: -161px -60px;
}

.logos {
    float: left;
    height: 35px;
    margin: -6px 1px 2px -15px;
    width: 35px;
}

#iconAccordion .e-select .logos {
    background-image: url(Content/images/accordion/grey_logos.png);
}

#iconAccordion .e-active .logos {
    background-image: url(Content/images/accordion/white_logos.png);
}

#iconAccordion .e-select:hover div {
    background-image: url(Content/images/accordion/white_logos.png) !important;
}

.logos.volkswagan {
    background-position: 0 -170px;
}

.logos.mitsubishi {
    background-position: 0 -85px;
}

.logos.benz {
    background-position: 0 0;
}
</style>
