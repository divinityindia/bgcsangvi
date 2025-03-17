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
											<a href="SCSTWelfareCommittee.jsp"><li class="des" style="font-size: 13px;">Reservation Cell</li></a>
<!-- 											<a href="OBCWelfareCommittee.jsp"><li class="des" style="font-size: 13px;">OBC Welfare Committee</li></a> -->
											<a href="InternalComplianceCommittees.jsp"><li class="des active" style="font-size: 13px;">Internal Compliance Committee</li></a>
											<a href="StdvplRTI.jsp"><li class="des" style="font-size: 13px;">RTI</li></a>
										</ul>
									</div>
								</div>
							</aside>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
						<div class="table-responsive">
						<h2 class="title_contanier" >Internal Compliance Committee</h2>
						  <div class="outer-div" style="width: 100%; height: 600px; padding: 0px; overflow: scroll;">
						      <p style="text-align: justify;font-weight: bold;margin-left: 0%;">
			                       Prof. Ramkrishna More Arts, Commerce and Science College is committed to provide an environment free from harassment, discrimination or bullying and will ensure that policies exist to ensure that everyone is treated with respect and dignity. Such behavior will be dealt with through the colleges disciplinary procedures and, in serious cases, may result in offenders being expelled or dismissed. 
			                  </p>
                        <ul>
                             <li style="list-style-type:square;font-weight: bold;"><h4 style="color: #43577B;font-family: sans-serif; font-weight: bold;">The objectives of Grievance Redressal Committee are:-</h4>
                                   <ul style="margin-left: 10%;"> 
                                        <li style="list-style-type:square;">All the grievances of the students/staff which could not be settled in the routine process should be referred to this committee.                    
                                        </li>
                                        <li style="list-style-type:square;">
                                        Committee tries to settle the issues amicably in a time bound manner.
                                        </li>
                                        <li style="list-style-type:square;">
                                        Introduces a reasonable and reliable solution for grievances of various issues received from students/parents 
                                        </li>
                                        <li style="list-style-type:square;">
                                        Ensures that the grievances are resolved on time impartially and confidentially   
                                        </li>
                                   </ul>
                                   
                             </li>
                              <li style="list-style-type:square;font-weight: bold;"><h4 style="color: #43577B;font-family: sans-serif; font-weight: bold;">Functions and Responsibilities</h4>    
                                   <ul style="margin-left: 10%;"> 
                                        <li style="list-style-type:square;">
                                         Creates awareness about the internal compliance committee cell among the Institute academic and administrative units. 
                                        </li>
                                        <li style="list-style-type:square;">
                                         Promotes effective communication and collaboration among those responsible for compliance. 
                                        </li>
                                        <li style="list-style-type:square;">
                                        Ensures that the complainant and witnesses are not victimized or discriminated because of their complaint. 
                                        </li>
                                        <li style="list-style-type:square;">
                                        Encourages an open-dialogue with the complainant from the committee members. 
                                        </li>
                                        <li style="list-style-type:square;">
                                        Monitors emerging compliance trends and circulate the information as needed. 
                                        </li>
                                        <li style="list-style-type:square;">
                                        Serves as a resource in developing or improving compliance related processes. Works with the University Policy Review Committee to ensure proper reporting of the complaints and their follow-up procedures.  
                                        </li>
                                        <li style="list-style-type:square;">
                                        Makes recommendations to senior management as to any resources or actions required for Institute compliance  
                                        </li>
                                   </ul>
                                   
                             </li>
                             <br>
                            <li style="list-style-type:none;font-weight: normal;color: black;">
		                       ICC monitors the functions of Grievance Redressal Committee, Anti-Harrashment/Anti-ragging committee, SC/ST Cell, OBC Cell, Examinational Grievances cell. 
		                       The Grievance Redressal Mechanism of the institution is established with an aim to provide easy and readily accessible procedure for prompt disposal of the day to day genuine grievances of the student and faculty community to maintain a congenial atmosphere. Grievance Redressal Committee was constituted in accordance with the University Grants Commission regulations. Any student and faculty with a genuine grievance may approach the Grievance Redressal Committee to submit his/her grievance in writing to "The Chairman, Grievance Redressal Committee or by mail. The Grievance Committee considers only individual grievances of specific nature of members of the employee. The Grievance Committee considers all grievances submitted in writing by an individual member related to employment, working conditions, and quality of services assured to them and any other alleged injustice done to an employee while discharging his /her duties at the Institute. Grievances received are addressed systematically with active involvement and cooperation of the respective department/section concerned with the grievance; maintain necessary confidentiality in handling process.
		                    </li>
                            <li style="list-style-type:square;font-weight: bold;"><h4 style="color: #43577B;font-family: sans-serif; font-weight: bold;">Committee Member:-</h4>    
                                   <ul style="margin-left: 10%;"> 
                                        <li style="list-style-type:square;"><strong>Committee Chairman</strong>
                                             <ul style="margin-left: 12%;">
                                                  <li style="list-style-type:square;">Dr.M.G.Chaskar (Principal)</li>
                                              </ul>
                                        </li>
                                   </ul>
                                    <ul style="margin-left: 10%;"> 
                                        <li style="list-style-type:square;"><strong>Committee CO-ordinator</strong>
                                             <ul style="margin-left: 12%;">
                                                  <li style="list-style-type:square;">Prof.Deepak R.Yeole</li>
                                              </ul>
                                        </li>
                                   </ul>
                                   <ul style="margin-left: 10%;"> 
                                        <li style="list-style-type:square;"><strong>Committee Member</strong>
                                             <ul style="margin-left: 12%;">
                                                  <li style="list-style-type:square;"> Dr. Padmja J.Ingole</li>
                                                  <li style="list-style-type:square;"> Prof. M.D.Mate </li>
                                                  <li style="list-style-type:square;"> Dr. Shilpagauri Ganpule</li>
                                                  <li style="list-style-type:square;"> Dr. Rambhau A. Pawar</li>
                                                  <li style="list-style-type:square;"> Prof. Archna A. Tank</li>
                                                  <li style="list-style-type:square;"> Prof. Savita Venegurkar</li>
                                                  <li style="list-style-type:square;"> Dr. Santosh Jagtap</li>
                                                  <li style="list-style-type:square;"> Dr. Archana J. Mali</li>
                                                  <li style="list-style-type:square;"> Dr. Vandna P. Shinde</li>
                                                  
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