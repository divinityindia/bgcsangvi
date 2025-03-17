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
	<!-- /.navbar -->
   <div style="border: 1px solid black;padding: 2px;margin: 12px;">
          <h2 style="color:##09919c; font-weight: bold;font-family: sans-serif;font-size: 22px;text-align: center;">
		  <b>Practice 1 </b>
		  </h2>
		 <h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
		  <b>1.	Title of the Practice </b>
		</h3>
		<hr style="border-bottom: 1px solid black;">
		<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;font-weight: bold;">
		
		</p>	
   </div>
</body>
</html>