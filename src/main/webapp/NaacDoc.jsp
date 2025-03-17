<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

	<!-- Header -->

<style>
	.input-field{
		color:#000;
		font-weight:bold;
		width:100%;
		padding:10px;
		margin-bottom:15px;
 		border:1px solid #f4e1d2;
		background-color: #fefbd8;
		border-radius:5px;
		transition: background .5s;

	}
	.input-field:FOCUS {
	background-color: #d5f4e6;//rgb(236,240,241);
	border:1px solid rgb(136,140,141);
	border-radius:0px;
}
   
table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
    text-align: center;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color: #fff;
}
table#t01 th {
    background-color: #1F69C1;
    color: white;
}






</style>

  <div class="container" style="background-color: #28CEBC;">

		<h2 align="center" style="color: white;">NAAC SSR Documents</h2>
		<h3 style="margin-left: 10%;color: #258BEF "><%=request.getAttribute("sub") %>:-</h3>
		<table  style="width:90%;height:100px; border:1px solid black;  margin-left: 5%; background-color: window;" id="t01">
	     <tr style="background-color:#61167B;padding: 15px; color: white; font-size: 15px;">
		 <th style="text-align: center;" >Document Description </th>
		 <th style="text-align: center;">View Document </th>
		</tr>
			<c:forEach var="entry" items="${hm}">
				<tr style="text-align: center;border: 1px solid;">
					<td> ${entry.value[1] }</td>
					<td><a href="${s3pat}Naac/Document/1/${entry.value[1]}" target="_blank">Click To View </a></td>
				</tr>			
			</c:forEach>
		</table>
<br/><br/><br/><br/><br/><br/><br/><br/>
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
    <script>


		jQuery(function(){
			var mblockheight=jQuery("#mblock").outerHeight( true )

			jQuery('#head').css('height',mblockheight)
			jQuery('#camera_wrap_4').camera({
                transPeriod: 500,
                time: 3000,
				height: mblockheight+'',
				loader: 'true',
				pagination: false,
				thumbnails: false,
				hover: false,
                playPause: false,
                navigation: false,
				opacityOnGrid: false,
				imagePath: 'assets/images/'
			});



		});

	</script>

</body>
</html>
