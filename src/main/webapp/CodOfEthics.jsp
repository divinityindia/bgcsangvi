<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="Baburaoji Gholap College , Sangvi ,Pune" />
	<meta name="description" content="Baburaoji Gholap College , Sangvi ,Pune">
	<meta name="author" content="Baburaoji Gholap College , Sangvi ,Pune">
	<jsp:include page="title.jsp"></jsp:include>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  
  <script>
            $(document).ready(function(){
                 $("#btn1").click(function()
                		 {
                	      $("#block1").css('display','block');
                	      $("#block2").css('display','none');
                	      $("#block3").css('display','none');
                	      
                         });
                 $("#btn2").click(function()
                 		 {
		                  $("#block1").css('display','none');
		           	      $("#block2").css('display','block');
			           	   $("#block3").css('display','none');
	             	     
                          });
                 $("#btn3").click(function()
                 		 {
		                  $("#block1").css('display','none');
		           	      $("#block2").css('display','none');
		           	      $("#block3").css('display','block');
	             	      
                                 
                          });
                
                
   		                
                       });
                    	
                      
              
        </script>
	
</head>
<body>
         
              <!-- Fixed navbar -->
	<div class="navbar navbar-inverse" style="padding-top:0px">
		<div class="container" style="width: 100%;margin: 0px;padding-left: 0px;padding-right: 0px; ">

			<jsp:include page="header.jsp"></jsp:include>
			<jsp:include page="menu.jsp"></jsp:include>
             <input type="hidden" id="s3pat" value="${s3pat}">
		</div>
	</div>
	 <h1 style="color:#09919c; font-weight: bold;font-family: sans-serif;font-size: 25px;text-align: center;">
		  <u><b>Code of Ethics </b></u>
    </h1>
	<!-- /.navbar -->
   <div style="padding: 20px;margin: 12px;">
		<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;font-weight: bold;">
		The College believes in promoting a healthy culture amongst the students/faculty.  
		</p>	
		 <ol style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
		    <li style="padding: 10px;">Blending professionalism and humanism with all educational stakeholders.</li>
		    <li style="padding: 10px;">Nurturing and transcending the diversity in teaching learning process.</li>
		    <li style="padding: 10px;">Striving for personal, professional and educational growth through reflective practices for lifelong. </li>
		    <li style="padding: 10px;">Continuous triggering of research aptitude and inclination.  </li>
		    <li style="padding: 10px;">Pursuing original and socially inclined research practices.</li>
		</ol>
   </div>
</body>
</html>