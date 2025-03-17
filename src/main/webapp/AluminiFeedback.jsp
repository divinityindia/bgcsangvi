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
											<a href="AluminiFeedback" ><li class="active des">Alumini Feedback</li></a>
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
									<h2 style="color: #43577B;font-weight: bold;">Alumini Feedback</h2>
									<hr>
									<c:if test="${erMsg != null }">
				<input type="text" value="${erMsg}"  class="input-field" disabled="disabled" style="width:100%;text-align: center;font-weight: bold;color: red;background:#ffecec;border:3px solid red"/>
			</c:if>
		<c:remove var="erMsg"/>
									<p style="font-weight: bold;">Dear Alumnus,<br>
                                     PDEA's BaburaojiGholap College, Sangvi, Pune-27. This form has been designed to seek suggestions or comments from you about the college.
                                     </p>
									
									<form action="AluminiFeedback" method="post" enctype="multipart/form-data">
									     <p style="font-weight: bold;">
											Name of Alumnus <span style="color:red">*</span> <br>
											&#2350;&#2366;&#2332;&#2368; &#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2352;&#2381;&#2341;&#2381;&#2351;&#2366;&#2330;&#2375; &#2360;&#2306;&#2346;&#2370;&#2352;&#2381;&#2339; &#2344;&#2366;&#2357;
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="alname"  required="required" placeholder="Enter Full Name ex. Mr. Vijay Baburao Kamat" style="border: none;border-bottom: 1px solid black;width: 100%;">
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											Photo <span style="color:red">*</span> <br>
											&#2347;&#2379;&#2335;&#2379;
										</p>
										<p style="font-weight: bold;">
											<input type="file" name="img"   required="required"  placeholder="Select Personal Photo" style="border: none;border-bottom: 1px solid black;width: 100%;">
										</p>
										<hr style="border: 1px solid #55aadf">
										 <p style="font-weight: bold;">
											Email Id <span style="color:red">*</span> <br>
											&#2312; &#2350;&#2375;&#2354;
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="emid"  required="required" placeholder="Enter Email Id" style="border: none;border-bottom: 1px solid black;width: 100%;">
										</p>
										<hr style="border: 1px solid #55aadf">
										 <p style="font-weight: bold;">
											Contact / Mobile No. <span style="color:red">*</span> <br>
											(&#2347;&#2379;&#2344; / &#2350;&#2379;&#2348;&#2366;&#2311;&#2354; &#2325;&#2381;&#2352;.)
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="mob"  required="required" placeholder="Enter Contact / Mobile Number" style="border: none;border-bottom: 1px solid black;width: 100%;">
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											 Gender / &#2354;&#2367;&#2306;&#2327;<span style="color:red">*</span>
										</p>
										<p style="font-weight: bold;">
										 <p style="font-weight: bold;">
											<input type="radio" name="g1" value="Male" required="required">&nbsp;Male&nbsp; /&#2346;&#2369;&#2352;&#2370;&#2359;
											<input type="radio" name="g1" value="Female" required="required">&nbsp;Female&nbsp; /&#2350;&#2361;&#2367;&#2354;&#2366;
											<input type="radio" name="g1" value="Transgender" required="required">&nbsp;Transgender&nbsp; /&#2340;&#2371;&#2340;&#2368;&#2351;&#2346;&#2306;&#2340;&#2368;
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											Age <span style="color:red">*</span> <br>
											&#2357;&#2351;
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="age"  required="required"  placeholder="Enter Age" style="border: none;border-bottom: 1px solid black;width: 100%;">
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											Completed Degree with courseunder Graduate/Post Graduate/Ph.D.  <span style="color:red">*</span> <br>
											&#2325;&#2379;&#2352;&#2381;&#2360;&#2360;&#2361; &#2346;&#2370;&#2352;&#2381;&#2339; &#2325;&#2375;&#2354;&#2375;&#2354;&#2368; &#2346;&#2342;&#2357;&#2368;
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="course"  required="required"  placeholder="Enter Course Name" style="border: none;border-bottom: 1px solid black;width: 100%;">
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											Completed Year <span style="color:red">*</span> <br>
											&#2346;&#2370;&#2352;&#2381;&#2339; &#2333;&#2366;&#2354;&#2375;&#2354;&#2375; &#2357;&#2352;&#2381;&#2359;
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="cyear"  required="required"  placeholder="Enter Course Completed Year" style="border: none;border-bottom: 1px solid black;width: 100%;">
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											Address  <span style="color:red">*</span> <br>
											&#2360;&#2306;&#2346;&#2370;&#2352;&#2381;&#2339; &#2346;&#2340;&#2381;&#2340;&#2366;
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="addr"  required="required"  placeholder="Enter Address" style="border: none;border-bottom: 1px solid black;width: 100%;">
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											Current Occupation   <span style="color:red">*</span> <br>
											&#2360;&#2343;&#2381;&#2351;&#2366;&#2330;&#2366; &#2357;&#2381;&#2351;&#2357;&#2360;&#2366;&#2351;
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="occp"  required="required"  placeholder="Enter Occupation" style="border: none;border-bottom: 1px solid black;width: 100%;">
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											Designation   <span style="color:red">*</span> <br>
											&#2343;&#2366;&#2352;&#2339; &#2325;&#2375;&#2354;&#2375;&#2354;&#2375; &#2346;&#2342;
											
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="deg"  required="required"  placeholder="Enter Designation"  style="border: none;border-bottom: 1px solid black;width: 100%;">
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											Place of Work   <span style="color:red">*</span> <br>
											&#2357;&#2381;&#2351;&#2366;&#2346;&#2366;&#2352;&#2366;&#2330;&#2375; &#2336;&#2367;&#2325;&#2366;&#2339;
										</p>
										<p style="font-weight: bold;">
											<input type="text" name="pwork"  required="required"  placeholder="Enter Place of Work" style="border: none;border-bottom: 1px solid black;width: 100%;">
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											Are you member of alumni association?<span style="color:red">*</span><br>
											&#2350;&#2361;&#2366;&#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2354;&#2351;&#2366;&#2340;&#2368;&#2354; &#2350;&#2366;&#2332;&#2368; &#2357;&#2367;&#2343;&#2381;&#2351;&#2366;&#2352;&#2381;&#2341;&#2368;&#2360;&#2306;&#2328;&#2366;&#2330;&#2375; &#2360;&#2349;&#2366;&#2360;&#2342;&#2310;&#2361;&#2366;&#2340; &#2325;&#2366;?
										</p>
										<p style="font-weight: bold;">
										 <p style="font-weight: bold;">
											<input type="radio" name="m1" value="Yes" required="required">&nbsp;Yes&nbsp; / &#2361;&#2379;&#2351; 
											<input type="radio" name="m1" value="No" required="required">&nbsp;No&nbsp; / &#2344;&#2366;&#2361;&#2368;
										</p>
										<hr style="border: 1px solid #55aadf">
										    <h4 style="text-align: center;"> Your Opinion About College 
										     <br>
										     &#2310;&#2346;&#2339;&#2366;&#2360; &#2357;&#2367;&#2344;&#2306;&#2340;&#2368; &#2310;&#2361;&#2375; &#2325;&#2367;, &#2350;&#2361;&#2366;&#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2354;&#2351;&#2366;&#2340;&#2368;&#2354; &#2326;&#2366;&#2354;&#2368;&#2354;&#2348;&#2366;&#2348;&#2368; &#2357;&#2367;&#2359;&#2351;&#2368;&#2310;&#2346;&#2354;&#2375; &#2350;&#2340; &#2344;&#2379;&#2306;&#2342;&#2357;&#2366; .
										     </h4>
										<p style="font-weight: bold;">
											 1.	Work Culture observed by you ?<span style="color:red">*</span> <br>
											 &#2325;&#2366;&#2350;&#2366;&#2330;&#2375; &#2357;&#2366;&#2340;&#2366;&#2357;&#2352;&#2339;
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q1" value="Excellent" required="required">&nbsp;Excellent<br>
											<input type="radio" name="q1" value="Very Good" required="required">&nbsp;Very Good<br>
											<input type="radio" name="q1" value="Good " required="required">&nbsp;Good <br>
											<input type="radio" name="q1" value="Satisfactory" required="required">&nbsp;Satisfactory<br>
											<input type="radio" name="q1" value="Poor" required="required">&nbsp;Poor
										</p>
										<hr style="border: 1px solid #55aadf">
										<p style="font-weight: bold;">
											 2.	Academic Discipline ?<span style="color:red">*</span> <br>
											 &#2358;&#2376;&#2325;&#2381;&#2359;&#2339;&#2367;&#2325; &#2358;&#2367;&#2360;&#2381;&#2340;
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q2" value="Excellent" required="required">&nbsp;Excellent<br>
											<input type="radio" name="q2" value="Very Good" required="required">&nbsp;Very Good<br>
											<input type="radio" name="q2" value="Good " required="required">&nbsp;Good <br>
											<input type="radio" name="q2" value="Satisfactory" required="required">&nbsp;Satisfactory<br>
											<input type="radio" name="q2" value="Poor" required="required">&nbsp;Poor
										</p>
										<hr style="border: 1px solid #55aadf">
										
										<p style="font-weight: bold;">
											 3.	Educational Resources  ?<span style="color:red">*</span> <br>
											 &#2358;&#2376;&#2325;&#2381;&#2359;&#2339;&#2367;&#2325; &#2360;&#2306;&#2360;&#2366;&#2343;&#2344;&#2375;
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q3" value="Excellent" required="required">&nbsp;Excellent<br>
											<input type="radio" name="q3" value="Very Good" required="required">&nbsp;Very Good<br>
											<input type="radio" name="q3" value="Good " required="required">&nbsp;Good <br>
											<input type="radio" name="q3" value="Satisfactory" required="required">&nbsp;Satisfactory<br>
											<input type="radio" name="q3" value="Poor" required="required">&nbsp;Poor
										</p>
										<hr style="border: 1px solid #55aadf">
										
										<p style="font-weight: bold;">
											 4.	Student's counseling and Guidance  ?<span style="color:red">*</span> <br>
											 &#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2352;&#2381;&#2341;&#2368; &#2360;&#2350;&#2369;&#2346;&#2342;&#2375;&#2358;&#2344;
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q4" value="Excellent" required="required">&nbsp;Excellent<br>
											<input type="radio" name="q4" value="Very Good" required="required">&nbsp;Very Good<br>
											<input type="radio" name="q4" value="Good " required="required">&nbsp;Good <br>
											<input type="radio" name="q4" value="Satisfactory" required="required">&nbsp;Satisfactory<br>
											<input type="radio" name="q4" value="Poor" required="required">&nbsp;Poor
										</p>
										<hr style="border: 1px solid #55aadf">
										
										<p style="font-weight: bold;">
											 5.	Teacher-Student Support System  ?<span style="color:red">*</span> <br>
											 &#2358;&#2367;&#2325;&#2381;&#2359;&#2325;-&#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2352;&#2381;&#2341;&#2368; &#2360;&#2350;&#2352;&#2381;&#2341;&#2344; &#2346;&#2381;&#2352;&#2339;&#2366;&#2354;&#2368;
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q5" value="Excellent" required="required">&nbsp;Excellent<br>
											<input type="radio" name="q5" value="Very Good" required="required">&nbsp;Very Good<br>
											<input type="radio" name="q5" value="Good " required="required">&nbsp;Good <br>
											<input type="radio" name="q5" value="Satisfactory" required="required">&nbsp;Satisfactory<br>
											<input type="radio" name="q5" value="Poor" required="required">&nbsp;Poor
										</p>
										<hr style="border: 1px solid #55aadf">
										
										<p style="font-weight: bold;">
											6.	Examination & Evaluation System ?<span style="color:red">*</span> <br>
											&#2346;&#2352;&#2368;&#2325;&#2381;&#2359;&#2366; &#2346;&#2342;&#2381;&#2343;&#2340;&#2368;
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q6" value="Excellent" required="required">&nbsp;Excellent<br>
											<input type="radio" name="q6" value="Very Good" required="required">&nbsp;Very Good<br>
											<input type="radio" name="q6" value="Good " required="required">&nbsp;Good <br>
											<input type="radio" name="q6" value="Satisfactory" required="required">&nbsp;Satisfactory<br>
											<input type="radio" name="q6" value="Poor" required="required">&nbsp;Poor
										</p>
										<hr style="border: 1px solid #55aadf">
										
										<p style="font-weight: bold;">
											 7.	Infrastructure facility ?<span style="color:red">*</span> <br>
											&#2349;&#2380;&#2340;&#2367;&#2325; &#2360;&#2369;&#2357;&#2367;&#2343;&#2366;
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q7" value="Excellent" required="required">&nbsp;Excellent<br>
											<input type="radio" name="q7" value="Very Good" required="required">&nbsp;Very Good<br>
											<input type="radio" name="q7" value="Good " required="required">&nbsp;Good <br>
											<input type="radio" name="q7" value="Satisfactory" required="required">&nbsp;Satisfactory<br>
											<input type="radio" name="q7" value="Poor" required="required">&nbsp;Poor
										</p>
										<hr style="border: 1px solid #55aadf">
										
										<p style="font-weight: bold;">
											8.	Library  ?<span style="color:red">*</span> <br>
											&#2327;&#2381;&#2352;&#2306;&#2341;&#2366;&#2354;&#2351;
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q8" value="Excellent" required="required">&nbsp;Excellent<br>
											<input type="radio" name="q8" value="Very Good" required="required">&nbsp;Very Good<br>
											<input type="radio" name="q8" value="Good " required="required">&nbsp;Good <br>
											<input type="radio" name="q8" value="Satisfactory" required="required">&nbsp;Satisfactory<br>
											<input type="radio" name="q8" value="Poor" required="required">&nbsp;Poor
										</p>
										<hr style="border: 1px solid #55aadf">
										
										<p style="font-weight: bold;">
											 9.	Sport & cultural activities  ?<span style="color:red">*</span> <br>
                                             &#2325;&#2381;&#2352;&#2368;&#2337;&#2366; &#2357; &#2360;&#2366;&#2306;&#2360;&#2381;&#2325;&#2371;&#2340;&#2367;&#2325;
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q9" value="Excellent" required="required">&nbsp;Excellent<br>
											<input type="radio" name="q9" value="Very Good" required="required">&nbsp;Very Good<br>
											<input type="radio" name="q9" value="Good " required="required">&nbsp;Good <br>
											<input type="radio" name="q9" value="Satisfactory" required="required">&nbsp;Satisfactory<br>
											<input type="radio" name="q9" value="Poor" required="required">&nbsp;Poor
										</p>
										<hr style="border: 1px solid #55aadf">
										
										<p style="font-weight: bold;">
											 10.	Use of Information Communication technology ?<span style="color:red">*</span> <br>
											 &#2350;&#2366;&#2361;&#2367;&#2340;&#2368; &#2340;&#2306;&#2340;&#2381;&#2352;&#2332;&#2381;&#2334;&#2366;&#2344;&#2366;&#2330;&#2366; &#2357;&#2366;&#2346;&#2352;
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q10" value="Excellent" required="required">&nbsp;Excellent<br>
											<input type="radio" name="q10" value="Very Good" required="required">&nbsp;Very Good<br>
											<input type="radio" name="q10" value="Good " required="required">&nbsp;Good <br>
											<input type="radio" name="q10" value="Satisfactory" required="required">&nbsp;Satisfactory<br>
											<input type="radio" name="q10" value="Poor" required="required">&nbsp;Poor
										</p>
										<hr style="border: 1px solid #55aadf">
										
										<p style="font-weight: bold;">
											 11.	Are you satisfied with quality education provided by the college ?<span style="color:red">*</span> <br>
											 &#2350;&#2361;&#2366;&#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2354;&#2351;&#2366;&#2330;&#2381;&#2351;&#2366; &#2327;&#2369;&#2339;&#2357;&#2340;&#2381;&#2340;&#2375; &#2357;&#2367;&#2359;&#2351;&#2368; &#2360;&#2350;&#2366;&#2343;&#2366;&#2344;&#2368;&#2310;&#2361;&#2375;&#2340; &#2325;&#2366; ?
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q11" value="Excellent" required="required">&nbsp;Excellent<br>
											<input type="radio" name="q11" value="Very Good" required="required">&nbsp;Very Good<br>
											<input type="radio" name="q11" value="Good " required="required">&nbsp;Good <br>
											<input type="radio" name="q11" value="Satisfactory" required="required">&nbsp;Satisfactory<br>
											<input type="radio" name="q11" value="Poor" required="required">&nbsp;Poor
										</p>
										<hr style="border: 1px solid #55aadf">
										
										<p style="font-weight: bold;">
											 12.	How do you rate the courses that you Have learnt in the college in relation to you current Job or Occupation ?<span style="color:red">*</span> <br>
											 &#2350;&#2361;&#2366;&#2357;&#2367;&#2342;&#2381;&#2351;&#2366;&#2354;&#2351;&#2366;&#2340;&#2370;&#2344; &#2346;&#2370;&#2352;&#2381;&#2339; &#2325;&#2375;&#2354;&#2375;&#2354;&#2366; &#2325;&#2379;&#2352;&#2381;&#2360; &#2340;&#2369;&#2350;&#2330;&#2381;&#2351;&#2366; &#2344;&#2380;&#2325;&#2352;&#2368; / &#2357;&#2381;&#2351;&#2357;&#2360;&#2366;&#2351;&#2366;&#2360;&#2366;&#2336;&#2368; &#2313;&#2346;&#2351;&#2369;&#2325;&#2381;&#2340; &#2310;&#2361;&#2375; &#2325;&#2366; ?
										</p>
										<p style="font-weight: bold;">
											<input type="radio" name="q12" value="Excellent" required="required">&nbsp;Excellent<br>
											<input type="radio" name="q12" value="Very Good" required="required">&nbsp;Very Good<br>
											<input type="radio" name="q12" value="Good " required="required">&nbsp;Good <br>
											<input type="radio" name="q12" value="Satisfactory" required="required">&nbsp;Satisfactory<br>
											<input type="radio" name="q12" value="Poor" required="required">&nbsp;Poor
										</p>
										<hr style="border: 1px solid #55aadf">
										
										
										<p style="font-weight: bold;">
											13. Give  observations /suggestions to improve the overall teaching-learning experience in your institution.<span style="color:red">*</span> <br>
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
