<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<%@ page session="false" import="java.util.ArrayList" %>
<%@ page import="datasource.prop" %> 
<%@ page import="datasource.getprop" %> 


<%
getprop props=new getprop();
ArrayList<prop> data2 = props.GetPropdata();
request.setAttribute("DataSource2",data2);
    %>
<div class="cols-sample-area">
  <div class="e-tile-group" style="padding: 0">
  <div class="e-tile-column">
<ej:tile id="tile1" imageUrl="Content/images/tile/windows/people_2.png" imagePosition="fill" tileSize="medium" >
<ej:tile-caption text="People"></ej:tile-caption>
</ej:tile>
<div class="e-tile-small-col-2">
<ej:tile id="tile2" imageUrl="Content/images/tile/windows/alerts.png">
</ej:tile>
<ej:tile id="tile3" imageUrl="Content/images/tile/windows/bing.png">

</ej:tile>
<ej:tile id="tile4" imageUrl="Content/images/tile/windows/camera.png">

</ej:tile>
<ej:tile id="tile5" imageUrl="Content/images/tile/windows/messages.png"  >

</ej:tile>
</div>
<ej:tile id="tile6" imageUrl="Content/images/tile/windows/games.png" tileSize="medium"  > 
<ej:tile-caption text="Play"></ej:tile-caption>
</ej:tile>
<ej:tile id="tile7" imageUrl="Content/images/tile/windows/map.png"  tileSize="medium" >
<ej:tile-caption text="Maps"></ej:tile-caption>
</ej:tile>
<ej:tile id="tile8" imageUrl="Content/images/tile/windows/sports.png" imagePosition="fill" tileSize="wide">
 <ej:tile-caption text="Sports"></ej:tile-caption>
</ej:tile>
 </div>
 <div class="e-tile-column">
<ej:tile id="tile9" imageUrl="Content/images/tile/windows/people_2.png" imagePosition="fill"  tileSize= "medium">
<ej:tile-caption text="People"></ej:tile-caption>
</ej:tile>
<ej:tile id="tile10" imageUrl="Content/images/tile/windows/pictures.png" tileSize="medium">
<ej:tile-caption text="Photo"></ej:tile-caption>
</ej:tile>
<div id="scrollTarget"  align="center" style="width: 100%; height: 100%;">
<ej:tile id="tile11" imageUrl="Content/images/tile/windows/weather.png" tileSize= "wide">
<ej:tile-caption text="Weather"></ej:tile-caption>
</ej:tile>
<ej:tile id="tile12" imageUrl="Content/images/tile/windows/music.png" tileSize= "medium">
<ej:tile-caption text="Music"></ej:tile-caption>
</ej:tile>
<ej:tile id="tile13" imageUrl="Content/images/tile/windows/favs.png" tileSize= "medium">
<ej:tile-caption text="Favorites"></ej:tile-caption>
</ej:tile>
</div>
</div>
</div>
</div>
