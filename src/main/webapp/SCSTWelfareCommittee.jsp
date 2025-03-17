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
				  margin: 80px auto;
				  position: relative;
				  width: 500px;
				  height: 400px;
				  padding: 10px;
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
			<%-- <center><h1 style="padding:5px;border:0px solid brown; font-weight: bold;">Student Development</h1></center> --%>
				<div class="row" style="margin-top: 0%; height: 850px;">
					<div id="tg-twocolumns" class="tg-twocolumns">
						<div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
							<aside id="tg-sidebar" class="tg-sidebar">
								<div class="tg-widget tg-widgetaboutusnav">
									
									<div class="tg-widgetcontent" style="width:100% ;height: 500px;padding-top: 60px; ">
									<hr>
										<ul class="listul" >
											<a href="StudentDevelopment.jsp"><li class=" des" style="font-size: 13px;">Student's Grievance Redressal cell</li></a>
											<a href="StudentDevelopment?type=Anti Harassment&pgnm=StudentDevelopmentAntiRagging"><li class="des" style="font-size: 13px;">Anti Ragging</li></a>
											<a href="StudentDevelopment?type=ICASH&pgnm=StudentDevelopmentICASH"><li class="des" style="font-size: 13px;">I-CASH</li></a>
											<a href="StudentDevelopment?type=Scholarship&pgnm=StudentDevelopmentScholarship"><li class="des" style="font-size: 13px;">Scholarship</li></a>
											<a href="StudentDevelopment?type=Placement&pgnm=StudentDevelopmentPlacement"><li class="des" style="font-size: 13px;">Placement</li></a>
											<!-- <a href="StudentDevelopment?type=Mentor System&pgnm=StudentDevelopmentMentorSystem"><li class="des">Mentor System</li></a> -->
											<a href="StudentDevelopment?type=Mentor System&pgnm=StudentDevelopmentMentorSystem"><li class="des" style="font-size: 13px;">Mentor System</li></a>
											<a href="StudentDevelopment?type=Student Welfare&pgnm=StudentDevelopmentStudentWelfare"><li class="des" style="font-size: 13px;">Student Welfare</li></a>
											<a href="StudentDevelopment?type=Alumni Cell&pgnm=StudentDevelopmentAlumniCell"><li class="des" style="font-size: 13px;">Alumni Cell</li></a>
											<a href="StudentDevelopment?type=NSS&pgnm=StudentDevelopmentNSS"><li class="des" style="font-size: 13px;">NSS</li></a>
											<a href="StudentDevelopment?type=NCC&pgnm=StudentDevelopmentNCC"><li class="des" style="font-size: 13px;">NCC</li></a>
											<a href="StudentDevelopment?type=Sports&pgnm=StudentDevelopmentSports"><li class="des" style="font-size: 13px;">Sports</li></a>
											<a href="StudentDevelopment?type=Cultural Activity&pgnm=StudentDevelopmentCulturalActivity"><li class="des" style="font-size: 13px;">Cultural Activity</li></a>
											<a href="SCSTWelfareCommittee.jsp"><li class="des active" style="font-size: 13px;">Reservation Cell</li></a>
<!-- 											<a href="OBCWelfareCommittee.jsp"><li class="des" style="font-size: 13px;">OBC Welfare Committee</li></a> -->
<!-- 											<a href="InternalComplianceCommittees.jsp"><li class="des" style="font-size: 13px;">Internal Compliance Committee</li></a> -->
											<a href="StdvplRTI.jsp"><li class="des" style="font-size: 13px;">RTI</li></a>
										</ul>
									</div>
								</div>
							</aside>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
						<div class="table-responsive">
						<h2 class="title_contanier" >Reservation Cell</h2>
						  <div class="outer-div">
						    <p style="text-align: justify;font-weight: normal;margin-left: 0%;">
						    <b>Role</b> <br>
						    To create and maintain safe, healthy and supportive environment for SC / ST staff and students in the campus.
                           </p>
                        <ul>
                             <li style="list-style-type:square;font-weight: bold;"><h4 style="color: #43577B;font-family: sans-serif; font-weight: bold;">Functions  :-</h4>    
                                   <ul style="margin-left: 10%;"> 
                                        <li style="font-weight: normal;list-style-type:square;">Implement the reservation policy of the Government for the welfare of reserved category candidates.</li>
                                        <li style="font-weight: normal;list-style-type:square;">Guide the Reserved category students and provide them information for admission, fee, scholarships' and other reservation rules. </li>
                                        <li style="font-weight: normal;list-style-type:square;">Provide the information regarding the different Government and non-Government schemes to reserve category students of SC, ST, VJ/NT, SBC and OBC candidates in order to get these benefits.</li>
                                        <li style="font-weight: normal;list-style-type:square;">Address the issues, if any, of staff and students, belonging to schedule caste / schedule tribes in the Institute and prevent atrocities against them. </li>
                                   </ul>
                             </li>  
                               <li style="list-style-type:square;font-weight: bold;"><h4 style="color: #43577B;font-family: sans-serif; font-weight: bold;">Committee Member:-</h4>    
                                   <ul style="margin-left: 10%;"> 
                                        <li style="list-style-type:square;"><strong>Committee Chairman</strong>
                                             <ul style="margin-left: 12%;">
                                                  <li style="list-style-type:square;">Dr. S.T. Ghodake  </li>
                                              </ul>
                                        </li>
                                   </ul>
                                   
                                   <ul style="margin-left: 10%;"> 
                                        <li style="list-style-type:square;"><strong>Committee Member</strong>
                                             <ul style="margin-left: 12%;">
                                                  <li style="list-style-type:square;"> Mr. J.Y. Wadshingkar  </li>
                                                  <li style="list-style-type:square;"> Dr. N.S. Giri </li>
                                                  <li style="list-style-type:square;"> Mr. P. R. Yawale </li>
                                                  <li style="list-style-type:square;"> Ms. F.N. Shaikh  </li>
                                                  <li style="list-style-type:square;"> Mrs. V.B. Shinde</li>
                                              </ul>
                                        </li>
                                   </ul>
                             </li>
                            
                           
                       </ul>
                       
                        <br><br>
                   
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