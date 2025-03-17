
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
	
	<link rel="stylesheet" href="css/color.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico"> 
	<link rel="stylesheet" href="css/mycss.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
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
											<a href="DBTStarCollege?type=DBTStarCollege"><li class="des active">DBT Star College Scheme</li></a>
<!-- 											<a href="DBTStarCollege?type=Annualreports"><li class="des">Annual reports</li></a> -->
											<a href="DBTStarCollege?type=Advisorycommitteemeetingminutes"><li class="des ">Advisory committee meeting minutes</li></a>
											<a href="DBTStarCollege?type=Notices"><li class="des">Notices</li></a>
											<a href="DBTStarCollege?type=Activities"><li class="des ">Activities</li></a>
											<a href="DBTStarCollege?type=Photogallery"><li class="des ">Photo gallery</li></a>
										</ul>
									</div>
								</div>
							</aside>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
						<div class="table-responsive">
						<h2 class="title_contanier" >DBT Star College Scheme </h2>
						 <hr style="border: 1px solid;">
								<div id="container1">
								  <div id="container2" >
<!-- 								  <b style="font-family: sans-serif; font-size: 16px;color: #43577B;font-weight: bold;">Major equipments in various laboratories</b> -->
										
										<h4 style="text-align: left; color: #43577B!important;font-weight: bold;">Introduction </h4>
										 <a href="${s3pat}DBTSTAR/DBT+Star+college+scheme.pdf" style="float: right;color: #a52a35;padding-left: 0px;" target="_blank"><i style="font-size:22px" class="fa">&#xf1c1;</i>&nbsp; DBT Star College Scheme&nbsp; &nbsp; &nbsp; </a>
										 <br><br>
										<p style="color: black;text-align: justify;">Star College Scheme has been initiated by DBT in 2008 to support colleges and universities offering
											undergraduate education to improve science teaching across the country. DBT is committed to the
											values of :- 
										</p>
										<ol>
										     <li>Pursuit of excellence</li>
										     <li>Academic and intellectual freedom</li>
										     <li>Creativity and innovation</li>
										     <li>Diversity</li>
										     <li>Cooperation and Communication</li>
										     <li>Accountability</li>
										     
										</ol>
										<p style="color: black;text-align: justify;">
										 DBT has therefore, launched a
										scheme for improving critical thinking and 'hands on' experimental work at undergraduate (college)
										level in sciences. It is expected to encourage, more students to take up higher education in science.
										DBT will identify colleges with ambition and potential for excellence and provide academic and
										physical infrastructure for achieving excellence in teaching and unique exposure of students to
										experimental science. Department has supported around 200 undergraduate colleges across the
										country in the past 9 years. Apart from financial support, colleges have benefited tremendously
										from guidance received in Advisory Committee Meetings, mentoring, Task Force Meetings and
										learning from peers in other colleges.
																				
										</p>
										<h4 style="text-align: left; color: #43577B!important;font-weight: bold;">Objectives </h4>
										 <ul style="color: black;text-align: justify;">
										      <li style="padding: 5px;">	&#x58E; To strengthen the academic and physical infrastructure for achieving excellence in teaching and training. </li>
										      <li style="padding: 5px;">	&#x58E;To enhance the quality of the learning and teaching process to stimulate original thinking through 'hands-on' exposure to experimental work and participation in summer schools.</li>
										      <li style="padding: 5px;">	&#x58E;To promote networking and strengthen ties with neighbouring institutions and other laboratories.</li>
										      <li style="padding: 5px;">	&#x58E;To conduct specialized training programmes for faculty improvement for optimizing technical capabilities.</li>
										      <li style="padding: 5px;">	&#x58E;To increase capabilities of core instrumentation resources by procuring new equipment and upgrading existing facilities</li>
										      <li style="padding: 5px;">	&#x58E;To provide access and exposure to students to research laboratories and industries in the country.</li>
										      <li style="padding: 5px;">	&#x58E;To help in devising standard curricula and Standard Operating Procedures (SOP's) / kits for practicals.</li>
										      <li style="padding: 5px;">	&#x58E;To provide better library facility to students and teachers.</li>
										      
										 </ul>
								  
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