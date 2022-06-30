<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<%@ page session="false" import="java.util.ArrayList"%>
<%@ page session="false" import="java.util.Iterator"%>
<%@ page import="datasource.GetJsonData"%>

<body>
	<script type="text/x-jsrender" id="tooltipTemplate">
        <table>
           {{if #data['resourceNames']}}
            <tr>
                <td rowspan="3" style="padding:3px"><img src="Content/images/gantt/{{:#data['resourceNames']}}.png" height="40px" /></td>
                <td style="padding:3px"><b>Task done By:</b></td>
                <td style="padding:3px">{{:#data['resourceNames']}}</td>
            </tr>
            {{/if}}
            <tr>
                <td style="padding:3px"><b>Starts On:</b></td>
                <td style="padding:3px">{{:~_ganttDateFormatter("startDate")}}</td>
            </tr>
            <tr>
                <td style="padding:3px"><b>Ends On:</b></td>
                <td style="padding:3px">{{:~_ganttDateFormatter("endDate")}}</td>
            </tr>
        </table>
    </script>
	<script>
        function _dateFormating(key) {
            var date = this.data[key];
            return date ? ej.format(date, "dddd, dd MMM") : "";
        }
        var helpers = {};
        helpers["_ganttDateFormatter"] = _dateFormating;
        $.views.helpers(helpers);
    </script>

<div class="cols-sample-area">
	<%
	GetJsonData obj =new GetJsonData();
    Object data = obj.getGanttData();
    request.setAttribute("DataSource", data);
    
    GetJsonData obj1=new GetJsonData();
    Object resourcedata = obj1.getGanttResourceData();
    request.setAttribute("resource", resourcedata);
    
    %>

		<ej:gantt id="gantttemplate" dataSource="${DataSource}"
			taskIdMapping="taskID" taskNameMapping="taskName"
			scheduleStartDate="02/01/2017" scheduleEndDate="03/16/2017"
			startDateMapping="startDate" endDateMapping="endDate"
			childMapping="subtasks" resources="${resource}"
			resourceInfoMapping="resourceId" resourceNameMapping="resourceName"
			resourceIdMapping="resourceId" load="load"
			taskbarTooltipTemplateId="tooltipTemplate" treeColumnIndex="1" progressMapping="progress" rowHeight="48">
		</ej:gantt>
	</div>
</body>
<style>
.cols-sample-area {
	width: 80%;
}
</style>
<script type="text/javascript"> 

function load(args){		  
    this.getColumns()[0].width = 60;
}	
</script>
</html>