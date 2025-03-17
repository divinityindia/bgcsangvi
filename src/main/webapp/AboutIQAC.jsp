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
											<a href="AboutIQAC.jsp" ><li class="active des" style="font-size: 13px;">About IQAC</li></a>
											<a href="IQACCommittee" ><li class="des" style="font-size: 13px;">IQAC Committee</li></a>
											<a href="AQARReports.jsp"><li class="des" style="font-size: 13px;">AQAR Reports</li></a>
											<a href="Iqmatr"><li class="des" style="font-size: 13px;">IQAC Minutes & Action Taken Report</li></a>
											<a href="Naacssr.jsp"><li class="des" style="font-size: 13px;">NAAC SSR Document</li></a>
											<a href="Iqacnotices.jsp"><li class="des" style="font-size: 13px;">IQAC Notices</li></a>
											<a href="Otherdoc.jsp"><li class="des" style="font-size: 13px;">Other Document</li></a>
										</ul>
									</div>
								</div>
							</aside>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
						<div class="table-responsive">
						<h2 class="title_contanier" >Internal Quality Assurance Cell</h2>
						 <hr style="border: 1px solid;">
						  <div class="outer-div" style="width: 100%;height: 800px;padding: 0px;border: none;overflow: scroll;">
							<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
							    <b>Dr. Sangita Jagtap.</b><br>
							    Associate Professor<br>
                               M. Sc.(Gold Medalist), Ph. D.(NCL,Pune)<br>
                               Visiting Scholar (Stanford University,California,USA)<br>
                                SET, NET,GATE
PGD.Pharm., MBA(HR)
sangeetajagtap@rediffmail.com
<br>

							    
							</p>
							<b>Dear Colleagues,</b>
							<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
							It is my pleasure to convey that, our Internal Quality Assurance Cell (IQAC) was established in the year 2004. The Cell has been functioning as integral part of our Academic and Administrative activities. Post NAAC (National assessment and Accreditation Council) -II assessment, the IQAC has geared up and has extended its support for all the Academic and Administrative affairs of our College. 
							</p>
							<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
							The composition of IQAS has been slightly modified by NAAC, with external representations as an "External Exper" and students as well. Thus, expectations from IQAC have been increased and have a key role in the "Governance" and "Management" of the College/ Institution. Presently, the College is also preparing for "Academic Autonomy". The IQACwill be playing a pivotal role in establishing the 'Choice Based Credit System', frame work for all syllabi and pattern for 'Continuous Evaluation System'. 
							</p>
							<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
							  <b>The primary aim of IQAC is, </b>
							</h3>
							<hr style="border-bottom: 1px solid black;">
							<ul style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
							  <li>To develop a system for conscious, consistent and catalytic action to improve the academic and administrative performance of the institution. </li>
							  <li>To promote measures for institutional functioning towards quality enhancement through internalization of quality culture and institutionalization of best practices. </li>
							</ul>
							Preparation of the Annual Quality Assurance Report (AQAR) as per guidelines and parameters of NAAC, to be submitted to NAAC. 
							<ul style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
							    <li>Development and application of quality benchmarks/parameters for various academic and administrative activities of the institution;</li>
							    <li>Facilitating the creation of a learner-centric environment conducive to quality education and faculty maturation to adopt the required knowledge and technology for participatory teaching and learning process;</li>
							    <li>Arrangement for feedback response from students, parents and other stakeholders on quality-related institutional processes;</li>
							    <li>Dissemination of information on various quality parameters of higher education;</li>
							    <li>Organization of inter and intra institutional workshops, seminars on quality related themes and promotion of quality circles;</li>
							    <li>Documentation of the various programmes/activities leading to quality improvement; </li>
							    <li>Acting as a nodal agency of the Institution for coordinating quality-related activities, including adoption and dissemination of best practices;</li>
							    <li>Development and maintenance of institutional database through MIS for the    purpose of maintaining /enhancing the institutional quality;</li>
							    <li>Development of Quality Culture in the institution;</li>
							    <li>Preparation of the Annual Quality Assurance Report (AQAR) as per guidelines and parameters of NAAC, to be submitted to NAAC. </li>
							</ul>
							<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
							  <b>Quality Policy of the IQAC</b>
							</h3>
							<hr style="border-bottom: 1px solid black;">
							<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
							The Internal Quality Assurance Cell (IQAC) of the college is primarily focused in internal quality. The University Grants Commission (UGC) and the National Assessment and Accreditation Council (NAAC) have laid the onus of quality enhancement of colleges on the IQAC. The IQAC has, from time to time, adopted the quality parameters set by statutory agencies such as the UGC, NAAC, State Government and the University and used them to assess and assure that quality is maintained. The primary objective, thus, of the IQAC is look into rather than at the college processes with a perspective of providing quality to all stakeholders.
							</p>
							<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
							Understanding the significance of Internal Quality Assurance Systems (IQAS), the IQAC has attempted over the years to systemize processes through which quality enhancement can be achieved. The IQAC has also perceived that quality enhancement initiatives need to be decentralized, rather than nodal, with several activity heads being appointed and each deploying their activities as a separate team.
							</p>
							<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
							  <b>College IQAC set the following objectives</b>
							</h3>
							<hr style="border-bottom: 1px solid black;">
							 <ul>
							     <li>To define quality parameters for the college.</li>
							     <li>To monitor the quality aspects of the institution.</li>
							     <li>To intervene and guide the departments wherever necessary for quality enhancement.</li>
							     <li>To create, operate and monitor a decentralized system for all activities.</li>
							 </ul>
							 <h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
							  <b>Composition of IQAC </b>
							</h3>
							<hr style="border-bottom: 1px solid black;">
							<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
							Members of the IQAC have been strategically selected so that representation for the Arts, Commerce and Science Faculties, Liberian, Director of Physical education, top office and administrative authorities is ensured. As a result, planning and decision making has become easier and smoother and implementation is efficient.
							</p>
							<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
							We consider the teacher as a hub for all college activities, academic and otherwise, and hence assuring teachers' progression helps in assuring quality. For the co-, extra-curricular activities and extension activities teachers are assigned managerial roles. Committees are formed for this purpose. It is relevant to note that these committees are carefully constituted to ensure that though leadership is rotated, key experienced members remain the same assuring high performance levels. Such decentralization has helped in participation of teachers in quality sustenance. This experience over the years has helped evolve a fairly stable and efficient system, which today requires little monitoring and has been internalized.
							</p>
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