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
											<a href="GetInfra" ><li class="des">Infra. & Facility</li></a>
											<a href="Infrastructure.jsp"><li class="des active">Infrastructure</li></a>
											<a href="CommonFacilities.jsp"><li class="des">Common Facilities</li></a>
<!-- 											<a href="Sport.jsp"><li class="des">Sports</li></a> -->
											<a href="LaboratoryEquipments.jsp"><li class="des">Laboratory Equipments</li></a>
										</ul>
									</div>
								</div>
							</aside>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
						<div class="table-responsive">
						<h2 class="title_contanier" >Infrastructure</h2>
						 <hr style="border: 1px solid;">
								<div id="container1">
								  <div id="container2" >
								  <b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Infrastructure facilities</b>
								  	<table  style="font-family: sans-serif;font-size: 14px; color: black;width: 98%;">
											<thead>
											      <tr>
											          <th style="color: #003135; background: #fdd991;border:1px solid #003135; ">Sr.No.</th>
											          <th style="color: #003135; background: #fdd991;border:1px solid #003135; ">Class Room No.</th>
											          <th style="color: #003135; background: #fdd991;border:1px solid #003135; ">Class Room</th>
											      </tr>
											</thead>
											<tbody>
											       <tr>
											        <th colspan="3" style="color: white; background: #002e3b;border:1px solid #003135;text-align: center; ">
												     Ground Floor  
												    </th>
												   </tr>
											       <tr>
											       <td> 1</td><td>	G-1</td><td>	Chemistry</td></tr>
											       <tr>
											       <td>2	</td><td>G-2	</td><td>Physics</td></tr>
											       <tr>
											       <td>3	</td><td>G-3</td><td>	Physics</td></tr>
											       <tr>
											       <td>4	</td><td>G-4	</td><td>Rubber Technology</td></tr>
											       <tr>
											       <td>5	</td><td>G-5</td><td>	NCC</td></tr>
											       <tr>
											       <td>6	</td><td>G-6	</td><td>Arts Dept.</td></tr>
											       <tr>
											       <td>7	</td><td>G-7	</td><td>Instrumentation lab</td></tr>
											       <tr>
											       <td>8	</td><td>G-8	</td><td>Store room</td></tr>
											       <tr>
											       <td>9	</td><td>G-9	</td><td>English</td></tr>
											       <tr>
											       <td>10	</td><td>G-10	</td><td>Internet center</td></tr>
											       <tr>
											       <td>11	</td><td>G-11</td><td>	Library</td></tr>
											       
											       <tr>
											        <th colspan="3" style="color: white; background: #002e3b;border:1px solid #003135;text-align: center; ">
												     First Floor 
												    </th>
												   </tr>
												   <tr>
												    <td>1	</td><td>F-1</td><td>	Botany</td></tr>
												    <tr>
												    <td>2	</td><td>F-2	</td><td>Zoology</td></tr>
												    <tr>
												    <td>3	</td><td>F-3	</td><td>Class room</td></tr>
												    <tr>
												    <td>4	</td><td>F-4	</td><td>Mathematics & Statistics</td></tr>
												    <tr>
												    <td>5	</td><td>F-5</td><td>	NSS</td></tr>
												    <tr>
												    <td>6	</td><td>F-6	</td><td>Class room</td></tr>
												    <tr>
												    <td>7	</td><td>F-7	</td><td>Beauty Therapy& Aesthetic Laboratory</td></tr>
												    <tr>
												    <td>8	</td><td>F-8	</td><td>Store room</td></tr>
												    <tr>
												    <td>9	</td><td>F-9	</td><td>Ladies common room</td></tr>
												    <tr>
												    <td>10	</td><td>F-10	</td><td>NAAC room</td></tr>
												    <tr>
												    <td>11	</td><td>F-11	</td><td>Examination Centre</td></tr>
												    <tr>
												    <td>12	</td><td>F-12</td><td>	Record Room</td></tr>
												    <tr>
												    <td>13	</td><td>F-13	</td><td>Administrative Office</td></tr>
												    <tr>
												    <td>14	</td><td>F-14</td><td>	Principal Cabin</td></tr>
												    <tr>
												    <td>15	</td><td>F-15	</td><td>Seminar Hall</td></tr>
												    
											       <tr>
											        <th colspan="3" style="color: white; background: #002e3b;border:1px solid #003135;text-align: center; ">
												     Second Floor 
												    </th>
												   </tr>
												   <tr>
												   <td>1</td><td>	S-1	</td><td>Class Room</td></tr>
												   <tr>
												   <td>2	</td><td>S-2	</td><td>Class Room</td></tr>
												   <tr>
												   <td>3</td><td>	S-3</td><td>	Class Room</td></tr>
												   <tr>
												   <td>4</td><td>	S-4</td><td>	Class Room</td></tr>
												   <tr>
												   <td>5</td><td>	S-5</td><td>	Electronics Staff Room</td></tr>
												   <tr>
												   <td>6	</td><td>S-6</td><td>	Electronics Laboratory</td></tr>
												   <tr>
												   <td>7</td><td>	S-7</td><td>	Computer Laboratory</td></tr>
												   <tr>
												   <td>8	</td><td>S-8	</td><td>B.Voc(SD) Laboratory</td></tr>
												   <tr>
												   <td>9	</td><td>S-9	</td><td>Rest Room(Boys)</td></tr>
												   <tr>
												   <td>10	</td><td>S-10</td><td>	Drinking Water</td></tr>
												   <tr>
												   <td>11	</td><td>S-11</td><td>	Class Room</td></tr>
												   <tr>
												   <td>12	</td><td>S-12</td><td>	Economics Dept & PG Class Room</td></tr>
												   <tr>
												   <td>13	</td><td>S-13</td><td>	Class Room</td></tr>
												   <tr>
												   <td>14	</td><td>S-14</td><td>	Class Room</td></tr>
												   <tr>
												   <td>15	</td><td>S-15</td><td>	Class Room</td></tr>
												   <tr>
												   <td>16	</td><td>S-16</td><td>	Class Room</td></tr>
												   <tr>
												   <td>17	</td><td>S-17</td><td>	Class Room</td></tr>
												   <tr>
												   <td>18	</td><td>S-18</td><td>	Commerce Dept & PG Classroom</td></tr>
												   <tr>
											        <th colspan="3" style="color: white; background: #002e3b;border:1px solid #003135;text-align: center; ">
												    Third Floor 
												    </th>
												   </tr>
												   <tr>
												    <td>1	</td><td>BBA(CA)  Lab</td><td>	Lab</td></tr>
												    <tr>
												    <td>2	</td><td>T-1	</td><td>Rest Room</td></tr>
												    <tr>
												    <td>3	</td><td>T-2	</td><td>Class Room</td></tr>
												    <tr>
												    <td>4	</td><td>T-3	</td><td>Class Room</td></tr>
												    <tr>
												    <td>5	</td><td>T-4</td><td>	Class Room</td></tr>
												    <tr>
												    <td>6	</td><td>T-5	</td><td>Class Room</td></tr>
												    <tr>
												    <td>7	</td><td>T-6	</td><td>Class Room</td></tr>
												    <tr>
												    <td>8	</td><td>T-7	</td><td>Class Room</td></tr>
												    <tr>
												    <td>9	</td><td>T-8	</td><td>Class Room</td></tr>
												    <tr>
												    <td>10	</td><td>T-9	</td><td>Class Room</td></tr>
												    <tr>
												    <td>11	</td><td>T-10</td><td>	Guest Room</td></tr>
												    <tr>
												    <td>12	</td><td>B.Voc(BTA) </td><td>	Laboratory I</td></tr>
												    <tr>
												    <td>13	</td><td>B.Voc(BTA)</td><td> 	Laboratory II</td></tr>
												    <tr>
												    <td>14	</td><td>Open Space	</td><td>Open Space</td></tr>
												     <tr>
											        <th colspan="3" style="color: white; background: #002e3b;border:1px solid #003135;text-align: center; ">
												   PG Building  
												    </th>
												   </tr>
												   <tr>
												   <td>1</td><td>	1	</td><td>Biology Research Lab</td></tr>
												   <tr>
												   <td>2	</td><td>2	</td><td>Chemistry lab</td></tr>
												   <tr>
												   <td>3	</td><td>3	</td><td>Analytical Chemistry lab</td></tr>
												   <tr>
												   <td>	4	</td><td>4	</td><td>Physics Research lab</td></tr>
												   <tr>
												   <td>5</td><td>	5</td><td>	Lecture Hall</td></tr>
												   <tr>
												   <td>	6</td><td>	6</td><td>	Lecture Hall</td></tr>
												   <tr>
												   <td>7</td><td>	7</td><td>	Lecture Hall</td></tr>
												   <tr>
												   <td>8	</td><td>8	</td><td>Lecture Hall</td></tr>
												   <tr>
												   <td>9	</td><td>9,10</td><td>	Seminar Hall</td></tr>
												   <tr>
												   <td>10	</td><td>11</td><td>	Pantry</td></tr>
												   <tr>
												   <td>11	</td><td>12</td><td>	Guest room</td></tr>
												   <tr>
												   <td>12	</td><td>-	</td><td>Bathroom(Guest Room)</td></tr>
												   <tr>
												   <td>13</td><td>	-	</td><td>Poarch</td></tr>
												   <tr>
												   <td>14	</td><td>-	</td><td>Lawn</td></tr>
												   <tr>
												   <td>15	</td><td>-	</td><td> Back Space</td></tr>
												   <tr>
												   <td>16	</td><td>-	</td><td>Wash Room 1</td></tr>
												   <tr>
												   <td>17	</td><td>-	</td><td>Wash Room 2</td></tr>
												   <tr>
												   <td>18	</td><td>-	</td><td>Water Tank</td></tr>
												   <tr>
											        <th colspan="3" style="color: white; background: #002e3b;border:1px solid #003135;text-align: center; ">
												   Fashion Technology Building  
												    </th>
												   </tr>
												   <tr>
												   <td>1</td><td>-</td><td>	Entrance Lobby cum display area</td></tr>
												   <tr>
												   <td>2</td><td>-</td><td>	Illustration Laboratory</td></tr>
												   <tr>
												   <td>3</td><td>-</td><td>	HOD Cabin</td></tr>
												   <tr>
												   <td>4</td><td>-	</td><td>Staff Room</td></tr>
												   <tr>
												   <td>5</td><td>-</td><td>	 Pattern Making Lab</td></tr>
												   <tr>
												   <td>6</td><td>-</td><td>	Garment construction Lab</td></tr>
												   <tr>
												   <td>	7</td><td>-</td><td>	Trial Room</td></tr>
												   <tr>
												   <td>8</td><td>-</td><td>	Pantry</td></tr>
												   
												   
												   
											</tbody>
										</table> 
								     
<!-- 										<b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Infrastructure facilities</b> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">The college has adequate infrastructure facilities and resources to conduct the curricular, co-curricular, extra-curricular, and research activities. The development of the infrastructure is in pace with the academic development of the institution. The infrastructure is used to its optimum extent and all the students have an easy access to the available learning resources. As per need adequate infrastructure facilities are provided by the institution. Renovation of infrastructural facilities is done as and when required. </p> -->
<!-- 										<table width="100%" style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<tr> -->
<!-- 												<td>Lecture Halls</td><td>30</td><td>Library & Reading Rooms</td><td>03</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 												<td>Commerce Laboratory</td><td>01</td><td>Department Libraries</td><td>03</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 												<td>Science Laboratories</td><td>18</td><td>Conference hall </td><td>01</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 												<td>Virtual Learning Centre</td><td>02</td><td>Examination cell</td><td>01</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 												<td>Seminar Hall</td><td>01</td><td>Staff common Room</td><td>01</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 												<td>Common room for girl students</td><td>01</td><td>Boys room</td><td>01</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 												<td>Teaching Learning equipment</td><td>05</td><td>Zooplankton pond</td><td>01</td> -->
<!-- 											</tr> -->
<!-- 										</table> -->

<!-- 										<br/> -->
<!-- 										<b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Infrastructure facilities available for extra-curricular activities </b> -->
<!-- 										<ol> -->
<!-- 											<li style="font-family: sans-serif;font-size: 14px; color: black;">Seminar hall with facilities like public address system , LCD ,smart board .</li> -->
<!-- 											<li style="font-family: sans-serif;font-size: 14px; color: black;">Special room of 15 ft X 8 ft for rehearsals and administrative work.</li> -->
<!-- 											<li style="font-family: sans-serif;font-size: 14px; color: black;">28 Notice boards for display of literature and other exhibits</li> -->
<!-- 											<li style="font-family: sans-serif;font-size: 14px; color: black;">Audio and video systems</li> -->
<!-- 											<li style="font-family: sans-serif;font-size: 14px; color: black;">Televisions with DVD player</li> -->
<!-- 										</ol> -->


<!-- 										<b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Infrastructural facilities available for NSS </b> -->
<!-- 										<ol> -->
<!-- 											<li style="font-family: sans-serif;font-size: 14px; color: black;">Well furnished office of 21ft. X 8.4ft. for N.S.S. with a computer facility.</li> -->
<!-- 											<li style="font-family: sans-serif;font-size: 14px; color: black;">All necessary equipments, utensils, etc. for day to day work and special camps.</li> -->
<!-- 										</ol> -->

<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Infrastructure facilities available for Student welfare activities</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">Well furnished office of 21ft. X 8.4ft. area for Student Welfare.</p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Common Facilities available on the campus</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">IQAC Room – Well equipped IQAC room with Computer and internet facilities is available</p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 16px; color: #43577B;font-weight: bold;"><b>Staff room</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">A staff common room (covering 635 sq. ft. area) and separate staff room in every department with computers and net connectivity is provided. There are separate cabins for HODs with computer and internet facility. There is separate room for non-teaching staff.</p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Day care centre</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">Facility of day care centre is available with all necessary requirements.</p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Common room for students</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">Common room for girls of 500 sq. ft. area.</p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Rest rooms </b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">There are separate rest rooms for male and female students on each floor of the building.</p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Health centre</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">Separate health centre has been established.</p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Vehicle parking </b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">Spacious parking is available for students and staff members.</p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Canteen</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">The canteen caters to the various requirements of the staff and students. The canteen is conveniently located and provides a range of food items at affordable rates to students.</p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Telephone</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">The College has two telephone connections of BSNL. All departments, office, library, and canteen are connected with intercom.</p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Internet cafe</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">Computer and Internet facility is available free of charge for all students and staff  members.</p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Drinking water</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">Water cooler is installed on each floor for students. Purified water is provided in office and in the common staff room.</p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Recreational facilities </b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">LCD, TVs and DTH connections are available in the college. College has advanced public address system. </p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Sports and Games (Indoor and Outdoor) facilities</b></p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 15px;color: #43577B; font-weight: bold;">Indoor facilities:</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">College has a physical education centre, commonly referred as Gymkhana, which is renovated and modernized in the year 2008-09. Modern multigym 7 station facility is available for the students. In the gymkhana, one table of “table tennis” and four carom boards are placed with sufficient light arrangements. We have enough number of Chess- boards. Gymkhana is open for students between 08:00 a.m. to 06:00 p.m. </p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 15px;color: #43577B; font-weight: bold;">Outdoor Sports Facilities on the college campus</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">Volleyball Ground,<br/>Kho-Kho ground,<br/>Kabaddi Ground,<br/>Basketball Court,</p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 15px;color: #43577B; font-weight: bold;">Outdoor Sports Facilities on the Sanjay Kale playground of the PCMC</b></p> -->
<!-- 										<p style="font-family: sans-serif;font-size: 14px; color: black;">Football Ground,<br/>Cricket pitch,<br/>Handball Ground,<br/>Badminton court </p> -->
<!-- 										<p><b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">IT Infrastructure</b></p> -->

<!-- 										<table width="100%"> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;"> -->
<!-- 												<th>Sr No.</th><th>Name of Department</th><th>Number of computers</th><th>Number of printers</th><th>UPS</th><th>LCD</th><th>Scanner</th><th>Laptop</th> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>1</td>	<td>B.C.A</td>	<td>34</td>	<td>3</td>	<td>01 (5 KWT)</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>2</td>	<td>B C S</td>	<td>7</td>	<td>7</td>	<td>01 (15 KWT)</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>3</td>	<td>Botany</td>	<td>5</td>	<td>1</td>	<td>------</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>4</td>	<td>Chemistry</td><td>5</td>	<td>2</td>	<td>------</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>5</td>	<td>Economics</td>	<td>4</td>	<td>1</td>	<td>-------</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>6</td>	<td>Electronics</td>	<td>6</td>	<td>0</td>	<td>------</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>7</td>	<td>Examination</td>	<td>3</td>	<td>1</td>	<td>-------</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>8</td>	<td>Geography</td>	<td>10</td>	<td>1</td>	<td>-------</td>	<td>1</td>	<td>1</td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>9</td>	<td>Laboratory-19</td>	<td>21</td>	<td>1</td>	<td>----</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>10</td>	<td>Laboratory-20</td>	<td>21</td>	<td>1</td>	<td>----</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>11</td>	<td>Laboratory-18A</td>	<td>29</td>	<td>1</td>	<td>-----</td>	<td>1</td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>12</td>	<td>Laboratory-18B</td>	<td>34</td>	<td>1</td>	<td>1</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>13</td>	<td>Laboratory-21</td>	<td>17</td>	<td>1</td>	<td>-----</td>	<td>1</td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>14</td>	<td>Library</td>	<td>8</td>	<td>4</td>	<td>-----</td>		<td>1</td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>15</td>	<td>MCA(I)</td>	<td>21</td>	<td>4</td>	<td>01(5 KWT)</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>16</td>	<td>NAAC</td>	<td>1</td>	<td>1</td>	<td>01(5 KWT)</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>17</td>	<td>Office</td>	<td>14</td>	<td>6</td>	<td>-------</td>	<td>2</td>	<td>2</td>	<td>4</td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>18</td>	<td>Physics</td>	<td>6</td>	<td>1</td>	<td>-------</td>	<td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>19</td>	<td>Statistics</td>	<td>7</td>	<td>0</td>	<td>-----</td><td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>20</td>	<td>Virtual Class room</td>	<td>1</td>	<td>0</td>	<td>-----</td>	<td>1	</td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>21</td>	<td>Zoology</td>	<td>4</td><td>0</td>	<td>---</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>22</td>	<td>Common</td>	<td></td> <td></td>	<td>01(10KWT)</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black;"> -->
<!-- 											<td>23</td>	<td>Generator for College</td>	<td></td> <td></td>		<td>01(50 KWT)</td> <td></td> <td></td> <td></td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif;font-size: 14px; color: black; font-weight: bold;"> -->
<!-- 											<td> </td>	<td>TOTAL</td>	<td>258</td>	<td>37</td>	<td>9</td>	<td>6</td>	<td>4</td>	<td>4</td> -->
<!-- 											</tr> -->
<!-- 										</table> -->


<!-- 										<b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">Major equipments in various laboratories</b> -->
<!-- 										<table width="100%" style="font-family: sans-serif; font-size: 14px;color: black;"> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;"> -->
<!-- 												<th>Sr.No.</th><th>Name</th><th>Quantity</th><th>Amount in Rs.</th> -->
<!-- 											</tr> -->
<!-- 											<tr > -->
<!-- 											<td>1</td>	<td>Microtome</td>	<td>1</td>	<td>31700</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>2</td>	<td>Analytical Digital loading Electronic Balance (Shimadzu Japan)</td>	<td>1</td>	<td>48696</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>3</td>	<td>Electrophrosis unit</td>	<td>3</td>	<td>22000</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>4</td>	<td>Autoclave Vertical</td>	<td>1</td>	<td>24900</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>5</td>	<td>Kymograph Assembly Unit</td>	<td>3</td>	<td>38400</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>6</td>	<td>U.V. Spectrophoto meter</td>	<td>1</td>	<td>144145</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>7</td>	<td>UV Transilluminator</td>	<td>1</td>	<td>27900</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>8</td>	<td>DeepFreezer</td>	<td>1</td>	<td>25175</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>9</td>	<td>Streo Microscope</td>	<td>2</td>	<td>50500</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>10</td>	<td>MLX-TR Microscope</td>	<td>1</td>	<td>27114</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>11</td>	<td>HB Microscope</td>	<td>6</td>	<td>67199</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>12</td>	<td>Signal Generator</td>	<td>2</td>	<td>21200</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>13</td>	<td>GM Tube Apparatus</td>	<td>1</td>	<td>49163</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>14</td>	<td>Magnetic susceptibility apparatus</td>	<td>1</td>	<td>55000</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>15</td>	<td>Michelson Interferometer</td>	<td>1</td>	<td>27900</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>16</td>	<td>Michelson Interferometer</td>	<td>1</td>	<td>27900</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>17</td>	<td>Apparatus for Frank htz Exp. With Power supply</td>	<td>1</td>	<td>40000</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>18</td>	<td>Ultra Sonic Inter Fero Meter F-80</td>	<td>1</td>	<td>25500</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>19</td>	<td>Constant deviation Spectrometer with Prism</td>	<td>1</td>	<td>27000</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>20</td>	<td>HB Microscope (Complete Set)</td>	<td>10</td>	<td>111998</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>21</td>	<td>Craft's super Microtome Lipshaw type</td>	<td>1</td>	<td>31700</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>22</td>	<td>UV visibleSpectrophometer Single beam Systronics Type-119</td>	<td>1</td>	<td>133254</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>23</td>	<td>Spectrophometer UV visible Double beam Systronics Type-2202</td>	<td>1</td>	<td>175745</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>24</td>	<td>Spectrophometer visible Systronics Type-166</td>	<td>1</td>	<td>34592</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>25</td>	<td>Photoflurometer Systronics Type-152</td>	<td>1</td>	<td>31255</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>26</td>	<td>Flame Photometer Systronics Type-128</td>	<td>1</td>	<td>40710</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>27</td>	<td>Gas ChromatographSystronics Type-8606</td>	<td>1</td>	<td>306000</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>28</td>	<td>Exhaust Fan 18"HD (Almonard)</td>	<td>12</td>	<td>38015</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>29</td>	<td>Rota Vapours Vaccum Dist.</td>	<td>1</td>	<td>46800</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>30</td>	<td>Electronic Balance-citizen cy-220</td>	<td>1</td>	<td>24650</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>31</td>	<td>Karl fisher titration app.</td>	<td>1</td>	<td>21250</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>32</td>	<td>Polaroscane with printer interface</td>	<td>1</td>	<td>46900</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>33</td>	<td>Flame Photometer Microcontroller-base</td>	<td>1</td>	<td>41900</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>34</td>	<td>HPLC 9000 series</td>	<td>1</td>	<td>438000</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>35</td>	<td>Photoflurometer Digital</td>	<td>1</td>	<td>32858</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>36</td>	<td>Spectrophometer micro controller	<td>1</td>	<td>33568</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>37</td>	<td>Spectrophometer Elico UV visible</td>	<td>1</td>	<td>25350</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>38</td>	<td>Polarograph Elico</td>	<td>1</td>	<td>46600</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>39</td>	<td>Flame Photometer</td>	<td>1</td>	<td>35600</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>40</td>	<td>Electronic Balance</td>	<td>1</td>	<td>28560</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>41</td>	<td>Electronic Balance</td>	<td>1</td>	<td>33000</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>42</td>	<td>Spectrophometer Elico UV visible</td>	<td>1</td>	<td>25350</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>43</td>	<td>Weather Station</td>	<td>1</td>	<td>142000</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>44</td>	<td>Polarograph Elico</td>	<td>1</td>	<td>46600</td> -->
<!-- 											</tr> -->
<!-- 										</table> -->

<!-- 										<b style="font-family: sans-serif; font-size: 16px;color: #43577B; font-weight: bold;">About the Library - Establishment in June 1992</b><br/>Special Features. -->
<!-- 										<ol> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">Fully Computerized </li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">Book Issuing as per Barcode System </li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">Total Library Building area 3952 sq.ft.</li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">Separate Reading room facility for Boy’s/Girls Student & Staff. </li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">Reading room capacity for 200 students. </li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">Open access for all P.G. Students. </li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">Special Services to other books, Competitive and NET/SET Examinations through Reader club.</li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">Internet and OPAC facility. </li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">List of Added books to the Library are Circulated to Concern of Department.</li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">Bound volumes of periodicals and Journals available in the Library .</li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">News paper cutting of the college News .</li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">Album of photography of the celebration of the College.</li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">Classification of all books as for D.D.C classification system except Text books. </li> -->
<!-- 										</ol> -->

<!-- 										<b style="font-family: sans-serif; font-size: 16px;color: #43577B;font-weight: bold;">Total Book Collection as on 28/9/ 2013</b> -->
<!-- 										<table width="100%" style="font-family: sans-serif; font-size: 14px;color: black;"> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 16px;color: #43577B;font-weight: bold;"> -->
<!-- 												<th>Sr.No</th><th>Syllabus </th><th>Total Book</th> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 14px;color: black;"> -->
<!-- 												<td>1</td> <td>UG</td> <td>26696</td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 14px;color: black;"> -->
<!-- 												<td>2</td> <td>Pg</td> <td>7187</td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 14px;color: black;"> -->
<!-- 												<td>3</td> <td>BCS</td> <td>5351</td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 14px;color: black;"> -->
<!-- 												<td>4</td> <td>Vocational</td> <td>376</td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 14px;color: black;"> -->
<!-- 												<td>5</td> <td>UGC</td> <td>3931</td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 14px;color: black;"> -->
<!-- 												<td>6</td> <td>BBA BCA</td> <td>2972</td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 14px;color: black;"> -->
<!-- 												<td>7</td> <td>MRP</td> <td>522</td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 14px;color: black;"> -->
<!-- 												<td>8</td> <td>Donated</td> <td>1193</td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 14px;color: black;"> -->
<!-- 												<td>9</td> <td>Bookbank</td> <td>Bookbank</td> -->
<!-- 											</tr> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 14px;color: black; font-weight: bold;"> -->
<!-- 												<td></td> <td><b>Total</b></td> <td><b>48867</b></td> -->
<!-- 											</tr> -->
<!-- 										</table> -->

<!-- 										<p style="font-family: sans-serif; font-size: 14px;color: #43577B;;font-weight: bold;">Journals / Periodicals <b> 88</b></p> -->
<!-- 										<p style="font-family: sans-serif; font-size: 14px;color: #43577B;font-weight: bold;">C.D.s <b> 668</b></p> -->
<!-- 										<p style="font-family: sans-serif; font-size: 14px;color: #43577B;font-weight: bold;">Periodicals Bound Volume <b> 80</b></p> -->

<!-- 										<b style="font-family: sans-serif; font-size: 16px;color: #43577B;font-weight: bold;">Journals / periodicals</b> -->
<!-- 										<table width="100%" style="font-family: sans-serif; font-size: 14px;color: black;"> -->
<!-- 											<tr style="font-family: sans-serif; font-size: 16px;color: black;font-weight: bold;"> -->
<!-- 												<th>Sr No</th><th>Journals & Periodicals</th><th>Sr No</th><th>Journal & Periodical</th> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>1</td>	<td>Kavita stree</td>	<td>38</td>	<td>International Journal of Business Management</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>2</td>	<td>Panchdhara </td>	<td>39</td>	<td>International Journal of International Business & Finance </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>3</td>	<td>Marathi sanshodhan patrika </td>	<td>40</td>	<td>Journal of Pure & Applied Physics</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>4</td>	<td>Sahity </td>	<td>41</td>	<td>Parmana Journal of Physics </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>5</td>	<td>Aamchi streewani</td>	<td>42</td>	<td>Bulletin of material science </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>6</td>	<td>Pratishthan </td>	<td>43</td>	<td>Resonance </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>7</td>	<td>Sahityasuchi </td>	<td>44</td>	<td>Current Science </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>8</td>	<td>Naya Dnynoday </td>	<td>45</td>	<td>Indian Journal of Biochemistry & Biophysics</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>9</td>	<td>Akar</td>	<td>46</td>	<td>International Journal of & Applied Mathematics & Phyics</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>10</td>	<td>Sahity Amrut</td>	<td>47</td>	<td>Research Journal of chemistry & Chemistry Environment </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>11</td>	<td>Pahal </td>	<td>48</td>	<td>Analytical Chemisrtry : An Indian Journal </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>12</td>	<td>Anbhay </td>	<td>49</td>	<td>International Journal of Pure & Applied Physics</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>13</td>	<td>Rajbhasha Bharati</td>	<td>50</td>	<td>Chemical & Environmental Research Chemistry</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>14</td>	<td>Unhard Melody </td>	<td>51</td>	<td>Natural Product Redience </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>15</td>	<td>Asian Quarterly </td>	<td>52</td>	<td>Journal of Indian Chemical Society </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>16</td>	<td>Economic Challenger Economic</td>	<td>53</td>	<td>Indian Journal of Chemistry Sec- A</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>17</td>	<td>The Indian economic Journal </td>	<td>54</td>	<td>Indian Journal of Chemistry Sec- B</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>18</td>	<td>International Journal of Economic</td>	<td>55</td>	<td>Journal Of Environmental Biology</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>19</td>	<td>The Economics & Political Weekly </td>	<td>56</td>	<td>Journal Of Experimental Biology</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>20</td>	<td>International Studies </td>	<td>57</td>	<td>Journal Bio Science </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>21</td>	<td>The deccan Geographer </td>	<td>58</td>	<td>International Journal of Biotechnology Research</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>22</td>	<td>BaugaaolaXaasHa saMXaaoQak</td>	<td>59</td>	<td>Journal of Genetics </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>23</td>	<td>National Geography </td>	<td>60</td>	<td>International Journal Of Environment & Developmant</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>24</td>	<td>Journal of Indian Health Psychology </td>	<td>61</td>	<td>Journal of Science Technology and Management </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>25</td>	<td>Women's Era </td>	<td>62</td>	<td>Journal of Eco- Toxicology Environmental Monitoring</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>26</td>	<td>Child</td>	<td>63</td>	<td>Bioineolet</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>27</td>	<td>Psychology & Developing Society </td>	<td>64</td>	<td>Zoos Print Journal </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>28</td>	<td>Journal of Commerce & Management Thought </td>	<td>65</td>	<td>National Journal of Life Science </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>29</td>	<td>Vdyojak </td>	<td>66</td>	<td>ArogyaMitra </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>30</td>	<td>Yojana </td>	<td>67</td>	<td>Bona Mathematics </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>31</td>	<td>Yapari mitra </td>	<td>68</td>	<td>Indian Journal of Mathematics & Mathematics & Science </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>32</td>	<td>Dalal Street </td>	<td>69</td>	<td>Statistics & Management System </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>33</td>	<td>Management Research </td>	<td>70</td>	<td>International Journal of Computer Science </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>34</td>	<td>Accounting research </td>	<td>71</td>	<td>International Journal of Scientific Computing </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>35</td>	<td>Banking & Fianance </td>	<td>72</td>	<td>International Journal of Computing Intelligence Research & Application</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>36</td>	<td>Finance India </td>	<td>73</td>	<td>System Management </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>37</td>	<td>International Journal of Rural Development & Management Studies</td>	<td>74</td>	<td>P.C.Quest </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>75</td>	<td>Linux For you </td>	<td>82</td>	<td>Non Teaching Bulletin </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>76</td>	<td>Digit </td>	<td>83</td>	<td>Sport star </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>77</td>	<td>Developer 2.0</td>	<td>84</td>	<td>University News </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>78</td>	<td>Chip</td>	<td>85</td>	<td>Competition Success Review </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>79</td>	<td>Networking Computing </td>	<td>86</td>	<td>Employment News</td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>80</td>	<td>Electronic For you </td>	<td>87</td>	<td>Dnyangangotri </td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 											<td>81</td>	<td>Lokrajya </td>	<td>88</td>	<td>Andhasradha Nirmulan Varatapatra </td> -->
<!-- 											</tr> -->
<!-- 										</table> -->


<!-- 										<b style="font-family: sans-serif; font-size: 16px;color: #43577B;font-weight: bold;">On-line E-Journal Resources</b> -->
<!-- 										<ol> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">Inflibnet(Information & Library Network) http://nlist inflibnet.ac.in (more than 9700 E-books & 2500 E-Journals)</li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">DELNET(Developing Library Network) http://www.delnet.nic.in</li> -->
<!-- 											<li style="font-family: sans-serif; font-size: 14px;color: black;">C.S.I(Computer Society of India)</li> -->
<!-- 										</ol> -->

<!-- 										<b style="font-family: sans-serif; font-size: 16px;color: #43577B;font-weight: bold;">E-Resources</b> -->
<!-- 											<ul> -->
<!-- 												<li style="font-family: sans-serif; font-size: 14px;color: black;">CD'S</li> -->
<!-- 												<li style="font-family: sans-serif; font-size: 14px;color: black;"> E-Books </li> -->
<!-- 												<li style="font-family: sans-serif; font-size: 14px;color: black;">E-Journals</li> -->
<!-- 											</ul> -->


								  
								  
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