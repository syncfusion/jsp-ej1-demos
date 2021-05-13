<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %>    
    <%@ page import="com.syncfusion.*" %>

<%@ page session="false" import="java.util.ArrayList" %>
<%@ page session="false" import="java.util.Iterator" %> 
<%@ page import="datasource.ChartDataSource" %> 
<%@ page import="datasource.GetChartDataSource" %>




<div class="cols-sample-area" style="border: 0px solid white !important;background:transparent !important">
<ej:bulletGraph id="bulletgraph1" load="loadBulletTheme"
 isResponsive="=true">
<ej:bulletGraph-tooltipSettings visible="true"></ej:bulletGraph-tooltipSettings>
<ej:bulletGraph-quantitativeScaleSettings minimum="0" maximum="10" interval="1">
<ej:bulletGraph-quantitativeScaleSettings-location x="110" y="10"></ej:bulletGraph-quantitativeScaleSettings-location>
<ej:bulletGraph-quantitativeScaleSettings-featuredMeasureSettings width="6"></ej:bulletGraph-quantitativeScaleSettings-featuredMeasureSettings>
<ej:bulletGraph-quantitativeScaleSettings-comparativeMeasureSettings width="5"></ej:bulletGraph-quantitativeScaleSettings-comparativeMeasureSettings>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasures>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasure value="8" comparativeMeasureValue="7" category=""></ej:bulletGraph-quantitativeScaleSettings-featureMeasure>
</ej:bulletGraph-quantitativeScaleSettings-featureMeasures>
</ej:bulletGraph-quantitativeScaleSettings>
<ej:bulletGraph-qualitativeRanges>
<ej:bulletGraph-qualitativeRange rangeEnd="4"></ej:bulletGraph-qualitativeRange>
<ej:bulletGraph-qualitativeRange rangeEnd="7"></ej:bulletGraph-qualitativeRange>
<ej:bulletGraph-qualitativeRange rangeEnd="10"></ej:bulletGraph-qualitativeRange>
</ej:bulletGraph-qualitativeRanges>
<ej:bulletGraph-captionSettings textAngle="0" text="Revenue YTD" >
<ej:bulletGraph-captionSettings-location x="17" y="20"></ej:bulletGraph-captionSettings-location>
<ej:bulletGraph-captionSettings-font fontFamily="Segoe UI" fontStyle="normal" fontWeight="normal" opacity="1" size="12px"> </ej:bulletGraph-captionSettings-font>
<ej:bulletGraph-captionSettings-subTitle textAngle="0" text="$ in Thousands">
<ej:bulletGraph-captionSettings-subTitle-location x="10" y="35"></ej:bulletGraph-captionSettings-subTitle-location>
<ej:bulletGraph-captionSettings-subTitle-font fontFamily="Segoe UI" fontStyle="normal" fontWeight="normal" opacity="1" size="12px"></ej:bulletGraph-captionSettings-subTitle-font>
</ej:bulletGraph-captionSettings-subTitle>
</ej:bulletGraph-captionSettings>
</ej:bulletGraph>

<ej:bulletGraph id="bulletgraph2" load="loadBulletTheme"
 isResponsive="=true">
<ej:bulletGraph-tooltipSettings visible="true"></ej:bulletGraph-tooltipSettings>
<ej:bulletGraph-quantitativeScaleSettings minimum="-10" maximum="10" interval="2" minorTicksPerInterval="4" tickPosition="far">
<ej:bulletGraph-quantitativeScaleSettings-location x="110" y="10"></ej:bulletGraph-quantitativeScaleSettings-location>
<ej:bulletGraph-quantitativeScaleSettings-featuredMeasureSettings width="6"></ej:bulletGraph-quantitativeScaleSettings-featuredMeasureSettings>
<ej:bulletGraph-quantitativeScaleSettings-comparativeMeasureSettings width="5"></ej:bulletGraph-quantitativeScaleSettings-comparativeMeasureSettings>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasures>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasure value="8" comparativeMeasureValue="7" category=""></ej:bulletGraph-quantitativeScaleSettings-featureMeasure>
</ej:bulletGraph-quantitativeScaleSettings-featureMeasures>
<ej:bulletGraph-quantitativeScaleSettings-labelSettings position="below" offset="14" size="10" labelSuffix=" %"></ej:bulletGraph-quantitativeScaleSettings-labelSettings>
<ej:bulletGraph-quantitativeScaleSettings-majorTickSettings width="1" size="13"></ej:bulletGraph-quantitativeScaleSettings-majorTickSettings>
<ej:bulletGraph-quantitativeScaleSettings-minorTickSettings width="1" size="5"></ej:bulletGraph-quantitativeScaleSettings-minorTickSettings>
</ej:bulletGraph-quantitativeScaleSettings>
<ej:bulletGraph-qualitativeRanges>
<ej:bulletGraph-qualitativeRange rangeEnd="-3" rangeStroke="#61a301"></ej:bulletGraph-qualitativeRange>
<ej:bulletGraph-qualitativeRange rangeEnd="4" rangeStroke="#fcda21"></ej:bulletGraph-qualitativeRange>
<ej:bulletGraph-qualitativeRange rangeEnd="10" rangeStroke="#d61e3f"></ej:bulletGraph-qualitativeRange>
</ej:bulletGraph-qualitativeRanges>
<ej:bulletGraph-captionSettings text="Profit" >
<ej:bulletGraph-captionSettings-location x="60" y="25"></ej:bulletGraph-captionSettings-location>
<ej:bulletGraph-captionSettings-font fontFamily="Segoe UI" fontStyle="normal" fontWeight="normal" opacity="1" size="12px"> </ej:bulletGraph-captionSettings-font>
</ej:bulletGraph-captionSettings>
</ej:bulletGraph>

<ej:bulletGraph id="bulletgraph3" load="loadBulletTheme"
 isResponsive="=true">
<ej:bulletGraph-tooltipSettings visible="true"></ej:bulletGraph-tooltipSettings>
<ej:bulletGraph-quantitativeScaleSettings minimum="-10" maximum="10" interval="2" minorTicksPerInterval="4" tickPosition="far">
<ej:bulletGraph-quantitativeScaleSettings-location x="110" y="10"></ej:bulletGraph-quantitativeScaleSettings-location>
<ej:bulletGraph-quantitativeScaleSettings-featuredMeasureSettings width="6"></ej:bulletGraph-quantitativeScaleSettings-featuredMeasureSettings>
<ej:bulletGraph-quantitativeScaleSettings-comparativeMeasureSettings width="5"></ej:bulletGraph-quantitativeScaleSettings-comparativeMeasureSettings>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasures>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasure value="-2" comparativeMeasureValue="-2" category=""></ej:bulletGraph-quantitativeScaleSettings-featureMeasure>
</ej:bulletGraph-quantitativeScaleSettings-featureMeasures>
<ej:bulletGraph-quantitativeScaleSettings-labelSettings position="below" offset="14" size="10" labelSuffix=" %"></ej:bulletGraph-quantitativeScaleSettings-labelSettings>
<ej:bulletGraph-quantitativeScaleSettings-majorTickSettings width="1" size="13" stroke="gray"></ej:bulletGraph-quantitativeScaleSettings-majorTickSettings>
<ej:bulletGraph-quantitativeScaleSettings-minorTickSettings width="1" size="5" stroke="gray"></ej:bulletGraph-quantitativeScaleSettings-minorTickSettings>
</ej:bulletGraph-quantitativeScaleSettings>
<ej:bulletGraph-qualitativeRanges>
<ej:bulletGraph-qualitativeRange rangeEnd="-4"></ej:bulletGraph-qualitativeRange>
<ej:bulletGraph-qualitativeRange rangeEnd="4"></ej:bulletGraph-qualitativeRange>
<ej:bulletGraph-qualitativeRange rangeEnd="10"></ej:bulletGraph-qualitativeRange>
</ej:bulletGraph-qualitativeRanges>
<ej:bulletGraph-captionSettings textAngle="0" text="Expenses" >
<ej:bulletGraph-captionSettings-location x="38" y="25"></ej:bulletGraph-captionSettings-location>
<ej:bulletGraph-captionSettings-font fontFamily="Segoe UI" fontStyle="normal" fontWeight="normal" opacity="1" size="12px"> </ej:bulletGraph-captionSettings-font>
</ej:bulletGraph-captionSettings>
</ej:bulletGraph>

<ej:bulletGraph id="bulletgraph4" load="loadBulletTheme"
 isResponsive="=true">
<ej:bulletGraph-tooltipSettings visible="true"></ej:bulletGraph-tooltipSettings>
<ej:bulletGraph-quantitativeScaleSettings minimum="0" maximum="10" interval="1" minorTicksPerInterval="4" tickPosition="far">
<ej:bulletGraph-quantitativeScaleSettings-location x="105" y="10"></ej:bulletGraph-quantitativeScaleSettings-location>
<ej:bulletGraph-quantitativeScaleSettings-featuredMeasureSettings width="6"></ej:bulletGraph-quantitativeScaleSettings-featuredMeasureSettings>
<ej:bulletGraph-quantitativeScaleSettings-comparativeMeasureSettings width="5"></ej:bulletGraph-quantitativeScaleSettings-comparativeMeasureSettings>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasures>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasure value="8" comparativeMeasureValue="7" category=""></ej:bulletGraph-quantitativeScaleSettings-featureMeasure>
</ej:bulletGraph-quantitativeScaleSettings-featureMeasures>
<ej:bulletGraph-quantitativeScaleSettings-labelSettings position="below" offset="14" size="10" labelPrefix="$ " labelSuffix=" K"></ej:bulletGraph-quantitativeScaleSettings-labelSettings>
<ej:bulletGraph-quantitativeScaleSettings-majorTickSettings width="1" size="13"></ej:bulletGraph-quantitativeScaleSettings-majorTickSettings>
<ej:bulletGraph-quantitativeScaleSettings-minorTickSettings width="1" size="5"></ej:bulletGraph-quantitativeScaleSettings-minorTickSettings>
</ej:bulletGraph-quantitativeScaleSettings>
<ej:bulletGraph-qualitativeRanges>
<ej:bulletGraph-qualitativeRange rangeEnd="4" rangeStroke="#61a301" rangeOpacity="1"></ej:bulletGraph-qualitativeRange>
<ej:bulletGraph-qualitativeRange rangeEnd="7" rangeStroke="#fcda21" rangeOpacity="1"></ej:bulletGraph-qualitativeRange>
<ej:bulletGraph-qualitativeRange rangeEnd="10" rangeStroke="#d61e3f" rangeOpacity="1"></ej:bulletGraph-qualitativeRange>
</ej:bulletGraph-qualitativeRanges>
<ej:bulletGraph-captionSettings textAngle="0" text="Revenue YTD" >
<ej:bulletGraph-captionSettings-location x="17" y="20"></ej:bulletGraph-captionSettings-location>
<ej:bulletGraph-captionSettings-font fontFamily="Segoe UI" fontStyle="normal" fontWeight="normal" opacity="1" size="12px"> </ej:bulletGraph-captionSettings-font>
<ej:bulletGraph-captionSettings-subTitle textAngle="0" text="$ in Thousands">
<ej:bulletGraph-captionSettings-subTitle-location x="10" y="35"></ej:bulletGraph-captionSettings-subTitle-location>
<ej:bulletGraph-captionSettings-subTitle-font fontFamily="Segoe UI" fontStyle="normal" fontWeight="normal" opacity="1" size="12px"></ej:bulletGraph-captionSettings-subTitle-font>
</ej:bulletGraph-captionSettings-subTitle>
</ej:bulletGraph-captionSettings>
</ej:bulletGraph>
</div>
<style>
.cols-sample-area{
width:80%;
}
</style>
</html>