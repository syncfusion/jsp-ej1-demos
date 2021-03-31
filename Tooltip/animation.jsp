<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">

	<div class="frame" id="custom">
                    
		<div class="image">
		<img src="Content/images/tooltip/template-04.png" alt="Roslyn Succinctly" >
		</div>
		<div class="desc">Roslyn Succinctly</div>
	
     </div>
         
	<ej:tooltip id="custom" content="Microsoft has only recently embraced the world of open source software, offering many pieces of the .NET Framework architecture as open source projects. More..." width="45%" >
		<ej:tooltip-animation effect="slide" speed="1000"></ej:tooltip-animation>
		<ej:tooltip-position>
			<ej:tooltip-position-stem horizontal="left" vertical="center" ></ej:tooltip-position-stem>
			<ej:tooltip-position-target horizontal="right" vertical="center" ></ej:tooltip-position-target>		
		</ej:tooltip-position>
	</ej:tooltip>
	
</div>

<style>
    .cols-sample-area
    {
        width: 550px;
        margin: 0 auto;
        float: none;
		height: 450px;
    }
    
    .frame{
			box-sizing: border-box;
			border: 1px solid #ccc !important;
			border-radius: 0px;
			padding: 0px;
			text-align: center;
			width : 160px;
		}
		.frame img{
		    width : 100%;
		}
        @media (max-width: 440px){
			.frame{
				width : 160px !important;
			}
        }
       .image{
		    background-color: #ccc;
		}
      img{
	      padding-top: 8px;
	  }

</style>
