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
</style>
<br/>
  <div class="container" style="background:#fdd991; text-align: center">

		<div style="width:400px;padding:20px;border-radius:10px;background: #002e3b;margin: 80px auto">
			<h3 style="color: white;">Log In</h3><br/>

			<c:if test="${errMsg != null }">
				<input type="text" value="${errMsg}"  class="input-field" disabled="disabled" style="text-align: center;font-weight: bold;color: red;background:#ffecec;border:3px solid red"/>

			</c:if>
			<c:remove var="errMsg"/>


			<form action="Login" method="post">
			<input type="text" class="input-field" name="username" required placeholder="User Name"/>
			<input type="password" class="input-field" name="password" required placeholder="Password"/>

			<input type="submit" class="btn btn-block" value="Submit"/>
			</form>

		</div>



  </div>
<br/>




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
