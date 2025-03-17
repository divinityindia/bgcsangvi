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
									<h2 style="color: #43577B; font-weight: bold;">${feedback.name} (${feedback.duration})</h2>
									<h3 style="color: #442056;">Employer Feedback about Student</h3>
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
									<form action="femployeremployee" method="post">
										<hr style="border: 1px solid #55aadf">
										<h4 style="font-weight: bold;">Tick the option best describes your level of satisfaction about your employee(s) (Who are past students of this college)</h4>
                                        <p style="font-weight: bold;">
                                         Name of the Company / Organization*:
                                         </p>
                                         <p style="font-weight: bold;">
											<input type="text" name="conm"  required="required" style="width: 50%">
										</p>
                                         <p style="font-weight: bold;">
                                         Address*:
                                         </p>
                                         <p style="font-weight: bold;">
											<input type="text" name="addr"  required="required" style="width: 50%">
										</p>
                                         <p style="font-weight: bold;">
                                         Name & Designation of the Respondent*:
                                         </p>
                                         <p style="font-weight: bold;">
											<input type="text" name="degs"  required="required" style="width: 50%">
										</p>
                                         <p style="font-weight: bold;">
                                         Email of the Respondent*:
                                         </p>
                                         <p style="font-weight: bold;">
											<input type="text" name="eml"  required="required" style="width: 50%">
										</p>
                                         <p style="font-weight: bold;">
                                         Contact Details*:
                                         </p>
                                         <p style="font-weight: bold;">
											<input type="text" name="cont"  required="required" style="width: 50%">
										</p>
										
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											1. Ability to contribute to the goal of the organization: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q1" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q1" value="Not Satisfied" required="required">&nbsp;Poor
											<input type="radio" name="q1" value="Satisfied" required="required">&nbsp;Satisfactory
											<input type="radio" name="q1" value="Happy" required="required">&nbsp;Good 
											<input type="radio" name="q1" value="Very Happy" required="required">&nbsp;Excellent
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											2. Planning and organization skill: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q2" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q2" value="Not Satisfied" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q2" value="Satisfied" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q2" value="Happy" required="required">&nbsp;Good &nbsp;
											<input type="radio" name="q2" value="Very Happy" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											3. Communication skill and Soft skill: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q3" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q3" value="Not Satisfied" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q3" value="Satisfied" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q3" value="Happy" required="required">&nbsp;Good &nbsp;
											<input type="radio" name="q3" value="Very Happy" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											4. Relationship with Seniors and Subordinates: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q4" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q4" value="Not Satisfied" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q4" value="Satisfied" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q4" value="Happy" required="required">&nbsp;Good &nbsp;
											<input type="radio" name="q4" value="Very Happy" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											5.	Leadership, Team spirit and initiative: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q5" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q5" value="Not Satisfied" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q5" value="Satisfied" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q5" value="Happy" required="required">&nbsp;Good &nbsp;
											<input type="radio" name="q5" value="Very Happy" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											6.Willingness to learn new techniques, adopt new ideas etc<span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q6" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q6" value="Not Satisfied" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q6" value="Satisfied" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q6" value="Happy" required="required">&nbsp;Good &nbsp;
											<input type="radio" name="q6" value="Very Happy" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											7. Ability to use work place equipment  <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q7" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q7" value="Not Satisfied" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q7" value="Satisfied" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q7" value="Happy" required="required">&nbsp;Good &nbsp;
											<input type="radio" name="q7" value="Very Happy" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											8. Ability to solve work place problems: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q8" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q8" value="Not Satisfied" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q8" value="Satisfied" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q8" value="Happy" required="required">&nbsp;Good &nbsp;
											<input type="radio" name="q8" value="Very Happy" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											9. Innovativeness , creativity: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q9" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q9" value="Not Satisfied" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q9" value="Satisfied" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q9" value="Happy" required="required">&nbsp;Good &nbsp;
											<input type="radio" name="q9" value="Very Happy" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											10. Involvement in social activities: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q10" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q10" value="Not Satisfied" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q10" value="Satisfied" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q10" value="Happy" required="required">&nbsp;Good &nbsp;
											<input type="radio" name="q10" value="Very Happy" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											11. Emphasis is on both fundamentals as well as latest developments: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q11" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q11" value="Not Satisfied" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q11" value="Satisfied" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q11" value="Happy" required="required">&nbsp;Good &nbsp;
											<input type="radio" name="q11" value="Very Happy" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											12. Imparts knowledge and skills required for the job market.: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q12" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q12" value="Not Satisfied" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q12" value="Satisfied" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q12" value="Happy" required="required">&nbsp;Good &nbsp;
											<input type="radio" name="q12" value="Very Happy" required="required">&nbsp;Excellent&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											13. Incorporates computer skills and other soft skills needed for employment.: <span style="color:#faafaf">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q13" value="Far from Satisfied" required="required" style="display: none;">
											<input type="radio" name="q13" value="Not Satisfied" required="required">&nbsp;Poor&nbsp;
											<input type="radio" name="q13" value="Satisfied" required="required">&nbsp;Satisfactory&nbsp;
											<input type="radio" name="q13" value="Happy" required="required">&nbsp;Good &nbsp;
											<input type="radio" name="q13" value="Very Happy" required="required">&nbsp;Excellent&nbsp;
										</p>
<!-- 										<hr style="border: 1px solid #55aadf"> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											11. Involvement in social activities: <span style="color:#faafaf">*</span> -->
<!-- 										</p> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											<input type="radio" name="q11" value="Far from Satisfied" required="required">&nbsp;Far from Satisfied&nbsp; -->
<!-- 											<input type="radio" name="q11" value="Not Satisfied" required="required">&nbsp;Not Satisfied&nbsp; -->
<!-- 											<input type="radio" name="q11" value="Satisfied" required="required">&nbsp;Satisfied&nbsp; -->
<!-- 											<input type="radio" name="q11" value="Happy" required="required">&nbsp;Happy&nbsp; -->
<!-- 											<input type="radio" name="q11" value="Very Happy" required="required">&nbsp;Very Happy&nbsp; -->
<!-- 										</p> -->
<!-- 										<hr style="border: 1px solid #55aadf"> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											12. Simplicity and sense of belonging: <span style="color:#faafaf">*</span> -->
<!-- 										</p> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											<input type="radio" name="q12" value="Far from Satisfied" required="required">&nbsp;Far from Satisfied&nbsp; -->
<!-- 											<input type="radio" name="q12" value="Not Satisfied" required="required">&nbsp;Not Satisfied&nbsp; -->
<!-- 											<input type="radio" name="q12" value="Satisfied" required="required">&nbsp;Satisfied&nbsp; -->
<!-- 											<input type="radio" name="q12" value="Happy" required="required">&nbsp;Happy&nbsp; -->
<!-- 											<input type="radio" name="q12" value="Very Happy" required="required">&nbsp;Very Happy&nbsp; -->
<!-- 										</p> -->
<!-- 										<hr style="border: 1px solid #55aadf"> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											13. Respect for values in life: <span style="color:#faafaf">*</span> -->
<!-- 										</p> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											<input type="radio" name="q13" value="Far from Satisfied" required="required">&nbsp;Far from Satisfied&nbsp; -->
<!-- 											<input type="radio" name="q13" value="Not Satisfied" required="required">&nbsp;Not Satisfied&nbsp; -->
<!-- 											<input type="radio" name="q13" value="Satisfied" required="required">&nbsp;Satisfied&nbsp; -->
<!-- 											<input type="radio" name="q13" value="Happy" required="required">&nbsp;Happy&nbsp; -->
<!-- 											<input type="radio" name="q13" value="Very Happy" required="required">&nbsp;Very Happy&nbsp; -->
<!-- 										</p> -->
<!-- 										<hr style="border: 1px solid #55aadf"> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											Suggestions if any <span style="color:#faafaf">*</span>: -->
<!-- 										</p> -->
<!-- 										<p style="font-weight: bold;"> -->
<!-- 											<textarea name="suggestions" rows="15" cols="30" required="required" style="width: 100%;height: 130px;"></textarea> -->
<!-- 										</p> --><br>
										<button type="submit" class="btn btn-info">SUBMIT</button>
										<br>
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
