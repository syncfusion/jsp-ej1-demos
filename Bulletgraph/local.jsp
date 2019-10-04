<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %>    
    <%@ page import="com.syncfusion.*" %>

<%@ page session="false" import="java.util.ArrayList" %>
<%@ page session="false" import="java.util.Iterator" %> </head>

<div class="cols-sample-area" style="border: 0px solid white !important;background:transparent !important">

<ej:bulletGraph id="bulletgraph" load="loadBulletTheme"
 isResponsive="=true" qualitativeRangeSize="320" height="400">
<ej:bulletGraph-tooltipSettings visible="true"></ej:bulletGraph-tooltipSettings>
<ej:bulletGraph-quantitativeScaleSettings>
<ej:bulletGraph-quantitativeScaleSettings-location x="110" y="25"></ej:bulletGraph-quantitativeScaleSettings-location>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasures>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasure value="9" comparativeMeasureValue="7" category="2001"></ej:bulletGraph-quantitativeScaleSettings-featureMeasure>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasure value="9" comparativeMeasureValue="5" category="2002"></ej:bulletGraph-quantitativeScaleSettings-featureMeasure>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasure value="9" comparativeMeasureValue="6" category="2003"></ej:bulletGraph-quantitativeScaleSettings-featureMeasure>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasure value="9" comparativeMeasureValue="8" category="2004"></ej:bulletGraph-quantitativeScaleSettings-featureMeasure>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasure value="9" comparativeMeasureValue="5" category="2005"></ej:bulletGraph-quantitativeScaleSettings-featureMeasure>
<ej:bulletGraph-quantitativeScaleSettings-featureMeasure value="9" comparativeMeasureValue="6" category="2006"></ej:bulletGraph-quantitativeScaleSettings-featureMeasure>
</ej:bulletGraph-quantitativeScaleSettings-featureMeasures>
</ej:bulletGraph-quantitativeScaleSettings>
<ej:bulletGraph-qualitativeRanges>
<ej:bulletGraph-qualitativeRange rangeEnd="4"></ej:bulletGraph-qualitativeRange>
<ej:bulletGraph-qualitativeRange rangeEnd="7"></ej:bulletGraph-qualitativeRange>
<ej:bulletGraph-qualitativeRange rangeEnd="10"></ej:bulletGraph-qualitativeRange>
</ej:bulletGraph-qualitativeRanges>
<ej:bulletGraph-captionSettings textAngle="-90" text="Revenue YTD" >
<ej:bulletGraph-captionSettings-location x="40" y="210"></ej:bulletGraph-captionSettings-location>
<ej:bulletGraph-captionSettings-subTitle textAngle="-90" text="$ in Thousands">
<ej:bulletGraph-captionSettings-subTitle-location x="55" y="210"></ej:bulletGraph-captionSettings-subTitle-location>
</ej:bulletGraph-captionSettings-subTitle>
</ej:bulletGraph-captionSettings>
</ej:bulletGraph>

</div>