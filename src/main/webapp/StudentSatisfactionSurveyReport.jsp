<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix ="fn"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!--
Author: WebThemez
Author URL: http://webthemez.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
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
		.listul li a{
			background: #008080;
			width: 100%;
			display:inline-block;
			color:#fff;
			padding:5px;
			margin-bottom: 5px;
			border-radius:5px;
		}
		.listul li a:HOVER{
			background: #009E9E;
		}
		.tg-widgettitle1{
			background: #428bca;
			color:#fff;
			border-radius:5px;
		}
		.tg-widgettitle1 h3{
			padding:5px;
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
  <div class="container" style="width: 100%;">

<div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" align="center">
			<h3  style="color: #43577B;text-align: center;font-family: sans-serif;font-weight: bold;font-size: 22px;">Student Satisfaction Survey Report</h3>
		</div>
       
</div><br>
<div class="row">
   
	<div id="tg-twocolumns" class="tg-twocolumns">
		<div class="col-xs-12 col-sm-1 col-md-1 col-lg-1">
			
		</div>
		<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
		     <table style="width: 100%; border: 1px solid black;">
		         <thead>
		             <tr style="border: 1px solid black;background: #fdd991;color: #003135;">
		                  <th width="20%;" style="padding: 10px; font-size: 16px; font-family: sans-serif; font-weight: bold;text-align: center;border-right: 1px solid black;">Sr.No.</th>
		                  <th width="40%" style="padding: 10px; font-size: 16px; font-family: sans-serif; font-weight: bold;text-align: center;border-right: 1px solid black;">Title</th>
		                  <th width="40%" style="padding: 10px; font-size: 16px; font-family: sans-serif; font-weight: bold;text-align: center;">Report</th>
		             </tr>
		         </thead>
		             <c:forEach var="cat" items="${dtl}" varStatus="row">
		           <tbody>  
	  				<tr>
	  				     <td style="padding: 5px; font-size: 14px; font-family: sans-serif;text-align: center;border-right: 1px solid black;border-bottom: 1px solid black;">${row.count}</td>
	  				     <td style="padding: 5px; font-size: 14px; font-family: sans-serif;text-align: center;border-right: 1px solid black;border-bottom: 1px solid black;">${cat.title}</td>
	  				     <td style="padding: 5px; font-size: 14px; font-family: sans-serif;text-align: center;border-right: 1px solid black;border-bottom: 1px solid black;"><a href="${s3pat}StudentSatisfactionSurvey/${cat.fbid}_${cat.filename}" target="_blank">${cat.filename}</a></td>
	  				</tr>
  				</tbody>
  			</c:forEach>
		     </table>
			
		</div>
		<div class="col-xs-12 col-sm-1 col-md-1 col-lg-1">
			
		</div>
	</div>
</div>

<br><br>

  </div>


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
