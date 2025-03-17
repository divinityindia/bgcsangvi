<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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


	<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.2/js/bootstrap.min.js'></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script>

	$( document ).ready(function() {

		if($('#result').val() == 'SUCCESS'){
			$("#CrSucc").click();
		}
		if($('#result').val() == 'ERROR'){
			alert("Something went wrong. Try again");
		}

	$('#interest_tabs').on('click', 'a[data-toggle="tab"]', function(e) {
	      e.preventDefault();

	      var $link = $(this);

	      if(!$link.parent().hasClass('active')) {

	        //remove active class from other tab-panes
	        $('.tab-content:not(.' + $link.attr('href').replace('#','') + ') .tab-pane').removeClass('active');
	        $('.nav-tabs>li').removeClass('active');

	        // click first submenu tab for active section
// 	        $('a[href="' + $link.attr('href') + '_all"][data-toggle="tab"]').click();


	        // activate tab-pane for active section
// 	        $('.tab-content.' + $link.attr('href').replace('#','') + ' .tab-pane:first').addClass('active');
// 	        $('.tab-pane:first').addClass('active');
	      }



	    });

	});




	</script>

<style>
	.asterisk{
		color:red;
	}
	.outerDiv{
		text-align: center;
	}
	.formDiv{
		text-align:left;
 		font-weight: bold;
		color:#000;
 		display:inline-block;
		word-spacing: 4px;
		padding:10px;
		//background: lightblue;
		border:1px solid #aaa;
		background: #8cd9b3;

	}
	.nav-tabs{
		padding-Top: 20px;
 		background: #00c0c0;
	}
	#tpDiv ul.nav{
		padding-Top: 0px;
 		background: #008080;//#aaa;
	}
	#tpDiv .nav-tabs>li.active>a{
		background: #00c0c0;
	}
	.nav>li>a{
		font-weight: bold;
		color:#fff;
	}
	.nav>li>a:HOVER {
		background: #00a0a0;
	}
	.tab-pane h3{
		color:brown;
	}
	.tab-content{
	z-index:999;
	}
	 .disDiv>.active  {
 		background-color: #e6fff9;
 		//margin-top: -30px;
 		padding:15px;
 		z-index:-1;
	}
	.second>li.active>a, .second>li.active>a:FOCUS{
		background-color: #e6fff9;
	}
	.disDiv>.active h3{
		text-decoration: underline;
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

	<div id="tpDiv">
	<ul class="nav nav-tabs" id="interest_tabs">
    <!--top level tabs-->
	  <li><a href="#student" data-toggle="tab">From Students</a></li>
	  <li><a href="#parants" data-toggle="tab">From Parents</a></li>
	  <li><a href="#employer" data-toggle="tab">From Employer</a></li>
	  <li><a href="#teacher" data-toggle="tab">From Teachers</a></li>
	</ul>
	</div>

<!--top level tab content-->
<div class="tab-content">
    <!--student tab menu-->
    <div id="student" class="tab-pane">
        <ul class="nav nav-tabs second" id="studentl_tabs">
            <li><a href="#student_college" data-toggle="tab">About College</a></li>
            <li><a href="#student_teaching" data-toggle="tab">About Teaching</a></li>
            <li><a href="#student_library" data-toggle="tab">About Library</a></li>
            <li><a href="#student_alumni" data-toggle="tab">About Alumni</a></li>
            <li><a href="#student_sports" data-toggle="tab">About Sports</a></li>
        </ul>
    </div>

    <!--parents tab menu-->
    <div id="parants" class="tab-pane">
        <ul class="nav nav-tabs" id="parants_tabs">
            <li><a href="#parants_college" data-toggle="tab">About College</a></li>
        </ul>
    </div>

    <!--employer tab menu-->
    <div id="employer" class="tab-pane">
        <ul class="nav nav-tabs" id="employer_tabs">
            <li><a href="#employer_employer" data-toggle="tab">About Employer</a></li>
        </ul>
    </div>

    <!--teacher tab menu-->
    <div id="teacher" class="tab-pane">
        <ul class="nav nav-tabs" id="teacher_tabs">
            <li><a href="#teacher_college" data-toggle="tab">About College</a></li>
        </ul>
    </div>

 </div>

    <!--Student tab content-->
    <div class="tab-content disDiv">
        <div id="student_college" class="tab-pane">

        	<center>
            <h3>Feedback from Students about College</h3>
			</center>
            <p>Dear Students,</p>
			<p>This form has been designed to seek feedback from you to strengthen the quality of teaching-learning environment, to provide best possible facilities and modern infrastructure. The information provided by you will be kept confidential.
			</p>
			<p><b>Directions:</b></p>
			<p>
			For each item please indicate your level of agreement with the following statements by selecting appropriate option.
            </p>

			<div class="outerDiv">
			<div class="formDiv" >
				<form action="FB_student_college" method="post">

				1. The office staff in the college is cooperative and helpful: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r1" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				2. The library staff is cooperative and helpful: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r2" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				3. Online educational resources are available and accessible in the library: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r3" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				4. Internet facility provided in the Library is satisfactory: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r4" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				5. The prescribed books / reading materials are available in the library: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r5" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				6. Equipment in the lab(s) is in good working condition: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r6" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				7. Results are displayed by the college: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r7" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				8. Separate common rooms for girls and boys are available: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r8" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				9. Toilets / washrooms are clean and properly maintained: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r9" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				10. The classrooms are clean and well maintained: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r10" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				11. The campus is green and eco-friendly: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r11" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				12. Clean drinking water is available in the college campus: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r12" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				13. The buildings / classrooms are accessible to disabled persons: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r13" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				14. The campus has adequate power supply: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r14" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				15. Our grievances are redressed / problems are solved well in time: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r15" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r15" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r15" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r15" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r15" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				16. The functioning of the placement cell in the college is satisfactory: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r16" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r16" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r16" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r16" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r16" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				Course <span class="asterisk">*</span>
					<br/>
				<input type="text" name="course" required class="form-control"/>
				<br/>
				Academic Year <span class="asterisk">*</span>
					<br/>
				<input type="text" name="academic_year" required class="form-control"/>
				<br/>
				Suggestions if any
					<br/>
				<textarea class="form-control"  name="suggestions" style="resize:none;"></textarea>

				<br/>
				<input type="submit" class="btn" value="Submit"/>

			</form>
			</div>
			</div>

        </div>
        <div id="student_teaching" class="tab-pane">

			<center>
            <h3>Feedback from Students about Teaching</h3>
			</center>
            <p>Dear Students,</p>
			<p>This form has been designed to seek feedback from you to strengthen the quality of teaching-learning environment, to provide best possible facilities and modern infrastructure. The information provided by you will be kept confidential.
			</p>
			<p><b>Directions:</b></p>
			<p>
			For each item please indicate your level of agreement with the following statements by selecting appropriate option.
            </p>

			<div class="outerDiv">
			<div class="formDiv" >
				<form action="FB_student_teaching" method="post">

				1. The entire syllabus is completed in time: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r1" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				2. The teachers are punctual and regular in taking lectures and practicals: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r2" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				3. The teachers come well prepared for the class: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r3" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				4. The teachers encourage participation and discussion in class: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r4" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				5. The teachers’ attitude towards the students is friendly &amp; helpful: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r5" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				6. Modern teaching aids, power point presentations, web-resources, etc. are used by the teachers while teaching: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r6" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				7. The teachers are available and accessible in the Department after lecture timings: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r7" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				8. Periodical assessments are conducted as per schedule: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r8" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				9. Attendance record of the students is maintained by the teachers: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r9" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				10. Regular and timely feedback is given on our performance: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r10" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				11. The evaluation process is fair and unbiased: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r11" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				12. The teachers guide the students for overall personality development of the students: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r12" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Not Sure"/> Not Sure	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				Course <span class="asterisk">*</span>
					<br/>
				<input type="text" name="course" required class="form-control"/>
				<br/>
				Academic Year <span class="asterisk">*</span>
					<br/>
				<input type="text" name="academic_year" required class="form-control"/>
				<br/>
				Suggestions if any
					<br/>
				<textarea class="form-control"  name="suggestions" style="resize:none;"></textarea>

				<br/>
				<input type="submit" class="btn" value="Submit"/>

			</form>
			</div>
			</div>



        </div>
        <div id="student_library" class="tab-pane">

			<center>
            <h3>About Library</h3>
            	<b>Comming Soon</b>
			</center>

        </div>
        <div id="student_alumni" class="tab-pane">

            <center>
            <h3>Feedback from Alumni</h3>
			</center>
            <p>Dear Alumnus,</p>
			<p>Thank you for considering Progressive Education Society’s, Modern College of Arts, Science and Commerce, Shivajinager, Pune 411005 as a source of your graduate / Post-graduate / doctoral studies. This form has been designed to seek suggestions or comments from you about the college.
			</p>


			<div class="outerDiv">
			<div class="formDiv" >
				<form action="FB_student_alumni" method="post">

				Name of the Alumnus: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t1" required class="form-control"/>
				<br/>
				Address of the Alumnus
					<br/>
				<textarea class="form-control"  name="t2" style="resize:none;"></textarea>
				<br/>
				Contact Number: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t3" required class="form-control"/>
				<br/>
				Email ID: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t4" required class="form-control"/>
				<br/>
				Name of the course completed: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t5" required class="form-control"/>
				<br/>
				Year of completion of course: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t6" required class="form-control"/>
				<br/>
				Present Occupation/ Designation <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t7" required class="form-control"/>


				1. How do you rate the courses that you have learnt in the college in relation to your current job / occupation? <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r1" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				2. Infrastructure and Lab facilities: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r2" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				3. Faculty: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r3" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				4.  Canteen Facilities: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r4" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				5. Library: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r5" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				6. Office Staff: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r6" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				7. Hostel Facilities: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r7" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				8. Educational Resources: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r8" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				9. Admission Procedure: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r9" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				10. Overall Rating of the College: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r10" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				11. Mention at least four points which make you feel proud to be associated with Modern College as Alumni. <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r11" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				12. In what way have the development activities organised by the College contributed to your overall development? <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r12" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				13. Do you have any grievances with the College?  <br/>
					A. As a student :<span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r13" value="Yes" required/> Yes &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="No"/> No	&nbsp;&nbsp;&nbsp;
					<br/>
					B. As a alumni : <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r14" value="Yes" required/> Yes &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="No"/> No	&nbsp;&nbsp;&nbsp;


				<br/>
				If the answer is 'Yes', please specify / indicate the grievance.
					<br/>
				<textarea class="form-control"  name="t8" style="resize:none;"></textarea>
				<br/>
				14. Are you a member of Alumni Association of our College?
					<br/>
				<textarea class="form-control"  name="t9" style="resize:none;"></textarea>
				<br/>
				If the answer is 'No' please state the reasons.
					<br/>
				<textarea class="form-control"  name="t10" style="resize:none;"></textarea>
				<br/>
				15. Any other suggestions / comments :
					<br/>
				<textarea class="form-control"  name="t11" style="resize:none;"></textarea>

				<br/>
				<input type="submit" class="btn" value="Submit"/>

			</form>
			</div>
			</div>

        </div>
        <div id="student_sports" class="tab-pane">


            <center>
            <h3>About Sports</h3>
            	<b>Comming Soon</b>
			</center>


        </div>
    </div>

    <!--parants tab content-->
    <div class="tab-content disDiv">
        <div id="parants_college" class="tab-pane">

			<center>
            <h3>Feedback from Parents</h3>
			</center>
            <p>Dear Parents,</p>
			<p>Progressive Education Society’s, Modern College of Arts, Science and Commerce was established in the year 1970. The college aims at the overall development of the student to become entrepreneurs and professionals in the respective disciplines. This form has been designed to seek feedback from parents to strengthen the quality teaching-learning environment in the college, to assess and to improve academic, non-academic, infrastructure facilities. the information provided by you will be kept confidential.
			</p>

			<div class="outerDiv">
			<div class="formDiv" >
				<form action="FB_parants_college" method="post">

				Name of the parent: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t1" required class="form-control"/>
				<br/>
				Contact Number: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t2" required class="form-control"/>
				<br/>
				Name of the Ward: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t3" required class="form-control"/>
				<br/>
				Name of the department: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t4" required class="form-control"/>
				<br/>
				Academic year: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t5" required class="form-control"/>
				<br/>
				Course of the Ward: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t6" required class="form-control"/>


				1. Admission procedure: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r1" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				2. Infrastructure and Lab facilities: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r2" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				3. Work Culture observed by you and your Ward: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r3" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				4.  Canteen Facilities: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r4" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				5. Library: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r5" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				6. Other facilities provided by the college: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r6" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				7. Sports and cultural activities: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r7" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				8. Student's counseling activities: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r8" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				9. Student's counseling and guidance: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r9" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				10. Use of Information and communication technology in the college: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r10" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				11. Academic Discipline (i.e timely conduct of lectures, practicals and related activities) observed by the college <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r11" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				12. Improvement in soft skills, knowledge, ethics, morality, observed by you in your ward while studying in college: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r12" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				13. Examination system adopted by the college: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r13" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				14. Evaluation and Feedback mechanism: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r14" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>

				15. Placements: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r15" value="Excellent" required/> Excellent &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r15" value="Very Good"/> Very Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r15" value="Good"/> Good	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r15" value="Average"/> Average	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r15" value="Poor"/> Poor	&nbsp;&nbsp;&nbsp;
				<br/><br/>



				<br/>
				Suggestions if any :
					<br/>
				<textarea class="form-control" name="t7" style="resize:none;"></textarea>

				<br/>
				<input type="submit" class="btn" value="Submit"/>

			</form>
			</div>
			</div>


        </div>
    </div>

    <!--employer tab content-->
    <div class="tab-content disDiv">
        <div id="employer_employer" class="tab-pane">


            <center>
            <h3>Feedback about the employee</h3>
			</center>


			<div class="outerDiv">
			<div class="formDiv" >
				<form action="FB_employer_employer" method="post">

				Name of the Firm/Company: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t1" required class="form-control"/>
				<br/>
				Address of the Employer:
					<br/>
				<textarea class="form-control" name="t2" style="resize:none;"></textarea>
				<br/>
				Contact details: <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t3" required class="form-control"/>
				<br/>
				Name and Designation of the Respondent : <span class="asterisk">*</span>
				<br/>
				<input type="text" name="t4" required class="form-control"/>
				<br/>

				1.  Ability to contribute to the goal of the organization: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r1" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				2. Planning and organization skills: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r2" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				3. Communication skills and Soft Skills: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r3" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				4. Obedience and relationship with Seniors: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r4" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;
				<br/><br>
				5. Leadership, Team spirit and Initiative: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r5" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				6.Relationship with peers / subordinates: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r6" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				7. Willingness to learn new techniques, adopt new ideas etc.: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r7" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				8. Ability to use workplace equipment: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r8" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				9. Ability to solve workplace problems: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r9" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				10.Innovativeness, creativity: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r10" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				11. Involvement in social activities: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r11" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				12. Simplicity and sense of belonging: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r12" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				13.Respect for values in life: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r13" value="Far from Satisfied" required/> Far from Satisfied &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Not Satisfied"/> Not Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Satisfied"/> Satisfied	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Happy"/> Happy	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Very Happy"/> Very Happy	&nbsp;&nbsp;&nbsp;
				<br/><br/>

				<br/>
				Suggestions if any :
					<br/>
				<textarea class="form-control" name="t5" style="resize:none;"></textarea>

				<br/>
				<input type="submit" class="btn" value="Submit"/>

			</form>
			</div>
			</div>


        </div>
    </div>

    <!--teacher tab content-->
    <div class="tab-content disDiv">
        <div id="teacher_college" class="tab-pane">

            <center>
            <h3>Feedback from Teachers</h3>
			</center>
			<p>This form is intended to collect information relating to your satisfaction towards the curriculum, teaching, learning, evaluation and infrastructure. The information provided by you will be kept confidential and will be used as important feedback for quality improvement of the programme of studies and the institution.
			</p>

			<p>
			For each item please indicate your level of agreement with the following statements by selecting appropriate option .
            </p>

			<div class="outerDiv">
			<div class="formDiv" >
				<form action="FB_teacher_college" method="post">

				1. The courses / syllabi taught by me have a good balance between theory and application: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r1" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r1" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				2. The objectives of the syllabi are well defined: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r2" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r2" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				3. The books/journals etc. prescribed / listed as reference materials are relevant, updated and cover the entire syllabi: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r3" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r3" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;

				<br/><br/>
				4.  The coures / syllabi of the subjects taught by me increased my interest, knowledge and perspective in the subject area: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r4" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r4" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				5. The college has given me full freedom to adopt new techniques / strategies of teaching such as group discussions, seminar presentations and learners' participation: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r5" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r5" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				6. I have the freedom to adopt new techniques / strategies of testing and assessment of students: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r6" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r6" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				7. Tests and examinations are conducted well in time with proper coverage of all units in the syllabus: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r7" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r7" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				8. The prescribed books are available in the Library in Sufficient numbers: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r8" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r8" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				9. The environment in the College is conducive to teaching and research: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r9" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r9" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				10. The administration is teacher friendly: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r10" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r10" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				11. The college provides adequate opportunities and support to faculty members for upgrading their skills and qualifications: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r11" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r11" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				12. ICT facilities in the college are adequate and satisfactory: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r12" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r12" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				13. Separate space in college Canteen is available for Teachers: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r13" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r13" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				14. Toilets / washrooms are clean and properly maintained: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r14" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r14" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;
				<br/><br/>
				15. The classrooms are clean and well maintained: <span class="asterisk">*</span>
					<br/>
					<input type="radio" name="r15" value="Strongly Disagree" required/> Strongly Disagree &nbsp;&nbsp;&nbsp;
					<input type="radio" name="r15" value="Disagree"/> Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r15" value="Neither Agree nor Disagree"/> Neither Agree nor Disagree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r15" value="Agree"/> Agree	&nbsp;&nbsp;&nbsp;
					<input type="radio" name="r15" value="Strongly Agree"/> Strongly Agree	&nbsp;&nbsp;&nbsp;


				<br/><br/>

				Suggestions if any
					<br/>
				<textarea class="form-control"  name="t1" style="resize:none;"></textarea>

				<br/>
				<input type="submit" class="btn" value="Submit"/>

			</form>
			</div>
			</div>


        </div>
    </div>






<br/>

</div>

<button type="button" id="CrSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>
			        	<h3 style="color:green">Feedback Submitted successfully</h3>
					<br/><br/>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn" data-dismiss="modal">   Close  </button>
		        </div>
		      </div>
		    </div>
		  </div>

<input type="hidden" value="${result}" id="result"/>
<c:remove var="result" scope="session"/>


	<jsp:include page="footer.jsp"></jsp:include>

<!-- 	JavaScript libs are placed at the end of the document so the pages load faster -->
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
