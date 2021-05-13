<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<ej:treeView id="treeView">
		<ej:treeview-contentTemplate>
			<ul >
           		<li class="expanded">Fiction Book Lists
					<ul>
                        <li>To Kill a Mockingbird</li>
                        <li>Pride and Prejudice</li>
                        <li> Harry Potter</li>
                        <li> The Hobbit</li>
                    </ul>
                </li>
				<li class="expanded"> Mystery Book Lists
                     <ul>
                         <li>And Then There Where None</li>
                         <li>Angles & Demons</li>
                         <li>In Cold Blood</li>
                         <li>The Name of the Rose</li>
                     </ul>
				</li>
            </ul>
		</ej:treeview-contentTemplate>
	</ej:treeView>
	
	<ej:tooltip id="treeView" width="230px" height="65px" containment=".cols-sample-area" target=".CanSelect" beforeOpen="onOpen" >
		<ej:tooltip-position>
			<ej:tooltip-position-stem horizontal="left" vertical="center" ></ej:tooltip-position-stem>
			<ej:tooltip-position-target horizontal="right" vertical="center" ></ej:tooltip-position-target>		
		</ej:tooltip-position>
	</ej:tooltip>
	
</div>

<script>
    var target;
    target = $("#treeView").data("ejTooltip");
    

    function onOpen(args){
        target = $("#treeView").data("ejTooltip");
                var emp = [
                    { book: "To Kill a Mockingbird", category: "Fiction" },
                    { book: "Pride and Prejudice", category: "Fiction" },
                    { book: "Harry Potter", category: "Fiction" },
                    { book: "The Hobbit", category: "Fiction" },
                    { book: "And Then There Where None", category: "Mystery" },
                    { book: "Angles & Demons", category: "Mystery" },
                    { book: "In Cold Blood", category: "Mystery" },
                    { book: "The Name of the Rose", category: "Mystery" },
                ];
                for (i = 0; i < 8; i++) {
                    if ($(args.event.target).text().trim() == emp[i].book)
                        var template = '<div class="main"> <img class="logo" src="Content/images/tooltip/book.png" /> <div class="des"> <div class="artists"> Category:' + emp[i].category + '</div><div class="song">' + emp[i].book + '</div></div> </div>';
                    else if($(args.event.target).text().trim() == "Fiction Book Lists")
                        var template = '<div class="main"> <img class="logo" src="Content/images/tooltip/book.png" /> <div class="des"> <div class="artists"> Category&nbsp;:&nbsp; Fiction </div><div class="song"> Please choose your books</div></div> </div>';
                    else if($(args.event.target).text().trim() == "Mystery Book Lists")
                        var template = '<div class="main"> <img class="logo" src="Content/images/tooltip/book.png" /> <div class="des"> <div class="artists"> Category&nbsp;:&nbsp; Mystery </div><div class="song"> Please choose your books</div></div> </div>';
                }
                target.setModel({ content: template });
            }
        
</script>

<style>
    .cols-sample-area
    {
        width: 550px;
        margin: 0 auto;
        float: none;
		height: 450px;
    }
    .e-tooltip-wrap {
        background-color: #ffcccc;
    }
    .e-tooltip-wrap .e-arrowTipInner{
        border-color: #ffcccc transparent;
    }
    
    #axisValue{
        display : none;
    }
    .logo{
        float: left;
        width: 45px;
        height: 50px;
        border: 2px dotted green;
        border-radius: 12px;
        margin-right: 10px;
        margin-bottom: 5px;
    }
    .des{
        color : grey;
    }
    .artists{
        margin-bottom: 5px;
    }
</style>
