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
    <link rel="stylesheet" href="css/mycss.css">
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
						<div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
						
						<aside id="tg-sidebar" class="tg-sidebar">
								<div class="tg-widget tg-widgetaboutusnav">
									
									<div class="tg-widgetcontent" style="width:100% ;height: 500px;padding-top: 60px; ">
									<hr>
										<ul class="listul" >
											<a href="fstudentcollege" ><li class="active des">About Teaching - Learning and Evaluation</li></a>
<!-- 											<li><a href="#" style="background: blue;">About Library</a></li> -->
<!-- 											<li><a href="#" style="background: blue;">About Alumini</a></li> -->
<!-- 											<li><a href="#" style="background: blue;">About Sports</a></li> -->
										</ul>
									</div>
								</div>
							</aside>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
							<div id="tg-content" class="tg-content">
								<div class="tg-aboutus">
									<h2 style="color: #43577B;font-weight: bold;">${feedback.name} (${feedback.duration})</h2>
									<hr>
									<h3 style="color: #442056;">Feedback from Students -  About Teaching - Learning and Evaluation</h3>
									<h4>Guidelines for Students :</h4>
									<p>Internal Quality Assurance Cell of this College is conducting a Student Satisfaction Survey
										regarding Teaching - Learning and Evaluation, which will help to upgrade the quality in
										higher education. A student will have to respond to all the questions given in the following
										format with her/his sincere effort and thought. Her/his identity will not be revealed</p>
										<img src="Fed_Img/img1.png"/>
										<hr style="border: 1px solid #55aadf">
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
<!-- 									<h3 style="font-weight: bold;">Directions:</h3> -->
<!-- 									<p>For each item please indicate your level of agreement with the following statements by selecting appropriate option.</p> -->
                                        <img src="Fed_Img/img2.png" />
                                        <hr style="border: 1px solid #55aadf">
									<form action="fstudentcollege" method="post">
									<p style="font-weight: bold;">
											A. Please confirm this is the first and only time you answer this survey.<span style="color:red">*</span> <br>
											&#2325;&#2371;&#2346;&#2351;&#2366; &#2310;&#2346;&#2339; &#2360;&#2352;&#2381;&#2357;&#2375;&#2325;&#2381;&#2359;&#2339;&#2366;&#2330;&#2375; &#2313;&#2340;&#2381;&#2340;&#2352; &#2342;&#2375;&#2339;&#2381;&#2351;&#2366;&#2330;&#2368; &#2346;&#2361;&#2367;&#2354;&#2368;&#2330; &#2357;&#2375;&#2355; &#2309;&#2360;&#2354;&#2381;&#2351;&#2366;&#2330;&#2375; &#2344;&#2367;&#2358;&#2381;&#2330;&#2367;&#2340; &#2325;&#2352;&#2366;
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="f1" value="Yes" required="required">&nbsp;Yes&nbsp; / &#2361;&#2379;&#2351;&nbsp;
											<input type="radio" name="f1" value="No" required="required">&nbsp;No&nbsp; /  &#2344;&#2366;&#2361;&#2368;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											B. College Name <span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
										Baburaoji Gholap College, Sangvi, Pune-411027
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											C. Gender / &#2354;&#2367;&#2306;&#2327;<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
										 <p style="font-weight: bold;">
											<input type="radio" name="g1" value="Male" required="required">&nbsp;Male&nbsp; /&#2346;&#2369;&#2352;&#2370;&#2359;
											<input type="radio" name="g1" value="Female" required="required">&nbsp;Female&nbsp; /&#2350;&#2361;&#2367;&#2354;&#2366;
											<input type="radio" name="g1" value="Transgender" required="required">&nbsp;Transgender&nbsp; /&#2340;&#2371;&#2340;&#2368;&#2351;&#2346;&#2306;&#2340;&#2368;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">D. What degree program are you pursuing now? <span style="color:red">*</span> <br>
										&#2310;&#2340;&#2366; &#2310;&#2346;&#2339; &#2325;&#2379;&#2339;&#2340;&#2366; &#2309;&#2349;&#2381;&#2351;&#2366;&#2360;&#2325;&#2381;&#2352;&#2350; &#2346;&#2370;&#2352;&#2381;&#2339;  &#2325;&#2352;&#2340; &#2310;&#2361;&#2366;&#2340;<span style="color:red">*</span></p>
										 <p style="font-weight: bold;">
											<input type="radio" name="d1" value="Bachelor" required="required">&nbsp;Bachelor's &nbsp;
											<input type="radio" name="d1" value="Master" required="required">&nbsp;Master's&nbsp;
											<input type="radio" name="d1" value="Doctorate" required="required">&nbsp;Doctorate&nbsp;
											<input type="radio" name="d1" value="Other" required="required">&nbsp;Other&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">E. What subject area are you currently pursuing?<span style="color:red">*</span> <br>
										&#2310;&#2346;&#2339; &#2310;&#2340;&#2366; &#2325;&#2379;&#2339;&#2340;&#2381;&#2351;&#2366; &#2357;&#2367;&#2359;&#2351;&#2366;&#2330;&#2375; &#2309;&#2343;&#2381;&#2351;&#2351;&#2344; &#2325;&#2352;&#2340; &#2310;&#2361;&#2366;&#2340;<span style="color:red">*</span></p>
										 <p style="font-weight: bold;">
											<input type="radio" name="course" value="Arts" required="required">&nbsp;Arts&nbsp;
											<input type="radio" name="course" value="Commerce" required="required">&nbsp;Commerce&nbsp;
											<input type="radio" name="course" value="Science" required="required">&nbsp;Science&nbsp;
											<input type="radio" name="course" value="Vocational" required="required">&nbsp;Vocational&nbsp;
											<input type="radio" name="course" value="Other" required="required">&nbsp;Other&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">F. Age / &#2357;&#2351; <span style="color:red">*</span></p>
										 <p style="font-weight: bold;">
											<input type="text" name="age" required="required" style="width: 50%">
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											1. How much of the syllabus was covered in the class?<span style="color:red">*</span> <br>
											&#2310;&#2346;&#2354;&#2381;&#2351;&#2366; &#2357;&#2352;&#2381;&#2327;&#2366;&#2350;&#2343;&#2381;&#2351;&#2375; &#2325;&#2367;&#2340;&#2368; &#2335;&#2325;&#2381;&#2325;&#2375; &#2309;&#2349;&#2381;&#2351;&#2366;&#2360;&#2325;&#2381;&#2352;&#2350; &#2346;&#2370;&#2352;&#2381;&#2339; &#2325;&#2375;&#2354;&#2366; &#2327;&#2375;&#2354;&#2366;? <span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q1" value="Strongly Agree" required="required">&nbsp;85 to 100%&nbsp;<br>
											<input type="radio" name="q1" value="Agree" required="required">&nbsp;70 to 84%&nbsp;<br>
											<input type="radio" name="q1" value="Not Sure" required="required">&nbsp; 55 to 69%&nbsp;<br>
											<input type="radio" name="q1" value="Disagree" required="required">&nbsp; 30 to 54%&nbsp;<br>
											<input type="radio" name="q1" value="Strongly Disagree" required="required">&nbsp;Below 30%&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											2. How well did the teachers prepare for the classes? <span style="color:red">*</span> <br>
											&#2358;&#2367;&#2325;&#2381;&#2359;&#2325;&#2366;&#2306;&#2344;&#2368; &#2340;&#2381;&#2351;&#2366;&#2306;&#2330;&#2381;&#2351;&#2366;  &#2357;&#2367;&#2359;&#2351; &#2360;&#2306;&#2348;&#2306;&#2343;&#2367;&#2340;  &#2325;&#2375;&#2354;&#2375;&#2354;&#2381;&#2351;&#2366; &#2340;&#2351;&#2366;&#2352;&#2368; &#2348;&#2366;&#2348;&#2340; &#2310;&#2346;&#2354;&#2375; &#2350;&#2340; ?
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q2" value="Strongly Agree" required="required">&nbsp;Thoroughly&nbsp; /&#2309;&#2349;&#2381;&#2351;&#2366;&#2360;&#2346;&#2370;&#2352;&#2381;&#2339; <br>
											<input type="radio" name="q2" value="Agree" required="required">&nbsp;Satisfactorily&nbsp; /  &#2360;&#2350;&#2366;&#2343;&#2366;&#2344;&#2325;&#2366;&#2352;&#2325;<br>
											<input type="radio" name="q2" value="Not Sure" required="required">&nbsp;Poorly&nbsp; / &#2360;&#2352;&#2381;&#2357; &#2360;&#2366;&#2343;&#2352;&#2339;<br>
											<input type="radio" name="q2" value="Disagree" required="required">&nbsp;Indifferently&nbsp; / &#2309;&#2360;&#2350;&#2366;&#2343;&#2366;&#2344;&#2325;&#2366;&#2352;&#2325;<br>
											<input type="radio" name="q2" value="Strongly Disagree" required="required">&nbsp; Won't teach at all&nbsp; / &#2309;&#2332;&#2367;&#2348;&#2366;&#2340; &#2358;&#2367;&#2325;&#2357;&#2367;&#2354;&#2375; &#2344;&#2366;&#2361;&#2368;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											3. How well were the teachers able to communicate? <span style="color:red">*</span> <br>
											&#2358;&#2367;&#2325;&#2381;&#2359;&#2325; &#2360;&#2306;&#2357;&#2366;&#2342; &#2360;&#2366;&#2343;&#2339;&#2381;&#2351;&#2366;&#2360; &#2325;&#2367;&#2340;&#2368;  &#2351;&#2358;&#2360;&#2381;&#2357;&#2368; &#2361;&#2379;&#2340;&#2366;&#2340;?
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q3" value="Strongly Agree" required="required">&nbsp;Always effective&nbsp; / &#2344;&#2375;&#2361;&#2350;&#2368; &#2346;&#2381;&#2352;&#2349;&#2366;&#2357;&#2368;<br>
											<input type="radio" name="q3" value="Agree" required="required">&nbsp;Sometimes effective&nbsp; / &#2325;&#2343;&#2368;&#2340;&#2352;&#2368; &#2346;&#2381;&#2352;&#2349;&#2366;&#2357;&#2368;<br>
											<input type="radio" name="q3" value="Not Sure" required="required">&nbsp;Just satisfactorily&nbsp; / &#2360;&#2350;&#2366;&#2343;&#2366;&#2344;&#2325;&#2366;&#2352;&#2325;<br>
											<input type="radio" name="q3" value="Disagree" required="required">&nbsp; Generally ineffective&nbsp; / &#2360;&#2366;&#2343;&#2366;&#2352;&#2339;&#2346;&#2339;&#2375; &#2346;&#2381;&#2352;&#2349;&#2366;&#2357;&#2368;<br>
											<input type="radio" name="q3" value="Strongly Disagree" required="required">&nbsp;Very poor communication&nbsp; / &#2309;&#2340;&#2367;&#2358;&#2351; &#2325;&#2350;&#2368; &#2346;&#2381;&#2352;&#2340;&#2368;&#2330;&#2375; &#2360;&#2306;&#2349;&#2366;&#2359;&#2339; 
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											4. The teacher's approach to teaching can best be described as:<span style="color:red">*</span> <br> 
											&#2358;&#2367;&#2325;&#2381;&#2359;&#2325;&#2366;&#2306;&#2330;&#2381;&#2351;&#2366; &#2358;&#2367;&#2325;&#2357;&#2339;&#2368;&#2330;&#2381;&#2351;&#2366; &#2342;&#2371;&#2359;&#2381;&#2335;&#2367;&#2325;&#2379;&#2344;&#2366;&#2330;&#2375; &#2326;&#2366;&#2354;&#2368;&#2354;&#2346;&#2376;&#2325;&#2368; &#2325;&#2360;&#2375; &#2357;&#2352;&#2381;&#2339;&#2344; &#2325;&#2352;&#2340;&#2366; &#2351;&#2375;&#2312;&#2354; ? 
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q4" value="Strongly Agree" required="required">&nbsp;Excellent&nbsp; / &#2313;&#2340;&#2381;&#2325;&#2371;&#2359;&#2381;&#2335;<br>
											<input type="radio" name="q4" value="Agree" required="required">&nbsp;Very good&nbsp; / &#2309;&#2340;&#2367;&#2358;&#2351; &#2330;&#2366;&#2306;&#2327;&#2354;&#2366;<br>
											<input type="radio" name="q4" value="Not Sure" required="required">&nbsp;Good&nbsp; /&#2330;&#2366;&#2306;&#2327;&#2354;&#2366;<br>
											<input type="radio" name="q4" value="Disagree" required="required">&nbsp;Fair&nbsp; /&#2351;&#2379;&#2327;&#2381;&#2351;<br>
											<input type="radio" name="q4" value="Strongly Disagree" required="required">&nbsp;Poor&nbsp; / &#2360;&#2350;&#2366;&#2343;&#2366;&#2344;&#2325;&#2352;&#2325;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											5. Fairness of the internal evaluation process by the teachers. <span style="color:red">*</span> <br>
											&#2309;&#2306;&#2340;&#2352;&#2381;&#2327;&#2340; &#2350;&#2370;&#2354;&#2381;&#2351;&#2350;&#2366;&#2346;&#2344;&#2366;&#2340; &#2358;&#2367;&#2325;&#2381;&#2359;&#2325; &#2325;&#2367;&#2340;&#2346;&#2340; &#2346;&#2366;&#2352;&#2342;&#2352;&#2381;&#2358;&#2325;&#2340;&#2366; &#2342;&#2352;&#2381;&#2358;&#2357;&#2367;&#2340;&#2366;&#2340; 
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q5" value="Strongly Agree" required="required">&nbsp;Always fair&nbsp; /&#2344;&#2375;&#2361;&#2350;&#2368;<br>
											<input type="radio" name="q5" value="Agree" required="required">&nbsp;Usually fair&nbsp; / &#2360;&#2366;&#2350;&#2344;&#2381;&#2351;&#2340;:<br>
											<input type="radio" name="q5" value="Not Sure" required="required">&nbsp; Sometimes unfair&nbsp; / &#2325;&#2343;&#2368;&#2325;&#2343;&#2368; &#2309;&#2344;&#2369;&#2330;&#2367;&#2340;<br>
											<input type="radio" name="q5" value="Disagree" required="required">&nbsp;Usually unfair&nbsp; / &#2360;&#2366;&#2350;&#2344;&#2381;&#2351;&#2340;: &#2309;&#2344;&#2369;&#2330;&#2367;&#2340;<br>
											<input type="radio" name="q5" value="Strongly Disagree" required="required">&nbsp;Unfair&nbsp; / &#2309;&#2344;&#2369;&#2330;&#2367;&#2340;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											6. Was your performance in assignments discussed with you? <span style="color:red">*</span> <br>
											&#2310;&#2346;&#2354;&#2381;&#2351;&#2366;&#2354;&#2366;  &#2342;&#2367;&#2354;&#2375;&#2354;&#2366;  &#2357;&#2352;&#2381;&#2327;&#2346;&#2366;&#2336;  &#2357;  &#2327;&#2371;&#2361;&#2346;&#2366;&#2336; &#2351;&#2366; &#2348;&#2366;&#2348;&#2340;  &#2358;&#2367;&#2325;&#2381;&#2359;&#2325; &#2310;&#2346;&#2354;&#2381;&#2351;&#2366;&#2358;&#2368;  &#2330;&#2352;&#2381;&#2330;&#2366;  &#2325;&#2352;&#2340;&#2366;&#2340; &#2325;&#2366; ?
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q6" value="Strongly Agree" required="required">&nbsp;Every time&nbsp; /&#2346;&#2381;&#2352;&#2340;&#2381;&#2351;&#2375;&#2325; &#2357;&#2375;&#2355;&#2368;<br>
											<input type="radio" name="q6" value="Agree" required="required">&nbsp;Usually&nbsp; / &#2344;&#2375;&#2361;&#2350;&#2368; <br>
											<input type="radio" name="q6" value="Not Sure" required="required">&nbsp; Occasionally/Sometimes&nbsp;/ &#2325;&#2343;&#2368;&#2340;&#2352;&#2368;<br> 
											<input type="radio" name="q6" value="Disagree" required="required">&nbsp;Rarely&nbsp; / &#2325;&#2381;&#2357;&#2330;&#2367;&#2340;<br>
											<input type="radio" name="q6" value="Strongly Disagree" required="required">&nbsp;Never&nbsp; / &#2325;&#2343;&#2368;&#2361;&#2368; &#2344;&#2366;&#2361;&#2368;  
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											7. The institute takes active interest in promoting internship, student exchange, field visit opportunities for students?<span style="color:red">*</span> <br>
											  &#2350;&#2361;&#2366;&#2357;&#2367;&#2342;&#2351;&#2366;&#2354;&#2351;  &#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2352;&#2381;&#2341;&#2368; &#2346;&#2381;&#2352;&#2358;&#2367;&#2325;&#2381;&#2359;&#2339;&#2366;&#2360;&#2366;&#2336;&#2368; / &#2342;&#2375;&#2357;&#2366;&#2339;&#2328;&#2375;&#2357;&#2366;&#2339;  &#2325;&#2366;&#2352;&#2381;&#2351;&#2325;&#2381;&#2352;&#2350; / &#2325;&#2381;&#2359;&#2375;&#2340;&#2381;&#2352;&#2349;&#2375;&#2335;&#2368;&#2360;&#2366;&#2336;&#2368; &#2346;&#2381;&#2352;&#2379;&#2340;&#2381;&#2360;&#2366;&#2361;&#2344;  &#2325;&#2352;&#2340;&#2375; &#2325;&#2366; ?

											 <span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q7" value="Strongly Agree" required="required">&nbsp;Regularly&nbsp; /&#2344;&#2375;&#2361;&#2350;&#2368;<br> 
											<input type="radio" name="q7" value="Agree" required="required">&nbsp;Often&nbsp; /&#2309;&#2344;&#2375;&#2325;&#2342;&#2366;  <br>
											<input type="radio" name="q7" value="Not Sure" required="required">&nbsp;Sometimes&nbsp; /&#2325;&#2343;&#2368;&#2340;&#2352;&#2368;<br>
											<input type="radio" name="q7" value="Disagree" required="required">&nbsp;Rarely&nbsp; / &#2325;&#2381;&#2357;&#2330;&#2368;&#2340; <br>
											<input type="radio" name="q7" value="Strongly Disagree" required="required">&nbsp;Never&nbsp; /&#2325;&#2343;&#2368;&#2361;&#2368;  &#2344;&#2366;&#2361;&#2368; 
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											8. The teaching and mentoring process in your institution facilitates you in cognitive, social and emotional growth.<span style="color:red">*</span> <br>
											&#2310;&#2346;&#2354;&#2381;&#2351;&#2366;  &#2350;&#2361;&#2366;&#2357;&#2367;&#2342;&#2351;&#2366;&#2354;&#2351;&#2366;&#2340;&#2368;&#2354; &#2309;&#2343;&#2381;&#2351;&#2366;&#2346;&#2344; &#2310;&#2339;&#2367; &#2350;&#2366;&#2352;&#2381;&#2327;&#2342;&#2352;&#2381;&#2358;&#2344; &#2346;&#2381;&#2352;&#2325;&#2381;&#2352;&#2367;&#2351;&#2366; &#2310;&#2346;&#2354;&#2381;&#2351;&#2366;&#2354;&#2366; &#2360;&#2306;&#2328;&#2335;&#2344;&#2366;&#2340;&#2381;&#2350;&#2325;,&#2360;&#2366;&#2350;&#2366;&#2332;&#2367;&#2325;  &#2310;&#2339;&#2367; &#2349;&#2366;&#2357;&#2344;&#2367;&#2325; &#2357;&#2366;&#2338;&#2368;&#2360; &#2350;&#2342;&#2340; &#2325;&#2352;&#2340;&#2375; 
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q8" value="Strongly Agree" required="required">&nbsp;Significantly&nbsp; /&#2350;&#2379;&#2336;&#2351;&#2366;&#2346;&#2381;&#2352;&#2350;&#2366;&#2339;&#2366;&#2340;<br>
											<input type="radio" name="q8" value="Agree" required="required">&nbsp;Very well&nbsp; /&#2350;&#2343;&#2381;&#2351;&#2350;&#2346;&#2381;&#2352;&#2350;&#2366;&#2339;&#2366;&#2340;  <br>
											<input type="radio" name="q8" value="Not Sure" required="required">&nbsp;Moderately&nbsp; / &#2350;&#2366;&#2347;&#2325;&#2346;&#2381;&#2352;&#2350;&#2366;&#2339;&#2366;&#2340; <br>
											<input type="radio" name="q8" value="Disagree" required="required">&nbsp;Marginally&nbsp; /&#2325;&#2367;&#2352;&#2325;&#2379;&#2355; &#2346;&#2381;&#2352;&#2350;&#2366;&#2339;&#2366;&#2340;<br> 
											<input type="radio" name="q8" value="Strongly Disagree" required="required">&nbsp;Not at all&nbsp; / &#2325;&#2343;&#2368;&#2330; &#2344;&#2366;&#2361;&#2368; 
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											9. The institution provides multiple opportunities to learn and grow.<span style="color:red">*</span> <br>
											&#2350;&#2361;&#2366;&#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2354;&#2351; &#2310;&#2346;&#2354;&#2381;&#2351;&#2366;&#2354;&#2366; &#2358;&#2367;&#2325;&#2339;&#2381;&#2351;&#2366;&#2360;&#2366;&#2336;&#2368; &#2310;&#2339;&#2367; &#2357;&#2367;&#2325;&#2366;&#2360;&#2366;&#2360;&#2366;&#2336;&#2368; &#2360;&#2306;&#2343;&#2368; &#2313;&#2346;&#2354;&#2348;&#2381;&#2343; &#2325;&#2352;&#2370;&#2344; &#2342;&#2375;&#2340;&#2375; 
											 <span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q9" value="Strongly Agree" required="required">&nbsp;Strongly agree&nbsp; /&#2346;&#2370;&#2352;&#2381;&#2339;&#2346;&#2339;&#2375;  &#2360;&#2361;&#2350;&#2340;<br> 
											<input type="radio" name="q9" value="Agree" required="required">&nbsp;Agree&nbsp; /&#2360;&#2361;&#2350;&#2340; <br>
											<input type="radio" name="q9" value="Not Sure" required="required">&nbsp;Neutral&nbsp; /&#2340;&#2335;&#2360;&#2381;&#2341;<br> 
											<input type="radio" name="q9" value="Disagree" required="required">&nbsp;Disagree&nbsp; /&#2309;&#2360;&#2361;&#2350;&#2340; <br>
											<input type="radio" name="q9" value="Strongly Disagree" required="required">&nbsp; Strongly disagree&nbsp; / &#2346;&#2370;&#2352;&#2381;&#2339;&#2346;&#2339;&#2375; &#2309;&#2360;&#2361;&#2350;&#2340;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											10. Teachers inform you about your expected competencies, course outcomes and programme outcomes.<span style="color:red">*</span> <br>
											&#2358;&#2367;&#2325;&#2381;&#2359;&#2325; &#2310;&#2346;&#2339;&#2366;&#2354;&#2366; &#2309;&#2346;&#2375;&#2325;&#2381;&#2359;&#2367;&#2340; &#2325;&#2380;&#2358;&#2354;&#2381;&#2351; &#2357; &#2309;&#2349;&#2381;&#2351;&#2366;&#2360;&#2325;&#2381;&#2352;&#2350;&#2366;&#2330;&#2368; &#2313;&#2342;&#2381;&#2342;&#2367;&#2359;&#2381;&#2335;&#2375; &#2357; &#2313;&#2346;&#2351;&#2379;&#2327;&#2367;&#2340;&#2366; &#2351;&#2366;&#2348;&#2366;&#2348;&#2340; &#2360;&#2370;&#2330;&#2367;&#2340; &#2325;&#2352;&#2340;&#2366;&#2340; &#2325;&#2366; ? 
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q10" value="Strongly Agree" required="required">&nbsp;Every time&nbsp; / &#2344;&#2375;&#2361;&#2350;&#2368;<br>
											<input type="radio" name="q10" value="Disagree" required="required">&nbsp;Usually&nbsp; / &#2360;&#2366;&#2350;&#2366;&#2344;&#2381;&#2351;&#2340;&#2307;<br>
											<input type="radio" name="q10" value="Not Sure" required="required">&nbsp;Occasionally/Sometimes&nbsp; / &#2325;&#2343;&#2368;&#2340;&#2352;&#2368;<br>
											<input type="radio" name="q10" value="Agree" required="required">&nbsp;Rarely&nbsp; / &#2325;&#2381;&#2357;&#2330;&#2367;&#2340;<br>
											<input type="radio" name="q10" value="Strongly Disagree" required="required">&nbsp;Never&nbsp; / &#2325;&#2343;&#2368;&#2330; &#2344;&#2366;&#2361;&#2368;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											11.Your mentor does a necessary follow-up with an assigned task to you.? <span style="color:red">*</span> <br>
											&#2310;&#2346;&#2354;&#2375; &#2358;&#2367;&#2325;&#2381;&#2359;&#2325; / &#2350;&#2366;&#2352;&#2381;&#2327;&#2342;&#2352;&#2381;&#2358;&#2325; &#2310;&#2346;&#2354;&#2381;&#2351;&#2366;&#2354;&#2366; &#2344;&#2375;&#2350;&#2370;&#2344; &#2342;&#2367;&#2354;&#2375;&#2354;&#2381;&#2351;&#2366; &#2325;&#2366;&#2350;&#2366;&#2330;&#2366; &#2346;&#2366;&#2336;&#2346;&#2369;&#2352;&#2366;&#2357;&#2366; &#2325;&#2352;&#2340;&#2366;&#2340; &#2325;&#2366;&#2351; ?
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q11" value="Strongly Agree" required="required">&nbsp;Every time&nbsp; / &#2344;&#2375;&#2361;&#2350;&#2368;<br>
											<input type="radio" name="q11" value="Agree" required="required">&nbsp;Usually&nbsp; / &#2360;&#2366;&#2350;&#2366;&#2344;&#2381;&#2351;&#2340;&#2307;<br>
											<input type="radio" name="q11" value="Not Sure" required="required">&nbsp;Occasionally/Sometimes&nbsp; / &#2325;&#2343;&#2368;&#2340;&#2352;&#2368;<br>
											<input type="radio" name="q11" value="Disagree" required="required">&nbsp;Rarely&nbsp; / &#2325;&#2381;&#2357;&#2330;&#2367;&#2340;<br>
											<input type="radio" name="q11" value="Strongly Disagree" required="required">&nbsp;Never&nbsp; / &#2325;&#2343;&#2368;&#2330; &#2344;&#2366;&#2361;&#2368;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											12. The teachers illustrate the concepts through examples and applications. <span style="color:red">*</span> <br>
											&#2358;&#2367;&#2325;&#2381;&#2359;&#2325; &#2351;&#2379;&#2327;&#2381;&#2351; &#2340;&#2368; &#2313;&#2342;&#2366;&#2361;&#2352;&#2339;&#2375; &#2342;&#2375;&#2340; &#2360;&#2306;&#2325;&#2354;&#2381;&#2346;&#2344;&#2366; &#2360;&#2381;&#2346;&#2359;&#2381;&#2335; &#2325;&#2352;&#2340;&#2366;&#2340; &#2325;&#2366; ?
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q12" value="Strongly Agree" required="required">&nbsp;Every time&nbsp; / &#2344;&#2375;&#2361;&#2350;&#2368;<br>
											<input type="radio" name="q12" value="Agree" required="required">&nbsp;Usually&nbsp; / &#2360;&#2366;&#2350;&#2366;&#2344;&#2381;&#2351;&#2340;&#2307;<br>
											<input type="radio" name="q12" value="Not Sure" required="required">&nbsp;Occasionally/Sometimes&nbsp; / &#2325;&#2343;&#2368;&#2340;&#2352;&#2368;<br>
											<input type="radio" name="q12" value="Disagree" required="required">&nbsp;Rarely&nbsp; / &#2325;&#2381;&#2357;&#2330;&#2367;&#2340;<br>
											<input type="radio" name="q12" value="Strongly Disagree" required="required">&nbsp;Never&nbsp; / &#2325;&#2343;&#2368;&#2330; &#2344;&#2366;&#2361;&#2368;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											13. The teachers identify your strengths and encourage you with providing right level of challenges.<span style="color:red">*</span> <br>
											&#2358;&#2367;&#2325;&#2381;&#2359;&#2325; &#2310;&#2346;&#2354;&#2381;&#2351;&#2366;&#2340;&#2368;&#2354; &#2325;&#2381;&#2359;&#2350;&#2340;&#2366; &#2323;&#2355;&#2326;&#2370;&#2344; &#2310;&#2346;&#2354;&#2381;&#2351;&#2366;&#2354;&#2366;  &#2346;&#2381;&#2352;&#2379;&#2340;&#2381;&#2360;&#2366;&#2361;&#2344; &#2342;&#2375;&#2340; &#2351;&#2379;&#2327;&#2381;&#2351;&#2340;&#2381;&#2351;&#2366; &#2310;&#2357;&#2381;&#2361;&#2366;&#2344;&#2366;&#2306;&#2348;&#2366;&#2348;&#2340; &#2350;&#2366;&#2361;&#2367;&#2340;&#2368; &#2342;&#2375;&#2340;&#2366;&#2340; &#2325;&#2366;&#2351; ?
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q13" value="Strongly Agree" required="required">&nbsp;Fully&nbsp; /&#2346;&#2370;&#2352;&#2381;&#2339;&#2346;&#2339;&#2375;<br>
											<input type="radio" name="q13" value="Agree" required="required">&nbsp;Reasonably&nbsp; /&#2351;&#2379;&#2327;&#2381;&#2351; <br>
											<input type="radio" name="q13" value="Not Sure" required="required">&nbsp;Partially&nbsp; / &#2309;&#2306;&#2358;&#2340;&#2307; <br>
											<input type="radio" name="q13" value="Disagree" required="required">&nbsp;Slightly&nbsp; / &#2309;&#2354;&#2381;&#2346;<br>
											<input type="radio" name="q13" value="Strongly Disagree" required="required">&nbsp;Unable to&nbsp; / &#2360;&#2366;&#2306;&#2327;&#2370; &#2358;&#2325;&#2340; &#2344;&#2366;&#2361;&#2368; 
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											14. Teachers are able to identify your weaknesses and help you to overcome them.<span style="color:red">*</span> <br>
											&#2358;&#2367;&#2325;&#2381;&#2359;&#2325; &#2310;&#2346;&#2354;&#2381;&#2351;&#2366;&#2340;&#2368;&#2354; &#2325;&#2350;&#2340;&#2352;&#2340;&#2366; &#2323;&#2355;&#2326;&#2370;&#2344; &#2340;&#2381;&#2351;&#2366;&#2357;&#2352; &#2350;&#2366;&#2340; &#2325;&#2352;&#2339;&#2381;&#2351;&#2366;&#2360;&#2366;&#2336;&#2368; &#2310;&#2346;&#2354;&#2381;&#2351;&#2366;&#2354;&#2366; &#2350;&#2342;&#2340; &#2325;&#2352;&#2340;&#2366;&#2340; &#2325;&#2366;&#2351; ?
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q14" value="Strongly Agree" required="required">&nbsp; Every time&nbsp; / &#2344;&#2375;&#2361;&#2350;&#2368;<br>
											<input type="radio" name="q14" value="Agree" required="required">&nbsp;Usually&nbsp; / &#2360;&#2366;&#2350;&#2366;&#2344;&#2381;&#2351;&#2340;&#2307;<br>
											<input type="radio" name="q14" value="Not Sure" required="required">&nbsp;Occasionally/Sometimes&nbsp; / &#2325;&#2343;&#2368;&#2340;&#2352;&#2368;<br>
											<input type="radio" name="q14" value="Disagree" required="required">&nbsp;Rarely&nbsp; / &#2325;&#2381;&#2357;&#2330;&#2367;&#2340;<br>
											<input type="radio" name="q14" value="Strongly Disagree" required="required">&nbsp;Never&nbsp; / &#2325;&#2343;&#2368;&#2330; &#2344;&#2366;&#2361;&#2368;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											15. The institution makes an effort to engage students in the monitoring, review and continuous quality improvement of the teaching learning process.<span style="color:red">*</span> <br> 
											&#2350;&#2361;&#2366;&#2357;&#2367;&#2342;&#2351;&#2366;&#2354;&#2351;&#2366;&#2350;&#2366;&#2352;&#2381;&#2347;&#2340;  &#2309;&#2343;&#2381;&#2351;&#2366;&#2346;&#2344; &#2357; &#2309;&#2343;&#2381;&#2351;&#2351;&#2344;  &#2357;&#2381;&#2351;&#2357;&#2360;&#2381;&#2341;&#2375;&#2340; &#2360;&#2369;&#2343;&#2366;&#2352;&#2339;&#2366; &#2357;&#2381;&#2361;&#2366;&#2357;&#2368; &#2350;&#2381;&#2361;&#2339;&#2370;&#2344; &#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2352;&#2381;&#2341;&#2381;&#2351;&#2366;&#2357;&#2352; &#2354;&#2325;&#2381;&#2359; &#2342;&#2375;&#2339;&#2375; , &#2340;&#2381;&#2351;&#2366;&#2330;&#2381;&#2351;&#2366; &#2346;&#2381;&#2352;&#2327;&#2340;&#2368;&#2330;&#2366; &#2309;&#2361;&#2357;&#2366;&#2354; &#2350;&#2366;&#2327;&#2357;&#2339;&#2375; &#2311;&#2340;&#2381;&#2351;&#2366;&#2342;&#2368; &#2346;&#2381;&#2352;&#2351;&#2340;&#2381;&#2344; &#2360;&#2366;&#2340;&#2340;&#2381;&#2351;&#2366;&#2344;&#2375; &#2325;&#2375;&#2354;&#2375; &#2332;&#2366;&#2340;&#2366;&#2340; &#2325;&#2366;&#2351; ?
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
										    <input type="radio" name="q15" value="Strongly Agree" required="required">&nbsp;Strongly agree&nbsp; /&#2346;&#2370;&#2352;&#2381;&#2339;&#2346;&#2339;&#2375;  &#2360;&#2361;&#2350;&#2340;<br> 
											<input type="radio" name="q15" value="Agree" required="required">&nbsp;Agree&nbsp; /&#2360;&#2361;&#2350;&#2340; <br>
											<input type="radio" name="q15" value="Not Sure" required="required">&nbsp;Neutral&nbsp; /&#2340;&#2335;&#2360;&#2381;&#2341;<br> 
											<input type="radio" name="q15" value="Disagree" required="required">&nbsp;Disagree&nbsp; /&#2309;&#2360;&#2361;&#2350;&#2340; <br>
											<input type="radio" name="q15" value="Strongly Disagree" required="required">&nbsp; Strongly disagree&nbsp; / &#2346;&#2370;&#2352;&#2381;&#2339;&#2346;&#2339;&#2375; &#2309;&#2360;&#2361;&#2350;&#2340;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											16. The institute/ teachers use student centric methods, such as experiential learning,participative learning and problem solving methodologies for enhancing learning experiences.<span style="color:red">*</span> <br> 
											&#2358;&#2367;&#2325;&#2381;&#2359;&#2325; &#2357;&#2367;&#2342;&#2351;&#2366;&#2352;&#2381;&#2341;&#2368;  &#2325;&#2375;&#2306;&#2342;&#2381;&#2352;&#2367;&#2340; &#2357;  &#2346;&#2381;&#2352;&#2351;&#2379;&#2327;&#2366;&#2340;&#2381;&#2350;&#2325; &#2346;&#2342;&#2381;&#2343;&#2340;&#2368;&#2344;&#2375; &#2357;&#2367;&#2342;&#2351;&#2366;&#2352;&#2381;&#2341;&#2381;&#2351;&#2366;&#2306;&#2344;&#2366; &#2360;&#2350;&#2332;&#2366;&#2357;&#2370;&#2344; &#2328;&#2375;&#2314;&#2344; &#2340;&#2381;&#2351;&#2366;&#2330;&#2375; &#2346;&#2381;&#2352;&#2358;&#2381;&#2344; &#2360;&#2379;&#2337;&#2357;&#2367;&#2339;&#2381;&#2351;&#2366;&#2330;&#2375; &#2313;&#2346;&#2366;&#2351; &#2309;&#2357;&#2354;&#2306;&#2348;&#2357;&#2367;&#2340;&#2366;&#2340; &#2325;&#2366;&#2351; ?
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q16" value="Strongly Agree" required="required">&nbsp;To a great extent&nbsp; /&#2350;&#2379;&#2336;&#2351;&#2366;&#2346;&#2381;&#2352;&#2350;&#2366;&#2339;&#2366;&#2340;<br>
											<input type="radio" name="q16" value="Agree" required="required">&nbsp;Moderate&nbsp; /&#2350;&#2343;&#2381;&#2351;&#2350;&#2346;&#2381;&#2352;&#2350;&#2366;&#2339;&#2366;&#2340;  <br>
											<input type="radio" name="q16" value="Not Sure" required="required">&nbsp;Some what&nbsp; / &#2350;&#2366;&#2347;&#2325;&#2346;&#2381;&#2352;&#2350;&#2366;&#2339;&#2366;&#2340; <br>
											<input type="radio" name="q16" value="Disagree" required="required">&nbsp;Very little&nbsp;  /&#2325;&#2367;&#2352;&#2325;&#2379;&#2355; &#2346;&#2381;&#2352;&#2350;&#2366;&#2339;&#2366;&#2340;<br> 
											<input type="radio" name="q16" value="Strongly Disagree" required="required">&nbsp; Not at all&nbsp; / &#2325;&#2343;&#2368;&#2330; &#2344;&#2366;&#2361;&#2368; 
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											17. Teachers encourage you to participate in extracurricular activities.<span style="color:red">*</span> <br>
											&#2358;&#2367;&#2325;&#2381;&#2359;&#2325; &#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2352;&#2381;&#2341;&#2381;&#2351;&#2366;&#2344;&#2366;  &#2309;&#2349;&#2381;&#2351;&#2366;&#2360;&#2325;&#2381;&#2352;&#2350;&#2366; &#2357;&#2381;&#2351;&#2340;&#2367;&#2352;&#2367;&#2325;&#2381;&#2340;&#2330;&#2381;&#2351;&#2366; &#2313;&#2346;&#2325;&#2381;&#2352;&#2350;&#2366;&#2350;&#2343;&#2381;&#2351;&#2375; &#2360;&#2361;&#2349;&#2366;&#2327;&#2368; &#2361;&#2379;&#2339;&#2381;&#2351;&#2366;&#2360;&#2366;&#2336;&#2368; &#2346;&#2381;&#2352;&#2379;&#2340;&#2381;&#2360;&#2366;&#2361;&#2368;&#2340; &#2325;&#2352;&#2340;&#2366;&#2340; &#2325;&#2366;&#2351; ? 
											 <span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q17" value="Strongly Agree" required="required">&nbsp;Strongly agree&nbsp; /&#2346;&#2370;&#2352;&#2381;&#2339;&#2346;&#2339;&#2375;  &#2360;&#2361;&#2350;&#2340;<br> 
											<input type="radio" name="q17" value="Agree" required="required">&nbsp;Agree&nbsp; /&#2360;&#2361;&#2350;&#2340; <br>
											<input type="radio" name="q17" value="Not Sure" required="required">&nbsp;Neutral&nbsp; /&#2340;&#2335;&#2360;&#2381;&#2341;<br> 
											<input type="radio" name="q17" value="Disagree" required="required">&nbsp;Disagree&nbsp; /&#2309;&#2360;&#2361;&#2350;&#2340; <br>
											<input type="radio" name="q17" value="Strongly Disagree" required="required">&nbsp; Strongly disagree&nbsp; / &#2346;&#2370;&#2352;&#2381;&#2339;&#2346;&#2339;&#2375; &#2309;&#2360;&#2361;&#2350;&#2340;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											18. Efforts are made by the institute/teachers to inculcate soft skills, life skills and employability skills to make you ready for the world of work.<span style="color:red">*</span> <br>
											&#2325;&#2379;&#2339;&#2340;&#2381;&#2351;&#2366;&#2361;&#2368; &#2325;&#2366;&#2350;&#2366;&#2360;&#2366;&#2336;&#2368; &#2340;&#2351;&#2366;&#2352; &#2352;&#2366;&#2361;&#2339;&#2381;&#2351;&#2366;&#2360;&#2366;&#2336;&#2368; &#2360;&#2369;&#2354;&#2349; &#2325;&#2380;&#2358;&#2354;&#2381;&#2351;  , &#2332;&#2368;&#2357;&#2344;  &#2325;&#2380;&#2358;&#2354;&#2381;&#2351; , &#2310;&#2339;&#2367; &#2352;&#2379;&#2332;&#2327;&#2366;&#2352;  &#2325;&#2380;&#2358;&#2354;&#2381;&#2351;&#2351;&#2369;&#2325;&#2381;&#2340;  &#2309;&#2349;&#2381;&#2351;&#2366;&#2360;&#2366;&#2360;&#2366;&#2336;&#2368; &#2350;&#2361;&#2366;&#2357;&#2367;&#2342;&#2351;&#2366;&#2354;&#2351;&#2366;&#2340;&#2368;&#2354; &#2358;&#2367;&#2325;&#2381;&#2359;&#2325;&#2366;&#2325;&#2337;&#2370;&#2344; &#2346;&#2381;&#2352;&#2351;&#2340;&#2381;&#2344; &#2325;&#2375;&#2354;&#2375; &#2332;&#2366;&#2340;&#2366;&#2340; &#2325;&#2366;&#2351; ?
											<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q18" value="Strongly Agree" required="required">&nbsp;To a great extent&nbsp; / &#2350;&#2379;&#2336;&#2351;&#2366;&#2346;&#2381;&#2352;&#2350;&#2366;&#2339;&#2366;&#2340;<br> 
											<input type="radio" name="q18" value="Agree" required="required">&nbsp;Moderate&nbsp; /&#2350;&#2366;&#2343;&#2381;&#2351;&#2350; &#2346;&#2381;&#2352;&#2350;&#2366;&#2339;&#2366;&#2340; <br>
											<input type="radio" name="q18" value="Not Sure" required="required">&nbsp;Some what&nbsp; /&#2325;&#2366;&#2361;&#2368; &#2346;&#2381;&#2352;&#2350;&#2366;&#2339;&#2366;&#2340; <br>
											<input type="radio" name="q18" value="Disagree" required="required">&nbsp;Very little&nbsp; / &#2325;&#2350;&#2368; &#2346;&#2381;&#2352;&#2350;&#2366;&#2339;&#2366;&#2340;<br>
											<input type="radio" name="q18" value="Strongly Disagree" required="required">&nbsp; Not at all&nbsp; / &#2325;&#2343;&#2368;&#2330; &#2344;&#2366;&#2361;&#2368;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											19. What percentage of teachers use ICT tools such as LCD projector, Multimedia, etc. while teaching. <span style="color:red">*</span> <br>
											&#2350;&#2361;&#2366;&#2357;&#2367;&#2342;&#2351;&#2366;&#2354;&#2351;&#2366;&#2340;&#2368;&#2354; &#2325;&#2367;&#2340;&#2368; &#2335;&#2325;&#2381;&#2325;&#2375; &#2358;&#2367;&#2325;&#2381;&#2359;&#2325; &#2358;&#2367;&#2325;&#2357;&#2367;&#2340;&#2366;&#2344;&#2366; &#2319;&#2354;&#2360;&#2367;&#2337;&#2368; ,&#2346;&#2381;&#2352;&#2379;&#2332;&#2375;&#2325;&#2381;&#2335;&#2352; ,&#2350;&#2354;&#2381;&#2335;&#2367;&#2350;&#2368;&#2337;&#2367;&#2351;&#2366;  &#2311;&#2340;&#2381;&#2351;&#2366;&#2342;&#2368;&#2306;&#2330;&#2366; &#2357;&#2366;&#2346;&#2352; &#2325;&#2352;&#2340;&#2366;&#2340; <span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q19" value="Strongly Agree" required="required">&nbsp;Above 90%&nbsp;<br>
											<input type="radio" name="q19" value="Agree" required="required">&nbsp;70 - 89%&nbsp;<br>
											<input type="radio" name="q19" value="Not Sure" required="required">&nbsp;50 - 69%&nbsp;<br>
											<input type="radio" name="q19" value="Disagree" required="required">&nbsp;30 - 49%&nbsp;<br>
											<input type="radio" name="q19" value="Strongly Disagree" required="required">&nbsp; Below 29%&nbsp;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											20. The overall quality of the teaching-learning process in your institute is very good.<span style="color:red">*</span> <br> 
											&#2340;&#2369;&#2350;&#2330;&#2381;&#2351;&#2366; &#2360;&#2306;&#2360;&#2381;&#2341;&#2375;&#2340;&#2368;&#2354; /&#2325;&#2377;&#2354;&#2375;&#2332; &#2350;&#2343;&#2368;&#2354; &#2309;&#2343;&#2381;&#2351;&#2351;&#2344; &#2310;&#2339;&#2367; &#2309;&#2343;&#2381;&#2351;&#2366;&#2346;&#2344;&#2366;&#2330;&#2368; &#2327;&#2369;&#2339;&#2357;&#2340;&#2381;&#2340;&#2366; &#2330;&#2366;&#2306;&#2327;&#2354;&#2368; &#2310;&#2361;&#2375; <span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q20" value="Strongly Agree" required="required">&nbsp;Strongly agree&nbsp; /&#2346;&#2370;&#2352;&#2381;&#2339;&#2346;&#2339;&#2375;  &#2360;&#2361;&#2350;&#2340; <br>
											<input type="radio" name="q20" value="Agree" required="required">&nbsp;Agree&nbsp; /&#2360;&#2361;&#2350;&#2340; <br>
											<input type="radio" name="q20" value="Not Sure" required="required">&nbsp;Neutral&nbsp; /&#2340;&#2335;&#2360;&#2381;&#2341;<br> 
											<input type="radio" name="q20" value="Disagree" required="required">&nbsp;Disagree&nbsp; /&#2309;&#2360;&#2361;&#2350;&#2340; <br>
											<input type="radio" name="q20" value="Strongly Disagree" required="required">&nbsp; Strongly disagree&nbsp; / &#2346;&#2370;&#2352;&#2381;&#2339;&#2346;&#2339;&#2375; &#2309;&#2360;&#2361;&#2350;&#2340;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											21. Give  observations /suggestions to improve the overall teaching-learning experience in your institution.<span style="color:red">*</span> <br>
											&#2340;&#2369;&#2350;&#2330;&#2381;&#2351;&#2366; &#2350;&#2361;&#2366;&#2357;&#2367;&#2342;&#2351;&#2366;&#2354;&#2351;&#2366;&#2340;&#2368;&#2354; &#2309;&#2343;&#2381;&#2351;&#2351;&#2344; &#2310;&#2339;&#2367; &#2309;&#2343;&#2381;&#2351;&#2366;&#2346;&#2344; &#2351;&#2366;&#2350;&#2343;&#2381;&#2351;&#2375; &#2360;&#2369;&#2343;&#2366;&#2352;&#2339;&#2366; &#2325;&#2352;&#2339;&#2381;&#2351;&#2366;&#2360;&#2366;&#2336;&#2368; &#2360;&#2370;&#2330;&#2344;&#2366; / &#2344;&#2367;&#2352;&#2368;&#2325;&#2381;&#2359;&#2339;&#2375; &#2360;&#2369;&#2330;&#2357;&#2366;  
											<span style="color:red">*</span>:
										</p>
										<p style="font-weight: bold;">
											<textarea name="suggestions" rows="15" cols="30" required="required" style="width: 100%;height: 130px;"></textarea>
										</p>
										<hr style="border: 1px solid #55aadf">

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
