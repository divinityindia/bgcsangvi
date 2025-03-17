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
									<h3 style="color: #442056;">Feedback from Students - About Teachers </h3>
									<p>Dear Students, </p>
									<p>This form has been designed to seek feedback from you to strengthen the quality of teaching-learning environment, to provide best possible facilities and modern infrastructure. The information provided by you will be kept confidential.</p>
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
									<p>For each item please indicate your level of agreement with the following statements by selecting appropriate option.</p>
									<form action="fstudentteaching" method="post">
										<p style="font-weight: bold;">
											1. Extent of the syllabus  covered in the class <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q1" value="Strongly Disagree" required="required">&nbsp;Below 30%&nbsp;
											<input type="radio" name="q1" value="Disagree" required="required">&nbsp;30 to 54%&nbsp;
											<input type="radio" name="q1" value="Not Sure" required="required">&nbsp;55 to 69%&nbsp;
											<input type="radio" name="q1" value="Agree" required="required">&nbsp;70 to 84%&nbsp;
											<input type="radio" name="q1" value="Strongly Agree" required="required">&nbsp;85 to 100%&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											2. Punctuality and regularity of teacher   <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q2" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q2" value="Disagree" required="required">&nbsp;Fair&nbsp;
											<input type="radio" name="q2" value="Not Sure" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q2" value="Agree" required="required">&nbsp;Very good &nbsp;
											<input type="radio" name="q2" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											3. Teacher's knowledge of subject  <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q3" value="Strongly Disagree" required="required">&nbsp;Can't say&nbsp;
											<input type="radio" name="q3" value="Disagree" required="required">&nbsp;Indifferent&nbsp;
											<input type="radio" name="q3" value="Not Sure" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q3" value="Agree" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q3" value="Strongly Agree" required="required">&nbsp;Thorough&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											4. Information by teacher about course outcomes.<span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q4" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q4" value="Disagree" required="required">&nbsp;Fair&nbsp;
											<input type="radio" name="q4" value="Not Sure" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q4" value="Agree" required="required">&nbsp;Very good &nbsp;
											<input type="radio" name="q4" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											5. Encouragement to interact  <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q5" value="Strongly Disagree" required="required">&nbsp;Never&nbsp;
											<input type="radio" name="q5" value="Disagree" required="required">&nbsp;Rarely&nbsp;
											<input type="radio" name="q5" value="Not Sure" required="required">&nbsp;Occasionally/Sometimes&nbsp;
											<input type="radio" name="q5" value="Agree" required="required">&nbsp;Usually&nbsp;
											<input type="radio" name="q5" value="Strongly Agree" required="required">&nbsp;Every time&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											6. Ability to clarify doubts <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q6" value="Strongly Disagree" required="required">&nbsp;Never&nbsp;
											<input type="radio" name="q6" value="Disagree" required="required">&nbsp;Rarely&nbsp;
											<input type="radio" name="q6" value="Not Sure" required="required">&nbsp;Occasionally/Sometimes&nbsp;
											<input type="radio" name="q6" value="Agree" required="required">&nbsp;Usually&nbsp;
											<input type="radio" name="q6" value="Strongly Agree" required="required">&nbsp;Every time&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											7.Use of appropriate modern teaching aids, power point presentations, web-resources, etc.<span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q7" value="Strongly Disagree" required="required">&nbsp;Below 29%&nbsp;
											<input type="radio" name="q7" value="Disagree" required="required">&nbsp;30 - 49%&nbsp;
											<input type="radio" name="q7" value="Not Sure" required="required">&nbsp;50 - 69%&nbsp;
											<input type="radio" name="q7" value="Agree" required="required">&nbsp;70 - 89%&nbsp;
											<input type="radio" name="q7" value="Strongly Agree" required="required">&nbsp;Above 90%&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											8. Accessibility in the Department after lecture hours for interactions  <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q8" value="Strongly Disagree" required="required">&nbsp;Never&nbsp;
											<input type="radio" name="q8" value="Disagree" required="required">&nbsp;Rarely&nbsp;
											<input type="radio" name="q8" value="Not Sure" required="required">&nbsp;Sometimes&nbsp;
											<input type="radio" name="q8" value="Agree" required="required">&nbsp;Often&nbsp;
											<input type="radio" name="q8" value="Strongly Agree" required="required">&nbsp;Regularly&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											9. Learner centric approach of teacher <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q9" value="Strongly Disagree" required="required">&nbsp;Very poor communication&nbsp;
											<input type="radio" name="q9" value="Disagree" required="required">&nbsp;Generally ineffective&nbsp;
											<input type="radio" name="q9" value="Not Sure" required="required">&nbsp;Just satisfactorily &nbsp;
											<input type="radio" name="q9" value="Agree" required="required">&nbsp;Sometimes effective &nbsp;
											<input type="radio" name="q9" value="Strongly Agree" required="required">&nbsp;Always effective&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											10. Teaching concepts with suitable, applications and demonstration.  <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q10" value="Strongly Disagree" required="required">&nbsp;Never&nbsp;
											<input type="radio" name="q10" value="Disagree" required="required">&nbsp;Rarely&nbsp;
											<input type="radio" name="q10" value="Not Sure" required="required">&nbsp;Occasionally/Sometimes&nbsp;
											<input type="radio" name="q10" value="Agree" required="required">&nbsp;Usually&nbsp;
											<input type="radio" name="q10" value="Strongly Agree" required="required">&nbsp;Every time&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											11. Overall impression of teacher.  <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q11" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q11" value="Disagree" required="required">&nbsp;Fair&nbsp;
											<input type="radio" name="q11" value="Not Sure" required="required">&nbsp;Good&nbsp;
											<input type="radio" name="q11" value="Agree" required="required">&nbsp;Very good &nbsp;
											<input type="radio" name="q11" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp;
										</p>
<!-- 										<hr style="border: 1px solid #55aadf"> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											12. The teachers guide the students for overall personality development of the students: <span style="color:#faafaf">*</span> -->
<!-- 										</p> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											<input type="radio" name="q12" value="Strongly Disagree" required="required">&nbsp;Strongly Disagree&nbsp; -->
<!-- 											<input type="radio" name="q12" value="Disagree" required="required">&nbsp;Disagree&nbsp; -->
<!-- 											<input type="radio" name="q12" value="Not Sure" required="required">&nbsp;Not Sure&nbsp; -->
<!-- 											<input type="radio" name="q12" value="Agree" required="required">&nbsp;Agree&nbsp; -->
<!-- 											<input type="radio" name="q12" value="Strongly Agree" required="required">&nbsp;Strongly Agree&nbsp; -->
<!-- 										</p> -->
<!-- 										<hr style="border: 1px solid #55aadf"> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											Course <span style="color:#faafaf">*</span>: -->
<!-- 										</p> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											<input type="text" name="course" required="required" style="width: 50%"> -->
<!-- 										</p> -->
<!-- 										<hr style="border: 1px solid #55aadf"> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											Academic Year <span style="color:#faafaf">*</span>: -->
<!-- 										</p> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											<input type="text" name="academicyear" required="required" style="width: 50%"> -->
<!-- 										</p> -->
<!-- 										<hr style="border: 1px solid #55aadf"> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											Suggestions if any <span style="color:#faafaf">*</span>: -->
<!-- 										</p> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											<textarea name="suggestions" rows="15" cols="30" required="required" style="width: 100%;height: 130px;"></textarea> -->
<!-- 										</p> -->

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
