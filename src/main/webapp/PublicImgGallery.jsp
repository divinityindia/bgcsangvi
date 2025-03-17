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

	<script type="text/javascript" src="highslide/highslide-with-gallery.js"></script>
	<link rel="stylesheet" type="text/css" href="highslide/highslide.css" />
	<script type="text/javascript">
		hs.graphicsDir = 'highslide/graphics/';
		hs.align = 'center';
		hs.transitions = ['expand', 'crossfade'];
		hs.fadeInOut = true;
		hs.dimmingOpacity = 0.8;
		hs.wrapperClassName = 'borderless floating-caption';
		hs.captionEval = 'this.thumb.alt';
		hs.marginLeft = 100; // make room for the thumbstrip
		hs.marginBottom = 80 // make room for the controls and the floating caption
		hs.numberPosition = 'caption';
		hs.lang.number = '%1/%2';

		// Add the slideshow providing the controlbar and the thumbstrip
		hs.addSlideshow({
			//slideshowGroup: 'group1',
			interval: 5000,
			repeat: false,
			useControls: true,
			overlayOptions: {
				className: 'text-controls',
				position: 'bottom center',
				relativeTo: 'viewport',
				offsetX: 50,
				offsetY: -5

			},
			thumbstrip: {
				position: 'middle left',
				mode: 'vertical',
				relativeTo: 'viewport'
			}
		});

		// Add the simple close button
		hs.registerOverlay({
			html: '<div class="closebutton" onclick="return hs.close(this)" title="Close"></div>',
			position: 'top right',
			fade: 2 // fading the semi-transparent overlay looks bad in IE
		});
	</script>

	<style type="text/css">
	/* Center the text in the caption */
	.highslide-caption {
		width: 100%;
		text-align: center;
	}
	/* Remove the close button from the controls since we already have one in the corner of the image */
	.highslide-close {
		display: none !important;
	}
	/* Put the image number in front of the caption */
	.highslide-number {
		display: inline;
		padding-right: 1em;
		color: white;
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

	<!-- Header -->
<div class="tg-innerbanner">
	
			<div class="container">
			
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<br>
						<ol class="tg-breadcrumb">
							<li style="display: inline-block;" ><a href="index.jsp" >Home</a></li>->
							<li style="display: inline-block;"><a href="PublicGallery" >Main Gallery</a></li>->
							<li class="tg-active" style="display: inline-block;">Gallery : ${bean.caption}</li>
						</ol>
					</div>
				</div>
				
			</div>
			
	</div>


  <div class="container" style="padding:10px;">
		<style>
			.outerDiv img{
				max-width: 100px;
				max-height: 100px;
				vertical-align: middle;


			}
			.outerDiv a{
				vertical-align: middle;
			}
			.imgDiv{
				height: 100px;
				width:100px;
				display: inline-block;
				margin: 5px;
				background-color: #e6f2ff;
				line-height:7em;
			}
			table td{
				border:none;
				padding: 5px;
				text-align: left;
			}
			table td:nth-child(1){
				font-weight: bold;
			}
			table tr:HOVER {
				background-color: transparent;
			}
			a.highslide-credits{
				display: none;
			}
		</style>

		<br/>

		<div style="text-align: center">
			<h3 style="color:#43577B;font-weight: bold;">${bean.caption}</h3>
		</div>
		<div style="padding:5px; border:1px solid #aaa; background-color: #e6f2ff;">
		<table><caption></caption>
			<tr>
				<td>Caption :</td><td>${bean.caption}</td>
			</tr>
			<tr>
				<td>Details :</td><td>${bean.details}</td>
			</tr>
			<tr>
				<td>Venue :</td><td>${bean.venue}</td>
			</tr>
			<tr>
				<td>Date :</td><td>${bean.date}</td>
			</tr>
			<tr></tr>
		</table>
		</div>

		<br/>
		<div style="padding:5px; border:1px solid #aaa; background-color: #fff;">
			<h3 style="margin: 5px;">Images</h3>
		<div class="outerDiv">
		<c:forEach var="rec" items="${hm}">
			<div class="imgDiv">
				<a class='highslide' href='${s3pat}gallery/${rec.value[0]}/${rec.value[1]}/${rec.value[2]}' onclick="return hs.expand(this)">
				<img src='${s3pat}gallery/${rec.value[0]}/${rec.value[1]}/${rec.value[2]}' alt='Mountain valley'/></a>
			</div>
		</c:forEach>
		</div>
		</div>

<br/>



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
