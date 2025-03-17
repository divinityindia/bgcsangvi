<!--
Author: WebThemez
Author URL: http://webthemez.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="Baburaoji Gholap College , Sangvi ,Pune" />
	<meta name="description" content="Baburaoji Gholap College , Sangvi ,Pune">
	<meta name="author" content="Baburaoji Gholap College , Sangvi ,Pune">
	<jsp:include page="title.jsp"></jsp:include>
	<link rel="favicon" href="assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="assets/css/style.css">
    <link rel='stylesheet' id='camera-css'  href='assets/css/camera.css' type='text/css' media='all'>
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	
	<style>
             	#customers {
			    font-family: "Trebuchet MS", Arial, sans-serif;
			    border-collapse: collapse;
			    width: 100%;
			}
			
			#customers td, #customers th {
			    border: 1px solid black;
			    padding: 8px;
			    font-size: 14px;
			}
			
			#customers tr:nth-child(even){background-color: #f2f2f2;}
			#customers tr:nth-child(odd){background-color: #ddd;}
			#customers tr:hover {background-color: #688FBB  ;
			                     color: white; }
			
			#customers th {
			    padding-top: 12px;
			    padding-bottom: 12px;
			    text-align: center;
			    background-color: #00abb1;
			    color: white;
			    font-size: 15px;
			} 	
	</style>
	
</head>
<body>

	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse" style="padding-top:0px">
		<div class="container" style="width: 100%;margin: 0px;padding-left: 0px;padding-right: 0px;">

			<jsp:include page="header.jsp"></jsp:include>
			<jsp:include page="menu.jsp"></jsp:include>

			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

<style>
	p{
		text-align: justify;
	}
</style>
	<br/>
	<div class="tg-innerbanner">
	
			<div class="container">
			
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<br>
						<ol class="tg-breadcrumb">
							<li style="display: inline-block;" ><a href="#" onclick="window.opener=self;window.close();" >Home</a></li>->
							
							<li class="tg-active" style="display: inline-block;">Result Details</li>
						</ol>
					</div>
				</div>
				
			</div>
			
	</div>
  <div class="container">
  <h3 align="center">Department Result Details </h3>
         <table id="customers" >
							             
							             <tr>
							                 <th>Sr.No</th>
							                 <th>Exam Name</th>
							                 <th>Year</th>
							                 <th>Document</th>
							             </tr>
							             <c:forEach var="cat" items="${hm}" varStatus="row">
							             <tr> 
							                  <td  style="text-align: center;">${row.count}</td>
							                  <td  style="text-align: center;">${cat.value[1]}</td>
							                  <td  style="text-align: center;">${cat.value[2]}</td>
							                 <td  style="text-align: left;"><a href="${s3pat}AddDepResult/${cat.value[0]}_${cat.value[3]}" target="_blank" >${cat.value[3]}</a></td>
							             </tr>
							            </c:forEach>
							       </table>
							    
							    

  </div>
<br>
<br><br>

	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="assets/js/modernizr-latest.js"></script>
	<script type='text/javascript' src='assets/js/jquery.min.js'></script>
    <script type='text/javascript' src='assets/js/fancybox/jquery.fancybox.pack.js'></script>

    <script type='text/javascript' src='assets/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='assets/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='assets/js/camera.min.js'></script>
    <script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>


</body>
</html>
