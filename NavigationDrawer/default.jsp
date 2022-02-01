<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
       <%@ page import="com.syncfusion.*"%>
       <%@ page import="java.util.*" %>
   
<div class="cols-sample-area" style="padding:0px; width:100%; height:500px; position: relative;overflow:hidden; margin: 0px; min-height: 221px;">
   <div id="container">
       <div class="e-lv">
           <div class="e-header">
               <div id="butdrawer" class="drawericon e-icon"></div>
                <h2>Home</h2>
           </div>
       </div>

       <div id="home" class="subpage">
           <p>
               The United Kingdom of Great Britain and Northern Ireland, commonly known as the United Kingdom (UK) and Britain, is a sovereign state located off the north-western coast of continental Europe. The country includes the island of Great Britain, the north-eastern part of the island of Ireland and many smaller islands. Northern Ireland is the only part of the UK that shares a land border with another state the Republic of Ireland. Apart from this land border, the UK is surrounded by the Atlantic Ocean in the west and north, the North Sea in the east, the English Channel in the south and the Irish Sea in the west.
           </p>
       </div>
       <div id="people" class="subpage" >
           <table >
               <tbody>
                   <tr>
                       <td>
                           <div style="background-image: url('Content/images/Employees/1.png')" class="peopleimage"></div>
                           <span>Agatha Jessie</span>
                       </td>
                       <td>
                           <div style="background-image: url('Content/images/Employees/2.png')" class="peopleimage"></div>
                           <span>Andrew Philip</span>
                       </td>
                       <td>
                           <div style="background-image: url('Content/images/Employees/3.png')" class="peopleimage"></div>
                           <span>Lilly Thomas</span>
                       </td>
                       <td>
                           <div style="background-image: url('Content/images/Employees/4.png')" class="peopleimage"></div>
                           <span>Jaden Storm</span>
                       </td>
                       <td>
                           <div style="background-image: url('Content/images/Employees/5.png')" class="peopleimage"></div>
                           <span>Angel Christie</span>
                       </td>
                       <td>
                           <div style="background-image: url('Content/images/Employees/6.png')" class="peopleimage"></div>
                           <span>Joe Michael</span>
                       </td>
                       <td>
                           <div style="background-image: url('Content/images/Employees/7.png')" class="peopleimage"></div>
                           <span>Marie Luke</span>
                       </td>
                   </tr>
               </tbody>
           </table>
       </div>
       <div id="profile" class="subpage" >
           <table>
               <tbody>
                   <tr>
                       <td>
                           <div style="background-image: url('Content/images/Employees/2.png')" class="profileimage"></div>
                       </td>
                       <td>
                           <h2>Andrew Philip</h2>                                            
                       </td>
                   </tr>
               </tbody>
           </table>
           <br />
           <span style="font-weight: bold">Profile</span><br>
           <p>
               Born on December 25, 1954, in Spokane, Washington. Philip graduated from Texas University in 1978. He started his career as a teacher.
               Later he started business with his friend Paul. They both spent more time together working on business. They earned enough money and spent that for poor and social welfares. Later they together started an organization for children welfare.
           </p>
       </div>
       <div id="photos" class="subpage">
           <table>
               <tbody>
                   <tr>
                       <td>
                           <div style="background-image: url('Content/images/navigationdrawer/photo/01.png')" class="photoimage"></div>
                       </td>
                       <td>
                           <div style="background-image: url('Content/images/navigationdrawer/photo/02.png')" class="photoimage"></div>
                       </td>
                       <td>
                           <div style="background-image: url('Content/images/navigationdrawer/photo/03.png')" class="photoimage"></div>
                       </td>
                       <td>
                           <div style="background-image: url('Content/images/navigationdrawer/photo/04.png')" class="photoimage"></div>
                       </td>
                       <td>
                           <div style="background-image: url('Content/images/navigationdrawer/photo/05.png')" class="photoimage"></div>
                       </td>                                      
                   </tr>
               </tbody>
           </table>
       </div>
       <div id="communities" class="subpage" >
           <h2>Product Breadth</h2>
           <p>UI, reporting and business intelligence on any .NET platform, all from one vendor.</p>
           <h2>No-Hassle Licensing</h2>
           <p>No royalties, run-time, or server-deployment fees means no surprises.</p>
           <h2>Uncompromising Quality</h2>
           <p>An almost brutal QA process makes our products truly enterprise-quality.</p>
           <h2>Outstanding Support</h2>
           <p>Our team is in-house, accessible, and fast. The online forum, knowledge base, and Direct-Trac support system provide 24/7 access.</p>
       </div>
       <div id="location" class="subpage" >
           <div style="background-image: url('Content/images/navigationdrawer/location.png')" class="locationimage"></div>
       </div>
   </div>
  
    <div id="content_container"> </div>
                     
<ej:navigationDrawer id="navpane" enableListView="true" targetId="butdrawer" contentId="content_container" type="overlay" direction="left" > 

<ej:navigationdrawer-contentTemplate>

<ul>
 <li  data-ej-imageurl="Content/images/navigationdrawer/home.png" data-ej-text="Home" data-ej-href="#home"
                                    id="navhome"></li>
<li data-ej-imageurl="Content/images/navigationdrawer/people.png" data-ej-text="People" data-ej-href="#people"
                                    id="navpeople"></li>
<li data-ej-imageurl="Content/images/navigationdrawer/profile.png" data-ej-text="Profile" data-ej-href="#profile"
                                    id="navprofile"></li>
<li data-ej-imageurl="Content/images/navigationdrawer/photo.png" data-ej-text="Photos" data-ej-href="#photos"
                                    id="navphotos"></li>
<li data-ej-imageurl="Content/images/navigationdrawer/communities.png" data-ej-text="Communities" data-ej-href="#communities"
                                    id="navcommunities"></li>
<li data-ej-imageurl="Content/images/navigationdrawer/locations.png" data-ej-text="Location" data-ej-href="#location"
                                    id="navlocation"></li>
</ul>

</ej:navigationdrawer-contentTemplate>
</ej:navigationDrawer>

</div>
  <script>
        $(function (){
	 $("#navpane").ejNavigationDrawer({listViewSettings: {width: 200,selectedItemIndex:0, mouseUp: "headChange"}})  
        });
      function headChange(e) {
    $("#butdrawer").parent().children("h2").text(e.text);
    }
 
  </script>
  <style>
        #navpane
        {
            z-index: 99998 !important;
        }
        #navpane_Overlay
        {
            z-index: 99997 !important;
        }
        #navpane_listbox img.e-list-img {
            padding-right: 10px;
        }

        body {
            margin: 0;
            padding: 0;
        }

        .e-header {
            padding-top: 8px;
        }

        #container p {
            padding: 10px;
            text-align: justify;
        }

        #container {
            -moz-user-select: none;
            -webkit-user-select: none;
            -ms-user-select: none;
            user-select: none;
         
        }

        .peopleimage {
            background: none no-repeat scroll center center / 70px 70px rgba(0, 0, 0, 0);
            height: 100px;
            margin: auto;
            width: 100px;
            border: 1px solid #737373;
        }

        .profileimage {
            background: none no-repeat scroll center center / 90px 90px rgba(0, 0, 0, 0);
            height: 95px;
            border: 1px solid #b3b3b3;
            margin-right: 12px;
            width: 95px;
        }

        .photoimage {
            background: none no-repeat scroll center center / 140px 120px rgba(0, 0, 0, 0);
            height: 125px;
            margin: auto;
            width: 145px;
        }

        .locationimage {
            background: url("img/location.png") no-repeat scroll center center / 300px 200px rgba(0, 0, 0, 0);
            height: 230px;
            margin: auto;
            padding: 10px;
            width: 320px;
        }

        .drawericon {
            background-position: center center;
            background-repeat: no-repeat;
            height: 32px;
            width: 32px;
            background-size: 100% 100%;
            padding-right: 10px;
        }

         #people td {
            border: 1px solid #9f9f9f;
            text-align: center;
			padding: 8px;
        }
		#photos td div {
			background-position: center center;
			background-size: 100% 100%;
			border: 1px solid #b3b3b3;
			margin-left: 7.6px;
		}
          .subpage {
            padding: 10px;
            text-align: justify;
			overflow-x: auto;
			overflow-y: auto;
			}
        #navpane .subpage {
            padding:0px;
        }

        .drawericon:before {
            content: "\e76b";
            font-size: 28px;
            height: 26px;
        }
       #sampleContainer{
       max-height:500px;}
	   .e-nb-listview .subpage{
		   height: 290px !important;
	   }
    </style>