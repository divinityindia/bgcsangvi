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

	<link rel="stylesheet" href="style/style.css">

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

<div class="tg-innerbanner">
	
			<div class="container">
			
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<br>
						<ol class="tg-breadcrumb">
							<li style="display: inline-block;" ><a href="index.jsp" >Home</a></li>->
							<li style="display: inline-block;"><a href="PublicGallery" >Main Gallery</a></li>->
							<li class="tg-active" style="display: inline-block;">Gallery : ${allGals[param.gid]}</li>
						</ol>
					</div>
				</div>
				
			</div>
			
	</div>

  <div class="container" style="padding:10px;">

		<style>
			.galDiv{
				width:200px;
				height: 220px;
				display: inline-block;
				margin: 10px;
				background-color: #66ffb3;
				padding: 10px;
				vertical-align: top;
				overflow: auto;
			}
			.picDiv{
				width:100%;
				height:150px;
			}


		</style>
		<div>
			<div align="center">
				<h3 style="color: #43577B; font-weight: bold;">Gallery : <label style="color:#442056;font-weight: normal; ">${allGals[param.gid]}</label></h3>
			</div>
			<hr/>
			<c:forEach var="rec" items="${hm}" >
				<a href="PublicImgGallery?sbgid=${rec.key}">
					<div class="galDiv">
						<div class="picDiv">
							<img alt=""  src="${s3pat}gallery/${rec.value[1]}/${rec.value[2]}/${rec.value[3]}" style="max-width: 100%;max-height: 100%">
						</div>
						<b>${rec.value[0] }</b>
					</div>
				</a>
			</c:forEach>
		</div>


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
