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
							<li style="display: inline-block;" ><a href="index.jsp" class="a1">Home</a></li>->
							<li style="display: inline-block;"><a href="Mission-Goals.jsp" class="a1">About Us</a></li>->
							<li class="tg-active li" style="display: inline-block;">Academic Committee</li>
						</ol>
					</div>
				</div>
			</div>
	</div>
  <div class="container">
  <h2>Academic Committee</h2>
     <table style="width: 100%;" class="Vscroll">
  			<thead>
  				<tr>
  					<th style="color: #fff; background: #002e3b;border:1px solid #fff;text-align: center;padding: 10px; ">Sr. No</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #fff;text-align: center;padding: 10px;  ">Title </th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #fff;text-align: center;padding: 10px; ">Document</th>
  				</tr>
  			</thead>
  			<tbody>
  			<c:forEach var="cat" items="${dtl}" varStatus="row">
  				<tr>
  				     <td style="color: black;border:1px solid black;text-align: center;padding: 5px; ">${row.count}</td>
  				     <td style="color: black;border:1px solid black;text-align: left;padding: 5px;padding-left: 20px; ">${cat.title}</td>
  				     <td style="color: black;border:1px solid black;text-align: left;padding: 5px;padding-left: 20px; "><a href="${s3pat}AcademicCommittee/${cat.acid}_${cat.document}" target="_blank">${cat.document}</a></td>
  				</tr>
  			</c:forEach>

  			</tbody>
  			
  		</table>
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
