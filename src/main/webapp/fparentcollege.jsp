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
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div id="tg-content" class="tg-content">
								<div class="tg-aboutus">
									<h2 style="color: #43577B;font-weight: bold;">${feedback.name} (${feedback.duration})</h2>
									<h3 style="color: #442056;">Parent Feedback About College</h3>
									<p>Dear Parents, </p>
									<p> The college aims at the overall development of the student to become entrepreneurs and professionals in the respective disciplines. This form has been designed to seek feedback from parents to strengthen the quality teaching-learning environment in the college, to assess and to improve academic, non-academic, infrastructure facilities. The information provided by you will be kept confidential.</p>
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
									<h3 style="font-weight: bold;">A. Preliminary Information:</h3>
									<form action="fparentcollege" method="post">
										<p style="font-weight: bold;">
											Name of the parent <span style="color:#faafaf">*</span>:
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="parentname" required="required" style="width: 50%">
										</p>
										<p style="font-weight: bold;">
											Contact Number <span style="color:#faafaf">*</span>:
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="contact" required="required" style="width: 50%">
										</p>
										<p style="font-weight: bold;">
											Name of the ward <span style="color:#faafaf">*</span>:
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="wardname" required="required" style="width: 50%">
										</p>
										<p style="font-weight: bold;">
											Name of the Department <span style="color:#faafaf">*</span>:
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="department" required="required" style="width: 50%">
										</p>
										<p style="font-weight: bold;">
											Academic Year <span style="color:#faafaf">*</span>:
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="academicyear" required="required" style="width: 50%">
										</p>
										<p style="font-weight: bold;">
											Course of the ward <span style="color:#faafaf">*</span>:
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="course" required="required" style="width: 50%">
										</p>
										<hr style="border: 1px solid #55aadf">
										<h3 style="font-weight: bold;">For each item please indicate your level of agreement with the following statements by selecting appropriate option.</h3>

										<p style="font-weight: bold;">
											1. Admission procedure: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q1" value="Excellent" required="required">&nbsp;Excellent&nbsp;
											<input type="radio" name="q1" value="Very Good" required="required" style="display: none;">
											<input type="radio" name="q1" value="Good" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q1" value="Average" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q1" value="Poor" required="required">&nbsp;Poor&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											2. Infrastructure and lab facility: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q2" value="Excellent" required="required">&nbsp;Excellent&nbsp;
											<input type="radio" name="q2" value="Very Good" required="required" style="display: none;">
											<input type="radio" name="q2" value="Good" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q2" value="Average" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q2" value="Poor" required="required">&nbsp;Poor&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											3. Canteen facility <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q3" value="Excellent" required="required">&nbsp;Excellent&nbsp;
											<input type="radio" name="q3" value="Very Good" required="required" style="display: none;">
											<input type="radio" name="q3" value="Good" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q3" value="Average" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q3" value="Poor" required="required">&nbsp;Poor&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											4. Library: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q4" value="Excellent" required="required">&nbsp;Excellent&nbsp;
											<input type="radio" name="q4" value="Very Good" required="required" style="display: none;">
											<input type="radio" name="q4" value="Good" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q4" value="Average" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q4" value="Poor" required="required">&nbsp;Poor&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											5.Sport and cultural activities: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q5" value="Excellent" required="required">&nbsp;Excellent&nbsp;
											<input type="radio" name="q5" value="Very Good" required="required" style="display: none;">
											<input type="radio" name="q5" value="Good" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q5" value="Average" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q5" value="Poor" required="required">&nbsp;Poor&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											6. Applicability of curriculum: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q6" value="Excellent" required="required">&nbsp;Excellent&nbsp;
											<input type="radio" name="q6" value="Very Good" required="required" style="display: none;">
											<input type="radio" name="q6" value="Good" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q6" value="Average" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q6" value="Poor" required="required">&nbsp;Poor&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											7. Examination system adopted by college: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q7" value="Excellent" required="required">&nbsp;Excellent&nbsp;
											<input type="radio" name="q7" value="Very Good" required="required" style="display: none;">
											<input type="radio" name="q7" value="Good" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q7" value="Average" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q7" value="Poor" required="required">&nbsp;Poor&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											8. Academic discipline (i.e. timely conduct of lectures, practical's and related activities) observed by college.<span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q8" value="Excellent" required="required">&nbsp;Excellent&nbsp;
											<input type="radio" name="q8" value="Very Good" required="required" style="display: none;">
											<input type="radio" name="q8" value="Good" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q8" value="Average" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q8" value="Poor" required="required">&nbsp;Poor&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											9.	Placement initiatives in college: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q9" value="Excellent" required="required">&nbsp;Excellent&nbsp;
											<input type="radio" name="q9" value="Very Good" required="required" style="display: none;">
											<input type="radio" name="q9" value="Good" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q9" value="Average" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q9" value="Poor" required="required">&nbsp;Poor&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											10. Overall impression of College: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q10" value="Excellent" required="required">&nbsp;Excellent&nbsp;
											<input type="radio" name="q10" value="Very Good" required="required" style="display:none; ">											<input type="radio" name="q10" value="Good" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q10" value="Average" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q10" value="Poor" required="required">&nbsp;Poor&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf"><br>
										<button type="submit" class="btn btn-info">SUBMIT</button>
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
