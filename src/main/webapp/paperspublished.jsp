<%-- <!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix ="fn"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!--[if lt IE 7]>		<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>			<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>			<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->	<html class="no-js" lang=""> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Academics - Academic Calendar :: Mamasaheb Mohol College</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="apple-touch-icon" href="apple-touch-icon.png">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/icomoon.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/prettyPhoto.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/owl.theme.default.css">
	<link rel="stylesheet" href="css/transitions.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/color.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">  --%>
	<!--
Author: WebThemez
Author URL: http://webthemez.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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

	<link rel="stylesheet" href="style/style.css">


	<link  rel="stylesheet" type="text/css" href="tab/css/demo.css" />
	<!-- Copy & paste -->
	<link rel="stylesheet" type="text/css" href="tab/css/animate.min.css " />
	<link rel="stylesheet" type="text/css" href="tab/css/easy-responsive-tabs.min.css " />
	<link rel="stylesheet" type="text/css" href="tab/css/tabs.css" />
	<!-- this is for choose your color -->
	<link rel="stylesheet" type="text/css" href="tab/css/colors/color_10.css" id="colors-style" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,300,500,700,900|Dosis:300,400,700|Oswald:300">
	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon/favicon.ico">


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
	
	
	<!-- <link rel="apple-touch-icon" href="apple-touch-icon.png"> -->
	<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
	<!-- <link rel="stylesheet" href="css/normalize.css"> -->
	<!-- <link rel="stylesheet" href="css/font-awesome.min.css"> -->
	<!-- <link rel="stylesheet" href="css/icomoon.css">
	<link rel="stylesheet" href="css/animate.css"> -->
	<!-- <link rel="stylesheet" href="css/prettyPhoto.css">
	<link rel="stylesheet" href="css/owl.carousel.css"> -->
	<!-- <link rel="stylesheet" href="css/owl.theme.default.css">
	<link rel="stylesheet" href="css/transitions.css"> -->
	<!--  <link rel="stylesheet" href="css/main.css"> -->
	<link rel="stylesheet" href="css/color.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico"> 
	<link rel="stylesheet" href="css/mycss.css">
	
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
					$("#slideshow > div:gt(0)").hide();
					
					setInterval(function() {
					  $('#slideshow > div:first')
					    .fadeOut(1000)
					    .next()
					    .fadeIn(1000)
					    .end()
					    .appendTo('#slideshow');
					}, 3000);
					</script>
					
					<style>
					#slideshow {
					  margin-left: 10%;
					  margin-right:10%;
					  position: relative;
					  width: 80%;
					  height: 340px;
					 /*  padding: 10px; */
					  box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
					}
					
					#slideshow > div {
					  position: absolute;
					  top: 10px;
					  left: 10px;
					  right: 10px;
					  bottom: 10px;
					}
				</style>
	
</head>
<body>
	<!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<!--************************************
			Wrapper Start
	*************************************-->
	<div id="tg-wrapper" class="tg-wrapper">
		<!--************************************
				Header Start
		*************************************-->
		<jsp:include page="header.jsp"></jsp:include>
			<jsp:include page="menu.jsp"></jsp:include>

		<!--************************************
				Header End
		*************************************-->
	
		<!--************************************
				Main Start
		*************************************-->
		<main id="tg-main" class="tg-main tg-haslayout">
			<div class="container">
			<%-- <center><h1 style="padding:5px;border:0px solid brown; font-weight: bold;">BBA</h1></center> --%>
				<div class="row" style="margin-top: 2%;">
					<div id="tg-twocolumns" class="tg-twocolumns">
						<div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
							<aside id="tg-sidebar" class="tg-sidebar">
								<div class="tg-widget tg-widgetaboutusnav">
									
									<div class="tg-widgetcontent" style="width:100% ;height: 500px;padding-top: 60px; ">
									<hr style="border: 1px solid black;">
										<ul class="listul" >
											<a href="ResearchPage.jsp" ><li class=" des" style="font-size: 13px;">Research</li></a>
											<a href="ResearchCommittee.jsp"><li class="des " style="font-size: 13px;">Research Committee</li></a>
											<a href="Recognizedresearchcenter.jsp"><li class="des " style="font-size: 13px;">Recognized research center</li></a>
											<a href="Recognizedresearchguides.jsp"><li class="des " style="font-size: 13px;">Recognized research guides</li></a>
											<a href="Seminarconference.jsp"><li class="des " style="font-size: 13px;">Seminar/conference</li></a>
											<a href="OngoingMajorResearch.jsp"><li class="des " style="font-size: 13px;">Ongoing Major Research Project </li></a>
											<a href="CompletingMajorResearch.jsp"><li class="des " style="font-size: 13px;">Completing Major Research Project</li></a>
											<a href="OngoingMinorResearch.jsp"><li class="des " style="font-size: 13px;">Ongoing Minor Research Project</li></a>
											<a href="CompletedMinorResearch.jsp"><li class="des " style="font-size: 13px;">Completed Minor Research Projects </li></a>
											<a href="paperspublished.jsp"><li class="des active" style="font-size: 13px;">papers published by faculty </li></a>
											<a href="Publications.jsp"><li class="des" style="font-size: 13px;">Publications by the faculty </li></a>
											<a href="ChapterinBook.jsp"><li class="des" style="font-size: 13px;">Chapter in Book</li></a>
											<a href="BooksEdited.jsp"><li class="des" style="font-size: 13px;">Books Edited</li></a>
											<a href="BookswithISBNISSN.jsp"><li class="des" style="font-size: 13px;">Books with ISBN/ISSN</li></a>
											<a href="CitationIndex.jsp"><li class="des" style="font-size: 13px;">Citation Index</li></a>
											<a href="Impactfactor.jsp"><li class="des" style="font-size: 13px;">Impact factor</li></a>
											
											
										</ul>
									</div>
								</div>
							</aside>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
						<div class="table-responsive">
						<h2 class="title_contanier" >papers published by faculty peer reviewed journals </h2>
						 <hr style="border: 1px solid;">
						<div id="container1">
						  <div id="container2" ><br>
                         <table  width="100%">
										
											<tbody>
											<tr>
											<th style="color: #003135; background: #fdd991;border:1px solid #003135; padding: 12px;">Sr. no</th>
											<th style="color: #003135; background: #fdd991;border:1px solid #003135; padding: 12px;">Name of the faculty</th>
											<th style="color: #003135; background: #fdd991;border:1px solid #003135; padding: 12px;">National/International</th>
											</tr>
											<tr height="20">
											<td  style="padding: 10px;">1</td>
											<td style="padding: 10px;">Botany</td>
											<td style="padding: 10px;">11</td>
											</tr>
											<tr height="20">
											<td style="padding: 10px;">
											</td>
											<td style="padding: 10px;">Chemistry</td>
											<td style="padding: 10px;">04</td>
											</tr>
											<tr height="20">
											<td style="padding: 10px;">3</td>
											<td style="padding: 10px;">Commerce</td>
											<td style="padding: 10px;">38</td>
											</tr>
											<tr height="20">
											<td style="padding: 10px;">4</td>
											<td style="padding: 10px;">Comp sci</td>
											<td style="padding: 10px;">02</td>
											</tr>
											<tr height="20">
											<td style="padding: 10px;">5</td>
											<td style="padding: 10px;">Economics</td>
											<td style="padding: 10px;">04</td>
											</tr>
											<tr height="20">
											<td style="padding: 10px;">6</td>
											<td style="padding: 10px;">MCAs</td>
											<td style="padding: 10px;">01</td>
											</tr>
											<tr height="20">
											<td style="padding: 10px;">7</td>
											<td style="padding: 10px;">English</td>
											<td style="padding: 10px;">12</td>
											</tr>
											<tr height="20">
											<td style="padding: 10px;">8</td>
											<td style="padding: 10px;">Hindi</td>
											<td style="padding: 10px;">01</td>
											</tr>
											<tr height="20">
											<td style="padding: 10px;">9</td>
											<td style="padding: 10px;">Mathematics</td>
											<td style="padding: 10px;">04</td>
											</tr>
											<tr height="20">
											<td style="padding: 10px;">10</td>
											<td style="padding: 10px;">Physics</td>
											<td style="padding: 10px;">09</td>
											</tr>
											<tr height="20">
											<td style="padding: 10px;">12</td>
											<td style="padding: 10px;">Zoology</td>
											<td style="padding: 10px;">34</td>
											</tr>
											<tr height="20">
											<td style="padding: 10px;">13</td>
											<td style="padding: 10px;">Total</td>
											<td style="padding: 10px;">120</td>
											</tr>
											</tbody>
											</table>
						  </div>
						  </div>
						</div>
						</div>
					</div>
				</div>
				<br><br>
			</div>
		</main> 
		<!--************************************
				Main End
		*************************************-->
		<!--************************************
				Footer Start
		*************************************-->
		<jsp:include page="footer.jsp" />
		<!--************************************
				Footer End
		*************************************-->
	</div>
	<!--************************************
			Wrapper End
	*************************************-->
	<script src="js/vendor/jquery-library.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/mapclustering/data.json"></script>
	<script src="https://maps.google.com/maps/api/js?key=AIzaSyCR-KEWAVCn52mSdeVeTqZjtqbmVJyfSus&language=en"></script>
	<script src="js/mapclustering/markerclusterer.min.js"></script>
	<script src="js/mapclustering/infobox.js"></script>
	<script src="js/mapclustering/map.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/isotope.pkgd.js"></script>
	<script src="js/prettyPhoto.js"></script>
	<script src="js/countdown.js"></script>
	<script src="js/collapse.js"></script>
	<script src="js/moment.js"></script>
	<script src="js/gmap3.js"></script>
	<script src="js/main.js"></script>
</body>
</html>