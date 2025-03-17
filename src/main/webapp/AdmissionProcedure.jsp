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
										    <a href="AdmissionProcedure.jsp" ><li class="active des">Admission Procedure </li></a>
											<a href="AdmissionStudentHandBook" ><li class="des">Student HandBook</li></a>
											<a href="AdmissionReservationPolicy"><li class="des">Reservation Policy</li></a>
											<a href="AdmissionProspects" ><li class="des">Prospectus </li></a>
											<a href="onlineAdmissionPortal.jsp"><li class="des">online Admission Portal</li></a>
											
											
										</ul>
									</div>
								</div>
							</aside>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
						<div class="table-responsive">
						<h2 class="title_contanier" >Student HandBook</h2>
						 <hr style="border: 1px solid;">
						<div id="container1">
						  <div id="container2" >
						     	<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
		  <b>Students from other College of Pune University area  </b>
		</h3>
		<hr style="border-bottom: 1px solid black;">
		 <ul style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
		    <li>Should fill the form attached with the prospectus correctly in his/ her own legible handwriting. </li>
		    <li>Should attach original L.C./T.C. with the form. </li>
		    <li>L.C./T.C. submitted will not be given back under any condition. </li>
		    <li>Students seeking admission to first year should submit two attested photo copies and the original mark sheet of HSC exam. </li>
		    <li>Students seeking admission to second year should attach two attested photo copies of first year mark sheet and students seeking admission to third year should attach two attested copies of second year mark sheet. They should also carry the original mark sheet with them. </li>
		    <li>The fees should be paid according to the fee structure</li>
		    <li>Students will be admitted on merit basis. </li>
		    <li>Students should keep extra photo copies of HSC certificate and mark sheet with them. </li>
		    <li>A level examination of Cambridge University will be treated equivalent to HSC standard Exam of Maharashtra State Board of Secondary Exam. </li>
		</ul>
		<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
		  <b>Students from college affiliated to Universities other than Pune University </b>
		</h3>
		<hr style="border-bottom: 1px solid black;">
		 <ul style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
		    <li>Students should fill the Migration Form from their Universities.</li>
		    <li>Two attested photo copies of the mark sheet should be attached.</li>
		    <li>Original T.C. and two attested photo copies should be attached.</li>
		    <li>A self addressed envelope with postage for Registered Photo should be attached.</li>
		    <li>The migration certificate should be submitted within a month of taking the admission.</li>
		</ul>
		<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
		  <b>FOR ALL STUDENTS  </b>
		</h3>
		<hr style="border-bottom: 1px solid black;">
		 <ul style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
		   <li>Entire amount of fees should be paid at the time of admission. </li>
		   <li>Fees once paid will only be refunded as per University rules.</li>
		   <li>Admission to each students is at the sole discretion of the Principal. His or her behavior during the previous year will be taken into consideration for the same.</li>
		   <li>If the student cancels the admission in the first term, the fees of the first term will not be refunded. If he or she wants to cancel the admission in the second term, an application should be made in two copies before the commencement of the second term or else the fee for the entire year will be charged.</li>
		   
		</ul>
		<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
		  <b>CANCELLATION OF ADMISSION </b>
		</h3>
		<hr style="border-bottom: 1px solid black;">
		<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
		The application for cancellation of admission should be submitted in the proper form available in the college office, filled completely, or else the admission will not be cancelled and the fees will not be refunded. While claiming the deposit refund, the original receipt and Identity card has to be surrendered.
		</p>
		<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
		  <b>REFUND OF FEES</b>
		</h3>
		<hr style="border-bottom: 1px solid black;">
		<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
		If the student cancels his/her admission, the fees would be refunded as per University Norms.
		</p>
		<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
		  <b>ATKT RULES</b>
		</h3>
		<hr style="border-bottom: 1px solid black;">
		<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;font-weight: bold;">
		The ATKT rules as laid by Pune University are as follows 
		</p>
		<b>ARTS FACULTY </b><br>
		 <ul style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
		    <li>First Year Examination </li>
		    <li>The student will be allowed to take admission for the second year even if he/she has failed in maximum two heads of passing (paper) in the first year</li>
		    <li>The student will be allowed to take admission for the third year even if he/she has failed in maximum two heads of passing (paper) in the second year and</li>
		    <li>The student must have passed all the first year papers to be eligible for admission to the third year.</li>
		</ul>
		<b>COMMERCE FACULTY </b><br>
		 <ul style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
		    <li>The student will be allowed to take admission for the second year even if he/she has failed in maximum two heads of passing (practical paper) (Theory 2 + practical 1)</li>
		    <li>The student will be allowed to take admission for the third year even if he/she has failed in maximum two heads of passing (practical paper) (Theory 2 + practical 1)</li>
		    <li>The student must have passed all the first year papers to be eligible for admission to the third year. 4 For BCA course</li>
		    <li>A students shall be allowed for second year if he/she has a backlog of more than three theory and one practical or four theory of heads of total number of subjects of first year exam, Which consist of first and second semester.</li>
		    <li>A student shall allow to keep terms for Third year of he/she has no backlog of First year and if he/she has a backlog of not more than three theory & one practical or four theory heads of total no. of subjects of second year.</li>
		    
		</ul>
		<b>SCIENCE AND COMPUTER SCIENCE FACULTY  </b><br>
		 <ul style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
		    <li>The student will be allowed to take admission for the second year even if he/she has failed in maximum three heads of passing (theory paper) and one heads of passing (practical paper) (Theory 3 + practical 1)</li>
		    <li>The student will be allowed to take admission for the third year even if he/she has failed in maximum two heads of passing (theory paper) and one heads of passing (practical paper) (Theory 2 + practical in each semester of Second year. The student must have passed all the first year papers to be eligible for admission to the third year.</li>
		</ul>
		<b>ELIGIBILITY FOR EXAMINATION  </b><br>
		 <ul style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
		    <li>75% Attendance is compulsory during the academic year.</li>
		    <li>University can give 5 marks (if required) if the student has done satisfactory work in NSS/ Adult Education / Sports provided that an application under section 0.163 is submitted within time.</li>
		    <li>Medical Examination is compulsory for all first year students, If they fail to do so, they would not be allowed to appear for the exam. Of their result will be withheld.</li>
		    <li>The students participating in the physical education program should attend at least 75% days of training.</li>
		    <li>The Principal has the authority to disallow any student to appear for the exam. If his/her conduct or progress is found to be unsatisfactory.</li>
		    
		</ul>
		<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
		  <b>SUGGESTION TO THE PARENTS</b>
		</h3>
		<hr style="border-bottom: 1px solid black;">
		 <ul style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
		   <li>The parents should ensure that ward appears for all examinations and complete all the assigned work. If due to any reason the student fails to do so, the parents should immediately contact the College office with the relevant clarification.</li>
		   <li>The parents can meet the Principal, by prior appointment to seek information about their ward.</li>
		   <li>The parents are advised to keep a track of their ward's progress, behaviour etc. in the college They can contact the office authorities or the lectures for the same.</li>
		   <li>The College is not responsible for any trips privately arranged by the students. Such trips are unauthorized and this should be noted carefully by the parents. The parents are advised to encourage their wards to appear for the exams for various competitive examinations e.g. M.P.S.C., U.P.S.C., etc.</li>
		</ul>
		<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
		  <b>Admission Rules and Regulations </b>
		</h3>
		<hr style="border-bottom: 1px solid black;">
		<b>INSTRUCTIONS REGARDING ADMISSION</b><br>
		 <ul style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
		   <li>Admission form must be completed in his/her own legible handwriting. Student in person must complete admission procedure</li>
		   <li>Admission form must be complete in all respects including necessary certificates and documents as indicated below. Incomplete forms will not be considered for admission.</li>
		   <li>Students should make themselves aware of all rules of admission and the procedure of admission as stated in the prospectus and any change made thereafter, which will be displayed on the notice board of the college. The time-table and procedure for admission can also be seen on the notice board.</li>
		   <li>Two additional photographs for Identity card purpose with the name behind the photograph</li>
		   <li><b>Student must submit along with the admission form the following documents :</b>
		         <ul>
		              <li>Statements of Marks.</li>
		               <li>Passing Certificate</li>
		                <li>Proof of Birth Date</li>
		                 <li>Mark sheet of the HSC OR equivalent</li>
		                  <li>Mark sheet of Previous class (for the admission to SY/TY/ Repeater)</li>
		                   <li>Transfer Certificate/ School Leaving Certificate/ Migration Certificate.</li>
		                    <li>Caste certificate</li>
		                     <li>Non - Creamy layer Certificate.</li>
		                      <li>Certificate showing Entitlement of the other reservation.</li>
		                       <li>Domicile Certificate</li>
		                        <li>F.Y. Marksheet for the admission to T.Y.</li>
		                         <li>Nationalized Bank A/c Number.</li>
		                          
		         </ul>
		   
		   
		   </li>
		</ul>
		<ul style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;list-style-type: square;">
		     <li>A student coming from a college affiliated to Pune University or Maharashtra Higher Secondary Board must produce a Transfer Certificate or School Leaving Certificate from the College / Board/ School.</li>
		     <li>A student coming from any other University or Board must produce migration Certificate, Transfer Certificate and school leaving</li>
		     <li>Certificate from the University / College / Board/ School or the student must give undertaking to procedure the same within fifteen days from the date of admission</li>
		     <li>If the student seeks admission and other benefits (fees, concession etc.) in categories reserved for Backward Classes and other Backward Classes, he must produce : Caste Certificate issued by appropriate authority.</li>
		     <li>In case of sub categories among NT, VJNT, OBC to whom the creamy layer criteria is applicable, a valid and subsisting certificate from the appropriate authority that student does not belong to Creamy Layer. If such certificates are not submitted with the admission form the student will be considered for admission in the open category for all purposes, including admission merit list and fees.</li>
		     <li>If a student seeks admission and benefits in categories reserved other than backward classes, a certificate from the appropriate authority indicating that the student belongs to such category.</li>
		</ul>
		<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
		  <b>Attendance </b>
		</h3>
		<hr style="border-bottom: 1px solid black;">
		<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
		Students of all classes (B.A/ B.Com./B.Sc./B.Voc/M.A./M.Com/M.Sc.), B.B.A(CA) must put in an attendance of at least 75% for all subject and no exemption shall be granted / on any ground. 
		</p>
		<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 18px;">
		  <b>IDENTITY CARD & LIBRARY CARD</b>
		</h3>
		<hr style="border-bottom: 1px solid black;">
		<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
		Student has to submit recent icard size photo for identity. Student has to collect identity card in scheduled time. Identity card & Library card are not transferable. Loss of identity card & library card should be reported to library, Student is responsible for loss & / or damage of books or any material issued against his / her identity card & library card. Duplicate I card will be issued on written permission of Ho. Principal & paying the necessary fine amount. Books & any reading material borrowed from library should be return in time. Students should obey all library rules & regulations in library.
		</p>
									
						  
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

