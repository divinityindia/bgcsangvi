<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix ="fn"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!--
Author: WebThemez
Author URL: http://webthemez.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
	<style>
		.listul li a{
			background: #008080;
			width: 100%;
			display:inline-block;
			color:#fff;
			padding:5px;
			margin-bottom: 5px;
			border-radius:5px;
		}
		.listul li a:HOVER{
			background: #009E9E;
		}
		.tg-widgettitle1{
			background: #428bca;
			color:#fff;
			border-radius:5px;
		}
		.tg-widgettitle1 h3{
			padding:5px;
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

<style>
	p{
		text-align: justify;
	}
</style>
	<br/>
  <div class="container">


<div class="row">
	<div id="tg-twocolumns" class="tg-twocolumns">
		<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
			<div id="tg-content" class="tg-content">
				<div class="tg-aboutus">
					<h2 style="color: #43577B;font-weight: bold;">${feedback.name} (${feedback.duration})</h2>
					<h3 style="color: #442056;">Student Feedback about College</h3>
					<c:choose>
						<c:when test="${param.success eq 1}">
							<div class="alert alert-success alert-dismissible fade in">
								<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
										<strong>Your feedback has been submitted successfully. Thank you for your valuable feedback</strong>
							</div>
						</c:when>
						<c:when test="${param.success eq 0}">
							<div class="alert alert-danger alert-dismissible fade in">
								<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
										<strong>Feedback submission failed! Please try again.</strong>
							</div>
						</c:when>
						<c:when test="${param.success eq 2}">
							<div class="alert alert-danger alert-dismissible fade in">
								<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
										<strong>Something went wrong! Please try again.</strong>
							</div>
						</c:when>
					</c:choose>
					<h3 style="font-weight: bold;">Directions:</h3>
					<p>Student Feedback about CollegeFor each item please indicate your level of agreement with the following statements by selecting appropriate option.</p>
					<form action="fteachercollege" method="post">
						<p style="font-weight: bold;">
							1.	Course content:" <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q1" value="Strongly Disagree" required="required">&nbsp;Outdated&nbsp;
							<input type="radio" name="q1" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q1" value="Neither Agree nor Disagree" required="required">&nbsp;Vast &nbsp;
							<input type="radio" name="q1" value="Agree" required="required">&nbsp;Appropriate&nbsp;
							<input type="radio" name="q1" value="Strongly Agree" required="required">&nbsp;Limited&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							2. Expected changes in future curriculum. <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q2" value="Strongly Disagree" required="required">&nbsp;No changes required&nbsp;
							<input type="radio" name="q2" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q2" value="Neither Agree nor Disagree" required="required">&nbsp;More practical components&nbsp;
							<input type="radio" name="q2" value="Agree" required="required">&nbsp;Needs industrial application oriented&nbsp;
							<input type="radio" name="q2" value="Strongly Agree" required="required">&nbsp;Needs entire  modification&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							3.Your opinion about research environment in college. <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q3" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
							<input type="radio" name="q3" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q3" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q3" value="Agree" required="required">&nbsp;Good &nbsp;
							<input type="radio" name="q3" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							4.	Organization of co-curricular, extra-curricular and extension activities. <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q4" value="Strongly Disagree" required="required">&nbsp;Never&nbsp;
							<input type="radio" name="q4" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q4" value="Neither Agree nor Disagree" required="required">&nbsp;Rarely&nbsp;
							<input type="radio" name="q4" value="Agree" required="required">&nbsp;Sometimes &nbsp;
							<input type="radio" name="q4" value="Strongly Agree" required="required">&nbsp;Frequently&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							5.	Student welfare scheme (e.g. Earn and learn, Book bank, Financial aid etc.).<span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q5" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
							<input type="radio" name="q5" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q5" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q5" value="Agree" required="required">&nbsp;Good&nbsp;
							<input type="radio" name="q5" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							6.	Availability of scholarship from Govt/Non Govt/NGO/Endowment. <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q6" value="Strongly Disagree" required="required">&nbsp;Not available&nbsp;
							<input type="radio" name="q6" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q6" value="Neither Agree nor Disagree" required="required">&nbsp;Poor&nbsp;
							<input type="radio" name="q6" value="Agree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q6" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							7.	Our grievances are redressed/ problems are solved well in time.<span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q7" value="Strongly Disagree" required="required">&nbsp;Never&nbsp;
							<input type="radio" name="q7" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q7" value="Neither Agree nor Disagree" required="required">&nbsp;Rarely&nbsp;
							<input type="radio" name="q7" value="Agree" required="required">&nbsp;Sometimes &nbsp;
							<input type="radio" name="q7" value="Strongly Agree" required="required">&nbsp;Frequently&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							8.	Sports environment in college.<span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q8" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
							<input type="radio" name="q8" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q8" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q8" value="Agree" required="required">&nbsp;Good&nbsp;
							<input type="radio" name="q8" value="Strongly Agree" required="required">&nbsp;	Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							9.	Cultural activities in college<span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q9" value="Strongly Disagree" required="required">&nbsp;Never&nbsp;
							<input type="radio" name="q9" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q9" value="Neither Agree nor Disagree" required="required">&nbsp;Rarely&nbsp;
							<input type="radio" name="q9" value="Agree" required="required">&nbsp;Sometimes &nbsp;
							<input type="radio" name="q9" value="Strongly Agree" required="required">&nbsp;Frequently&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							10.	Functionality of placement cell <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q10" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
							<input type="radio" name="q10" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q10" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q10" value="Agree" required="required">&nbsp; Good&nbsp;
							<input type="radio" name="q10" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							11.	Coaching for competitive exam<span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q11" value="Strongly Disagree" required="required">&nbsp; Poor&nbsp;
							<input type="radio" name="q11" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q11" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q11" value="Agree" required="required">&nbsp; Good&nbsp;
							<input type="radio" name="q11" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							12.	College website is dynamic and informative.<span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q12" value="Strongly Disagree" required="required">&nbsp; Poor&nbsp;
							<input type="radio" name="q12" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q12" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q12" value="Agree" required="required">&nbsp; Good&nbsp;
							<input type="radio" name="q12" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							13.	Effectiveness of learning management system (LMS) and ICT in college. <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q13" value="Strongly Disagree" required="required">&nbsp; Poor&nbsp;
							<input type="radio" name="q13" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q13" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q13" value="Agree" required="required">&nbsp; Good&nbsp;
							<input type="radio" name="q13" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							14.	Awareness of vision and mission of College. <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q14" value="Strongly Disagree" required="required">&nbsp;Not sure&nbsp;
							<input type="radio" name="q14" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q14" value="Neither Agree nor Disagree" required="required">&nbsp;Very little&nbsp;
							<input type="radio" name="q14" value="Agree" required="required">&nbsp;Partially&nbsp;
							<input type="radio" name="q14" value="Strongly Agree" required="required">&nbsp;Fully&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
						<p style="font-weight: bold;">
							15.	Availability of basic amenities in College. <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q15" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
							<input type="radio" name="q15" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q15" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q15" value="Agree" required="required">&nbsp;Good&nbsp;
							<input type="radio" name="q15" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
							<p style="font-weight: bold;">
							16.	 The prescribed books/reading material available in the library.<span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q16" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
							<input type="radio" name="q16" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q16" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q16" value="Agree" required="required">&nbsp;Good&nbsp;
							<input type="radio" name="q16" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
							<p style="font-weight: bold;">
							17.	Internet facility provided in Library is satisfactory.<span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q17" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
							<input type="radio" name="q17" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q17" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q17" value="Agree" required="required">&nbsp;Good&nbsp;
							<input type="radio" name="q17" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
							<p style="font-weight: bold;">
							18.	The campus is green and ecofriendly. <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q18" value="Strongly Disagree" required="required">&nbsp;Not sure&nbsp;
							<input type="radio" name="q18" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q18" value="Neither Agree nor Disagree" required="required">&nbsp;Disagree&nbsp;
							<input type="radio" name="q18" value="Agree" required="required">&nbsp;Agree&nbsp;
							<input type="radio" name="q18" value="Strongly Agree" required="required">&nbsp;Strongly Agree&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
							<p style="font-weight: bold;">
							19.	College campus is clean and neat. <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q19" value="Strongly Disagree" required="required">&nbsp;Not sure&nbsp;
							<input type="radio" name="q19" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q19" value="Neither Agree nor Disagree" required="required">&nbsp;Disagree&nbsp;
							<input type="radio" name="q19" value="Agree" required="required">&nbsp;Agree&nbsp;
							<input type="radio" name="q19" value="Strongly Agree" required="required">&nbsp;Strongly Agree&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
							<p style="font-weight: bold;">
							20.	The campus has safety and security arrangements. <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q20" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
							<input type="radio" name="q20" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q20" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q20" value="Agree" required="required">&nbsp;Good&nbsp;
							<input type="radio" name="q20" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
							<p style="font-weight: bold;">
							21.	Administration staff is cooperative and helpful. <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q21" value="Strongly Disagree" required="required">&nbsp;Not sure&nbsp;
							<input type="radio" name="q21" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q21" value="Neither Agree nor Disagree" required="required">&nbsp;Disagree&nbsp;
							<input type="radio" name="q21" value="Agree" required="required">&nbsp;Agree&nbsp;
							<input type="radio" name="q21" value="Strongly Agree" required="required">&nbsp;Strongly Agree&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
							<p style="font-weight: bold;">
							22.	Gender sensitization and environment awareness activities in college.<span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q22" value="Strongly Disagree" required="required">&nbsp;Rarely&nbsp;
							<input type="radio" name="q22" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q22" value="Neither Agree nor Disagree" required="required">&nbsp;Sometimes&nbsp;
							<input type="radio" name="q22" value="Agree" required="required">&nbsp;Often&nbsp;
							<input type="radio" name="q22" value="Strongly Agree" required="required">&nbsp;Regularly&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
							<p style="font-weight: bold;">
							23.	Continuous internal assessment is effectively implemented.<span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q23" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
							<input type="radio" name="q23" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q23" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q23" value="Agree" required="required">&nbsp;Good&nbsp;
							<input type="radio" name="q23" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
							<p style="font-weight: bold;">
							24.	Smooth conduct of university exam. <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q24" value="Strongly Disagree" required="required">&nbsp;Not sure&nbsp;
							<input type="radio" name="q24" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q24" value="Neither Agree nor Disagree" required="required">&nbsp;Disagree&nbsp;
							<input type="radio" name="q24" value="Agree" required="required">&nbsp;Agree&nbsp;
							<input type="radio" name="q24" value="Strongly Agree" required="required">&nbsp;Strongly Agree&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">
							<p style="font-weight: bold;">
							25.	Overall impression of College.    <span style="color:#faafaf">*</span>
						</p>
						<p style="font-weight: bold;">
							<input type="radio" name="q25" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
							<input type="radio" name="q25" value="Disagree" required="required" style="display: none;">
							<input type="radio" name="q25" value="Neither Agree nor Disagree" required="required">&nbsp;Satisfactory&nbsp;
							<input type="radio" name="q25" value="Agree" required="required">&nbsp;Good&nbsp;
							<input type="radio" name="q25" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
						</p>
						<hr style="border: 1px solid #55aadf">

						<button type="submit" class="btn btn-info">SUBMIT</button>
						<hr style="border: 1px solid #55aadf">
					</form>
				</div>
			</div>
		</div>
	</div>
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
