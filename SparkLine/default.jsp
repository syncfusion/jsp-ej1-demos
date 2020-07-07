<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld" %>    
    <%@ page import="com.syncfusion.*" %>

<%@ page session="false" import="java.util.ArrayList" %>
<%@ page session="false" import="java.util.Iterator" %> 
<body>
<div>
<%
	int[] data2 = new int[]{12, 14, 11, 12, 11, 15, 12, 10, 11, 12, 15, 13, 12, 11, 10, 13, 15, 12, 14, 16, 14, 12, 11};
	int[] data3 = new int[]{2, 6, -1, 1, 12, 5, -2, 7, -3, 5, 8, 10};
	int[] data4 = new int[]{2, 6, -1, 1, 12, 5, -2, 7, -3, 5, 8, 10};
	int[] data5 = new int[]{12, 15, -11, 13, 17, 0, -12, 17, 13, -15, 8, 10};
	int[] pie1 = new int[]{4, 6,7};
	int[] pie2 = new int[]{8, 9, 1};
	int[] pie3 = new int[]{2, 3, 5};
	int[] pie4 = new int[]{10, 12, 11};
	request.setAttribute("LineData",data2);
    request.setAttribute("ColumnData",data3);
    request.setAttribute("AreaData",data4);
    request.setAttribute("WinlossData",data5);
    request.setAttribute("Pie1Data",pie1);
    request.setAttribute("Pie2Data",pie2);
    request.setAttribute("Pie3Data",pie3);
    request.setAttribute("Pie4Data",pie4);
    
    %>
    <div>
        <div id="sparkline" class="row">
            <div>
                <table style="width:100%;">
                    <tr>
                        <td align ="center"><i>Mean Working Hours for year</i></td>
                        <td>
                            <div class="line" style="width:170px;">
								<ej:sparkline id="line" load="sparkTooltip" type="line" dataSource="${LineData}">
									<ej:sparkline-size height="40" width="170"></ej:sparkline-size>
								</ej:sparkline>
                            </div>
                        </td>
                    </tr>
                    <tr>
                    	<td align="center"><i>Revenue Status</i></td>
                    	<td>
                        	<div class="column" style="height:100px;width:150px">
                            	<ej:sparkline id="column" load="sparkTooltip" negativePointColor="red" highPointColor="blue" type="column" dataSource="${ColumnData}">
									<ej:sparkline-size height="100" width="150"></ej:sparkline-size>
								</ej:sparkline>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td align="center"><i>Project Status Tracing</i></td>
                        <td>
                            <div class="area" style="height:100px;width:150px">
                            	<ej:sparkline id="area" load="sparkTooltip" highPointColor="blue" lowPointColor="orange" type="area" dataSource="${AreaData}">
									<ej:sparkline-markerSettings visible="true"></ej:sparkline-markerSettings>
									<ej:sparkline-size height="100" width="150"></ej:sparkline-size>
								</ej:sparkline>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td align="center"><i>Profit Comparison for each months</i></td>
                        <td>
                            <div class="winloss" style="height:100px;width:150px">
                            	<ej:sparkline id="winloss" load="sparkTooltip" type="winloss" dataSource="${WinlossData}">
									<ej:sparkline-size height="100" width="150"></ej:sparkline-size>
								</ej:sparkline>
                            </div>
                        </td>

                    </tr>
                    <tr>
                        <td align="center"><i>Expenditure for a year</i></td>
                        <td>
                        	<table>
                            	<tr>
                            		<td>
                                		<div class="pie1" style="height:40px;width:40px">
                                			<ej:sparkline id="pie1" type="pie" load="sparkTooltip" dataSource="${Pie1Data}">
												<ej:sparkline-size height="40" width="40"></ej:sparkline-size>
											</ej:sparkline>
                                		</div>
                                	</td>
                            		<td>
                                		<div class="pie2" style="height:40px;width:40px">
                                			<ej:sparkline id="pie2" load="sparkTooltip" type="pie" dataSource="${Pie2Data}">
												<ej:sparkline-size height="40" width="40"></ej:sparkline-size>
											</ej:sparkline>
                                		</div>
                                	</td>
                            		<td>
                                		<div class="pie3" style="height:40px;width:40px">
                                			<ej:sparkline id="pie3" load="sparkTooltip" type="pie" dataSource="${Pie3Data}">
												<ej:sparkline-size height="40" width="40"></ej:sparkline-size>
											</ej:sparkline>
                                		</div>
                                	</td>
                            		<td>
                                		<div class="pie4" style="height:40px;width:40px">
                                			<ej:sparkline id="pie4" load="sparkTooltip" type="pie" dataSource="${Pie4Data}">
												<ej:sparkline-size height="40" width="40"></ej:sparkline-size>
											</ej:sparkline>
                                		</div>
                                	</td>
                            	</tr>
                 				<tr>
                         			<td align="center">Q1</td>
                            		<td align="center"> Q2</td>
                            		<td align="center"> Q3</td>
                            		<td align="center"> Q4</td>
                            	</tr>
                  			</table>
               			</td>
                    </tr>
                </table>
       		</div>
     	</div>
 	</div>

  
</div>
</body>
<script>
function sparkTooltip(sender){
	sender.model.tooltip.visible = true;
	sender.model.tooltip.font = {
            size: "12px"
     }
}
</script>
<style>
.cols-sample-area{
width:80%;
}
</style>
</html>