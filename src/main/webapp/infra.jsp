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

<!-- 		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->

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



	<link rel="stylesheet" type="text/css" href="style/style.css" />

	<style>
		body{
			background: #fff;
		}
		.section-full{
			padding:0px;
		}
		.dark-bg{
			background-color: #fff;
		}
		.footerwidget {
			color:#000;
		}
		h2{
				    /* color: #ff6600!important;  */
				    color: #442056!important; 
				   font-weight: bold!important;
				  }
				  h1
				  {
				  color: #43577B!important;
				  font-weight: bold!important;
				  
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

	<br/>
  <div class="container">

<style>
	.resp-tabs-container{
		color:#000;
	}
	.VerticalTab.tabs_ver_1 h2.title_contanier{
		color:brown;
	}
	.VerticalTab.tabs_ver_1 p{
		color:#000;
</style>
<center><h1 style="color:blue;padding:5px;border:0px solid brown;">Infrastructure & Facilities</h1></center>
  <section class="section-full dark-bg">

			<div class="container">

				<div class="row">

					<div class="col-md-12">

						<!-- Begin .HorizontalTab -->
				<style>
						.VerticalTab.tabs_ver_6.resp-vtabs .resp-tabs-container{
						     width: 77%;
					        }
					
					        .VerticalTab.tabs_ver_6.resp-vtabs ul.resp-tabs-list{
						     width:19%
					        }
				    </style>
						<div class="VerticalTab  VerticalTab_6 tabs_ver_6">

							<ul class="resp-tabs-list hor_1">
								<li class="tabs-2"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Physical Facilities in college</span></li>
								<li class="tabs-3"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Infrastructure</span></li>
								<li class="tabs-4"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Common Facilities</span></li>
								<li class="tabs-5"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Sports</span></li>
								<li class="tabs-6"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Laboratory Equipments</span></li>
<!-- 								<li class="tabs-7"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Library</span></li> -->

							</ul>

							<div class="resp-tabs-container hor_1">


								<div class="fc-tab-2">
									<h2 class="title_contanier">Physical Facilities in college</h2>
										<br/>

										
											><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/infrastructure/physical_facilities_of_college.pdf" target="_blank" class="bg-success" style="font-size: 14px;">
												&#2349;&#2380;&#2340;&#2367;&#2325; &#2360;&#2369;&#2357;&#2367;&#2343;&#2366;&#2306;&#2330;&#2368; &#2313;&#2346;&#2354;&#2348;&#2381;&#2343;&#2340;&#2366;
											</a>
										<br>
										<br>
										<div class="row">
										<c:forEach var="cat" items="${dtl}">
									    <div class="col-sm-3" >
									    
									         <div style="background-color:#eefffa;padding: 2px;" class="e">
									         
									           <table style="border: 2px solid silver; " class="e">
									               
									                <tr><td style="border: none;"><img src="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/Infrapic/${cat.imgid}_${cat.image}" style="height: 170px;width: 100%;"></td></tr>
									                     
									                     <tr><td style="border: none;color: black;"><a href="InfraPicShow?imty=${cat.imgtype}">${cat.imgtype}</a></td></tr>
									           </table>
									           
									          </div>
									     
									    </div>
									    
									    </c:forEach><br>
									    </div>

								</div>

								<div class="fc-tab-3">
									<h2 class="title_contanier">Infrastructure</h2>

										<b>Infrastructure facilities</b>
										<p>The college has adequate infrastructure facilities and resources to conduct the curricular, co-curricular, extra-curricular, and research activities. The development of the infrastructure is in pace with the academic development of the institution. The infrastructure is used to its optimum extent and all the students have an easy access to the available learning resources. As per need adequate infrastructure facilities are provided by the institution. Renovation of infrastructural facilities is done as and when required. </p>
										<table width="100%">
											<tr>
												<td>Lecture Halls</td><td>30</td><td>Library & Reading Rooms</td><td>03</td>
											</tr>
											<tr>
												<td>Commerce Laboratory</td><td>01</td><td>Department Libraries</td><td>03</td>
											</tr>
											<tr>
												<td>Science Laboratories</td><td>18</td><td>Conference hall </td><td>01</td>
											</tr>
											<tr>
												<td>Virtual Learning Centre</td><td>02</td><td>Examination cell</td><td>01</td>
											</tr>
											<tr>
												<td>Seminar Hall</td><td>01</td><td>Staff common Room</td><td>01</td>
											</tr>
											<tr>
												<td>Common room for girl students</td><td>01</td><td>Boys room</td><td>01</td>
											</tr>
											<tr>
												<td>Teaching Learning equipment</td><td>05</td><td>Zooplankton pond</td><td>01</td>
											</tr>
										</table>

										<br/>
										<b>Infrastructure facilities available for extra-curricular activities </b>
										<ol>
											<li>Seminar hall with facilities like public address system , LCD ,smart board .</li>
											<li>Special room of 15 ft X 8 ft for rehearsals and administrative work.</li>
											<li>28 Notice boards for display of literature and other exhibits</li>
											<li>Audio and video systems</li>
											<li>Televisions with DVD player</li>
										</ol>


										<b>Infrastructural facilities available for NSS </b>
										<ol>
											<li>Well furnished office of 21ft. X 8.4ft. for N.S.S. with a computer facility.</li>
											<li>All necessary equipments, utensils, etc. for day to day work and special camps.</li>
										</ol>

										<p><b>Infrastructure facilities available for Student welfare activities</b></p>
										<p>Well furnished office of 21ft. X 8.4ft. area for Student Welfare.</p>
										<p><b>Common Facilities available on the campus</b></p>
										<p>IQAC Room – Well equipped IQAC room with Computer and internet facilities is available</p>
										<p><b>Staff room</b></p>
										<p>A staff common room (covering 635 sq. ft. area) and separate staff room in every department with computers and net connectivity is provided. There are separate cabins for HODs with computer and internet facility. There is separate room for non-teaching staff.</p>
										<p><b>Day care centre</b></p>
										<p>Facility of day care centre is available with all necessary requirements.</p>
										<p><b>Common room for students</b></p>
										<p>Common room for girls of 500 sq. ft. area.</p>
										<p><b>Rest rooms </b></p>
										<p>There are separate rest rooms for male and female students on each floor of the building.</p>
										<p><b>Health centre</b></p>
										<p>Separate health centre has been established.</p>
										<p><b>Vehicle parking </b></p>
										<p>Spacious parking is available for students and staff members.</p>
										<p><b>Canteen</b></p>
										<p>The canteen caters to the various requirements of the staff and students. The canteen is conveniently located and provides a range of food items at affordable rates to students.</p>
										<p><b>Telephone</b></p>
										<p>The College has two telephone connections of BSNL. All departments, office, library, and canteen are connected with intercom.</p>
										<p><b>Internet cafe</b></p>
										<p>Computer and Internet facility is available free of charge for all students and staff  members.</p>
										<p><b>Drinking water</b></p>
										<p>Water cooler is installed on each floor for students. Purified water is provided in office and in the common staff room.</p>
										<p><b>Recreational facilities </b></p>
										<p>LCD, TVs and DTH connections are available in the college. College has advanced public address system. </p>
										<p><b>Sports and Games (Indoor and Outdoor) facilities</b></p>
										<p><b>Indoor facilities:</b></p>
										<p>College has a physical education centre, commonly referred as Gymkhana, which is renovated and modernized in the year 2008-09. Modern multigym 7 station facility is available for the students. In the gymkhana, one table of “table tennis” and four carom boards are placed with sufficient light arrangements. We have enough number of Chess- boards. Gymkhana is open for students between 08:00 a.m. to 06:00 p.m. </p>
										<p><b>Outdoor Sports Facilities on the college campus</b></p>
										<p>Volleyball Ground,<br/>Kho-Kho ground,<br/>Kabaddi Ground,<br/>Basketball Court,</p>
										<p><b>Outdoor Sports Facilities on the Sanjay Kale playground of the PCMC</b></p>
										<p>Football Ground,<br/>Cricket pitch,<br/>Handball Ground,<br/>Badminton court </p>
										<p><b>IT Infrastructure</b></p>

										<table width="100%">
											<tr>
												<th>Sr No.</th><th>Name of Department</th><th>Number of computers</th><th>Number of printers</th><th>UPS</th><th>LCD</th><th>Scanner</th><th>Laptop</th>
											</tr>
											<tr>
											<td>1</td>	<td>B.C.A</td>	<td>34</td>	<td>3</td>	<td>01 (5 KWT)</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>2</td>	<td>B C S</td>	<td>7</td>	<td>7</td>	<td>01 (15 KWT)</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>3</td>	<td>Botany</td>	<td>5</td>	<td>1</td>	<td>------</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>4</td>	<td>Chemistry</td><td>5</td>	<td>2</td>	<td>------</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>5</td>	<td>Economics</td>	<td>4</td>	<td>1</td>	<td>-------</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>6</td>	<td>Electronics</td>	<td>6</td>	<td>0</td>	<td>------</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>7</td>	<td>Examination</td>	<td>3</td>	<td>1</td>	<td>-------</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>8</td>	<td>Geography</td>	<td>10</td>	<td>1</td>	<td>-------</td>	<td>1</td>	<td>1</td> <td></td>
											</tr>
											<tr>
											<td>9</td>	<td>Laboratory-19</td>	<td>21</td>	<td>1</td>	<td>----</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>10</td>	<td>Laboratory-20</td>	<td>21</td>	<td>1</td>	<td>----</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>11</td>	<td>Laboratory-18A</td>	<td>29</td>	<td>1</td>	<td>-----</td>	<td>1</td> <td></td> <td></td>
											</tr>
											<tr>
											<td>12</td>	<td>Laboratory-18B</td>	<td>34</td>	<td>1</td>	<td>1</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>13</td>	<td>Laboratory-21</td>	<td>17</td>	<td>1</td>	<td>-----</td>	<td>1</td> <td></td> <td></td>
											</tr>
											<tr>
											<td>14</td>	<td>Library</td>	<td>8</td>	<td>4</td>	<td>-----</td>		<td>1</td> <td></td> <td></td>
											</tr>
											<tr>
											<td>15</td>	<td>MCA(I)</td>	<td>21</td>	<td>4</td>	<td>01(5 KWT)</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>16</td>	<td>NAAC</td>	<td>1</td>	<td>1</td>	<td>01(5 KWT)</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>17</td>	<td>Office</td>	<td>14</td>	<td>6</td>	<td>-------</td>	<td>2</td>	<td>2</td>	<td>4</td>
											</tr>
											<tr>
											<td>18</td>	<td>Physics</td>	<td>6</td>	<td>1</td>	<td>-------</td>	<td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>19</td>	<td>Statistics</td>	<td>7</td>	<td>0</td>	<td>-----</td><td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>20</td>	<td>Virtual Class room</td>	<td>1</td>	<td>0</td>	<td>-----</td>	<td>1	</td> <td></td> <td></td>
											</tr>
											<tr>
											<td>21</td>	<td>Zoology</td>	<td>4</td><td>0</td>	<td>---</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>22</td>	<td>Common</td>	<td></td> <td></td>	<td>01(10KWT)</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td>23</td>	<td>Generator for College</td>	<td></td> <td></td>		<td>01(50 KWT)</td> <td></td> <td></td> <td></td>
											</tr>
											<tr>
											<td> </td>	<td>TOTAL</td>	<td>258</td>	<td>37</td>	<td>9</td>	<td>6</td>	<td>4</td>	<td>4</td>
											</tr>
										</table>


										<b>Major equipments in various laboratories</b>
										<table width="100%">
											<tr>
												<th>Sr.No.</th><th>Name</th><th>Quantity</th><th>Amount in Rs.</th>
											</tr>
											<tr>
											<td>1</td>	<td>Microtome</td>	<td>1</td>	<td>31700</td>
											</tr>
											<tr>
											<td>2</td>	<td>Analytical Digital loading Electronic Balance (Shimadzu Japan)</td>	<td>1</td>	<td>48696</td>
											</tr>
											<tr>
											<td>3</td>	<td>Electrophrosis unit</td>	<td>3</td>	<td>22000</td>
											</tr>
											<tr>
											<td>4</td>	<td>Autoclave Vertical</td>	<td>1</td>	<td>24900</td>
											</tr>
											<tr>
											<td>5</td>	<td>Kymograph Assembly Unit</td>	<td>3</td>	<td>38400</td>
											</tr>
											<tr>
											<td>6</td>	<td>U.V. Spectrophoto meter</td>	<td>1</td>	<td>144145</td>
											</tr>
											<tr>
											<td>7</td>	<td>UV Transilluminator</td>	<td>1</td>	<td>27900</td>
											</tr>
											<tr>
											<td>8</td>	<td>DeepFreezer</td>	<td>1</td>	<td>25175</td>
											</tr>
											<tr>
											<td>9</td>	<td>Streo Microscope</td>	<td>2</td>	<td>50500</td>
											</tr>
											<tr>
											<td>10</td>	<td>MLX-TR Microscope</td>	<td>1</td>	<td>27114</td>
											</tr>
											<tr>
											<td>11</td>	<td>HB Microscope</td>	<td>6</td>	<td>67199</td>
											</tr>
											<tr>
											<td>12</td>	<td>Signal Generator</td>	<td>2</td>	<td>21200</td>
											</tr>
											<tr>
											<td>13</td>	<td>GM Tube Apparatus</td>	<td>1</td>	<td>49163</td>
											</tr>
											<tr>
											<td>14</td>	<td>Magnetic susceptibility apparatus</td>	<td>1</td>	<td>55000</td>
											</tr>
											<tr>
											<td>15</td>	<td>Michelson Interferometer</td>	<td>1</td>	<td>27900</td>
											</tr>
											<tr>
											<td>16</td>	<td>Michelson Interferometer</td>	<td>1</td>	<td>27900</td>
											</tr>
											<tr>
											<td>17</td>	<td>Apparatus for Frank htz Exp. With Power supply</td>	<td>1</td>	<td>40000</td>
											</tr>
											<tr>
											<td>18</td>	<td>Ultra Sonic Inter Fero Meter F-80</td>	<td>1</td>	<td>25500</td>
											</tr>
											<tr>
											<td>19</td>	<td>Constant deviation Spectrometer with Prism</td>	<td>1</td>	<td>27000</td>
											</tr>
											<tr>
											<td>20</td>	<td>HB Microscope (Complete Set)</td>	<td>10</td>	<td>111998</td>
											</tr>
											<tr>
											<td>21</td>	<td>Craft's super Microtome Lipshaw type</td>	<td>1</td>	<td>31700</td>
											</tr>
											<tr>
											<td>22</td>	<td>UV visibleSpectrophometer Single beam Systronics Type-119</td>	<td>1</td>	<td>133254</td>
											</tr>
											<tr>
											<td>23</td>	<td>Spectrophometer UV visible Double beam Systronics Type-2202</td>	<td>1</td>	<td>175745</td>
											</tr>
											<tr>
											<td>24</td>	<td>Spectrophometer visible Systronics Type-166</td>	<td>1</td>	<td>34592</td>
											</tr>
											<tr>
											<td>25</td>	<td>Photoflurometer Systronics Type-152</td>	<td>1</td>	<td>31255</td>
											</tr>
											<tr>
											<td>26</td>	<td>Flame Photometer Systronics Type-128</td>	<td>1</td>	<td>40710</td>
											</tr>
											<tr>
											<td>27</td>	<td>Gas ChromatographSystronics Type-8606</td>	<td>1</td>	<td>306000</td>
											</tr>
											<tr>
											<td>28</td>	<td>Exhaust Fan 18"HD (Almonard)</td>	<td>12</td>	<td>38015</td>
											</tr>
											<tr>
											<td>29</td>	<td>Rota Vapours Vaccum Dist.</td>	<td>1</td>	<td>46800</td>
											</tr>
											<tr>
											<td>30</td>	<td>Electronic Balance-citizen cy-220</td>	<td>1</td>	<td>24650</td>
											</tr>
											<tr>
											<td>31</td>	<td>Karl fisher titration app.</td>	<td>1</td>	<td>21250</td>
											</tr>
											<tr>
											<td>32</td>	<td>Polaroscane with printer interface</td>	<td>1</td>	<td>46900</td>
											</tr>
											<tr>
											<td>33</td>	<td>Flame Photometer Microcontroller-base</td>	<td>1</td>	<td>41900</td>
											</tr>
											<tr>
											<td>34</td>	<td>HPLC 9000 series</td>	<td>1</td>	<td>438000</td>
											</tr>
											<tr>
											<td>35</td>	<td>Photoflurometer Digital</td>	<td>1</td>	<td>32858</td>
											</tr>
											<tr>
											<td>36</td>	<td>Spectrophometer micro controller	<td>1</td>	<td>33568</td>
											</tr>
											<tr>
											<td>37</td>	<td>Spectrophometer Elico UV visible</td>	<td>1</td>	<td>25350</td>
											</tr>
											<tr>
											<td>38</td>	<td>Polarograph Elico</td>	<td>1</td>	<td>46600</td>
											</tr>
											<tr>
											<td>39</td>	<td>Flame Photometer</td>	<td>1</td>	<td>35600</td>
											</tr>
											<tr>
											<td>40</td>	<td>Electronic Balance</td>	<td>1</td>	<td>28560</td>
											</tr>
											<tr>
											<td>41</td>	<td>Electronic Balance</td>	<td>1</td>	<td>33000</td>
											</tr>
											<tr>
											<td>42</td>	<td>Spectrophometer Elico UV visible</td>	<td>1</td>	<td>25350</td>
											</tr>
											<tr>
											<td>43</td>	<td>Weather Station</td>	<td>1</td>	<td>142000</td>
											</tr>
											<tr>
											<td>44</td>	<td>Polarograph Elico</td>	<td>1</td>	<td>46600</td>
											</tr>
										</table>

										<b>About the Library - Establishment in June 1992</b><br/>Special Features.
										<ol>
											<li>Fully Computerized </li>
											<li>Book Issuing as per Barcode System </li>
											<li>Total Library Building area 3952 sq.ft.</li>
											<li>Separate Reading room facility for Boy’s/Girls Student & Staff. </li>
											<li>Reading room capacity for 200 students. </li>
											<li>Open access for all P.G. Students. </li>
											<li>Special Services to other books, Competitive and NET/SET Examinations through Reader club.</li>
											<li>Internet and OPAC facility. </li>
											<li>List of Added books to the Library are Circulated to Concern of Department.</li>
											<li>Bound volumes of periodicals and Journals available in the Library .</li>
											<li>News paper cutting of the college News .</li>
											<li>Album of photography of the celebration of the College.</li>
											<li>Classification of all books as for D.D.C classification system except Text books. </li>
										</ol>

										<b>Total Book Collection as on 28/9/ 2013</b>
										<table width="100%">
											<tr>
												<th>Sr.No</th><th>Syllabus </th><th>Total Book</th>
											</tr>
											<tr>
												<td>1</td> <td>UG</td> <td>26696</td>
											</tr>
											<tr>
												<td>2</td> <td>Pg</td> <td>7187</td>
											</tr>
											<tr>
												<td>3</td> <td>BCS</td> <td>5351</td>
											</tr>
											<tr>
												<td>4</td> <td>Vocational</td> <td>376</td>
											</tr>
											<tr>
												<td>5</td> <td>UGC</td> <td>3931</td>
											</tr>
											<tr>
												<td>6</td> <td>BBA BCA</td> <td>2972</td>
											</tr>
											<tr>
												<td>7</td> <td>MRP</td> <td>522</td>
											</tr>
											<tr>
												<td>8</td> <td>Donated</td> <td>1193</td>
											</tr>
											<tr>
												<td>9</td> <td>Bookbank</td> <td>Bookbank</td>
											</tr>
											<tr>
												<td></td> <td><b>Total</b></td> <td><b>48867</b></td>
											</tr>
										</table>

										<p>Journals / Periodicals <b> 88</b></p>
										<p>C.D.s <b> 668</b></p>
										<p>Periodicals Bound Volume <b> 80</b></p>

										<b>Journals / periodicals</b>
										<table width="100%">
											<tr>
												<th>Sr No</th><th>Journals & Periodicals</th><th>Sr No</th><th>Journal & Periodical</th>
											</tr>
											<tr>
											<td>1</td>	<td>Kavita stree</td>	<td>38</td>	<td>International Journal of Business Management</td>
											</tr>
											<tr>
											<td>2</td>	<td>Panchdhara </td>	<td>39</td>	<td>International Journal of International Business & Finance </td>
											</tr>
											<tr>
											<td>3</td>	<td>Marathi sanshodhan patrika </td>	<td>40</td>	<td>Journal of Pure & Applied Physics</td>
											</tr>
											<tr>
											<td>4</td>	<td>Sahity </td>	<td>41</td>	<td>Parmana Journal of Physics </td>
											</tr>
											<tr>
											<td>5</td>	<td>Aamchi streewani</td>	<td>42</td>	<td>Bulletin of material science </td>
											</tr>
											<tr>
											<td>6</td>	<td>Pratishthan </td>	<td>43</td>	<td>Resonance </td>
											</tr>
											<tr>
											<td>7</td>	<td>Sahityasuchi </td>	<td>44</td>	<td>Current Science </td>
											</tr>
											<tr>
											<td>8</td>	<td>Naya Dnynoday </td>	<td>45</td>	<td>Indian Journal of Biochemistry & Biophysics</td>
											</tr>
											<tr>
											<td>9</td>	<td>Akar</td>	<td>46</td>	<td>International Journal of & Applied Mathematics & Phyics</td>
											</tr>
											<tr>
											<td>10</td>	<td>Sahity Amrut</td>	<td>47</td>	<td>Research Journal of chemistry & Chemistry Environment </td>
											</tr>
											<tr>
											<td>11</td>	<td>Pahal </td>	<td>48</td>	<td>Analytical Chemisrtry : An Indian Journal </td>
											</tr>
											<tr>
											<td>12</td>	<td>Anbhay </td>	<td>49</td>	<td>International Journal of Pure & Applied Physics</td>
											</tr>
											<tr>
											<td>13</td>	<td>Rajbhasha Bharati</td>	<td>50</td>	<td>Chemical & Environmental Research Chemistry</td>
											</tr>
											<tr>
											<td>14</td>	<td>Unhard Melody </td>	<td>51</td>	<td>Natural Product Redience </td>
											</tr>
											<tr>
											<td>15</td>	<td>Asian Quarterly </td>	<td>52</td>	<td>Journal of Indian Chemical Society </td>
											</tr>
											<tr>
											<td>16</td>	<td>Economic Challenger Economic</td>	<td>53</td>	<td>Indian Journal of Chemistry Sec- A</td>
											</tr>
											<tr>
											<td>17</td>	<td>The Indian economic Journal </td>	<td>54</td>	<td>Indian Journal of Chemistry Sec- B</td>
											</tr>
											<tr>
											<td>18</td>	<td>International Journal of Economic</td>	<td>55</td>	<td>Journal Of Environmental Biology</td>
											</tr>
											<tr>
											<td>19</td>	<td>The Economics & Political Weekly </td>	<td>56</td>	<td>Journal Of Experimental Biology</td>
											</tr>
											<tr>
											<td>20</td>	<td>International Studies </td>	<td>57</td>	<td>Journal Bio Science </td>
											</tr>
											<tr>
											<td>21</td>	<td>The deccan Geographer </td>	<td>58</td>	<td>International Journal of Biotechnology Research</td>
											</tr>
											<tr>
											<td>22</td>	<td>BaugaaolaXaasHa saMXaaoQak</td>	<td>59</td>	<td>Journal of Genetics </td>
											</tr>
											<tr>
											<td>23</td>	<td>National Geography </td>	<td>60</td>	<td>International Journal Of Environment & Developmant</td>
											</tr>
											<tr>
											<td>24</td>	<td>Journal of Indian Health Psychology </td>	<td>61</td>	<td>Journal of Science Technology and Management </td>
											</tr>
											<tr>
											<td>25</td>	<td>Women's Era </td>	<td>62</td>	<td>Journal of Eco- Toxicology Environmental Monitoring</td>
											</tr>
											<tr>
											<td>26</td>	<td>Child</td>	<td>63</td>	<td>Bioineolet</td>
											</tr>
											<tr>
											<td>27</td>	<td>Psychology & Developing Society </td>	<td>64</td>	<td>Zoos Print Journal </td>
											</tr>
											<tr>
											<td>28</td>	<td>Journal of Commerce & Management Thought </td>	<td>65</td>	<td>National Journal of Life Science </td>
											</tr>
											<tr>
											<td>29</td>	<td>Vdyojak </td>	<td>66</td>	<td>ArogyaMitra </td>
											</tr>
											<tr>
											<td>30</td>	<td>Yojana </td>	<td>67</td>	<td>Bona Mathematics </td>
											</tr>
											<tr>
											<td>31</td>	<td>Yapari mitra </td>	<td>68</td>	<td>Indian Journal of Mathematics & Mathematics & Science </td>
											</tr>
											<tr>
											<td>32</td>	<td>Dalal Street </td>	<td>69</td>	<td>Statistics & Management System </td>
											</tr>
											<tr>
											<td>33</td>	<td>Management Research </td>	<td>70</td>	<td>International Journal of Computer Science </td>
											</tr>
											<tr>
											<td>34</td>	<td>Accounting research </td>	<td>71</td>	<td>International Journal of Scientific Computing </td>
											</tr>
											<tr>
											<td>35</td>	<td>Banking & Fianance </td>	<td>72</td>	<td>International Journal of Computing Intelligence Research & Application</td>
											</tr>
											<tr>
											<td>36</td>	<td>Finance India </td>	<td>73</td>	<td>System Management </td>
											</tr>
											<tr>
											<td>37</td>	<td>International Journal of Rural Development & Management Studies</td>	<td>74</td>	<td>P.C.Quest </td>
											</tr>
											<tr>
											<td>75</td>	<td>Linux For you </td>	<td>82</td>	<td>Non Teaching Bulletin </td>
											</tr>
											<tr>
											<td>76</td>	<td>Digit </td>	<td>83</td>	<td>Sport star </td>
											</tr>
											<tr>
											<td>77</td>	<td>Developer 2.0</td>	<td>84</td>	<td>University News </td>
											</tr>
											<tr>
											<td>78</td>	<td>Chip</td>	<td>85</td>	<td>Competition Success Review </td>
											</tr>
											<tr>
											<td>79</td>	<td>Networking Computing </td>	<td>86</td>	<td>Employment News</td>
											</tr>
											<tr>
											<td>80</td>	<td>Electronic For you </td>	<td>87</td>	<td>Dnyangangotri </td>
											</tr>
											<tr>
											<td>81</td>	<td>Lokrajya </td>	<td>88</td>	<td>Andhasradha Nirmulan Varatapatra </td>
											</tr>
										</table>


										<b>On-line E-Journal Resources</b>
										<ol>
											<li>Inflibnet(Information & Library Network) http://nlist inflibnet.ac.in (more than 9700 E-books & 2500 E-Journals)</li>
											<li>DELNET(Developing Library Network) http://www.delnet.nic.in</li>
											<li>C.S.I(Computer Society of India)</li>
										</ol>

										<b>E-Resources</b>
											<ul>
												<li>CD'S</li>
												<li> E-Books </li>
												<li>E-Journals</li>
											</ul>


								</div>

								<div class="fc-tab-4">
									<h2 class="title_contanier">Common Facilities</h2>

									<p><strong>IQAC Room - </strong>Well equipped IQAC room with  Computer and internet facilities is available</p>
									<p><strong>Staff room</strong> <br /> A  staff common room (covering 635 sq. ft. area) and separate staff room in  every  department with  computers and net connectivity is provided. There are separate  cabins for HODs with  computer and internet facility. There is separate room for non-teaching staff.</p>
									<p><strong>Day  care centre</strong> <br /> Facility of day  care centre is available with all necessary requirements.</p>
									<p><strong>Common  room for students</strong> <br /> Common room for  girls of 500 sq. ft. area.</p>
									<p><strong>Rest  rooms </strong><br /> There are  separate rest rooms for male and female students on each floor of the building.</p>
									<p><strong>Health  centre</strong><strong> </strong><br /> Separate health  centre has been established.</p>
									<p><strong>Vehicle  parking </strong><br /> Spacious parking  is available for students and staff members.</p>
									<p><strong>Canteen</strong><br /> The canteen  caters to the various requirements of the staff and students. The canteen is  conveniently located and provides a range of food items at affordable rates to  students.</p>
									<p><strong>Telephone</strong><br /> The College has  two telephone connections of BSNL. All departments, office, library, and canteen are  connected with intercom.</p>
									<p><strong>Internet  cafe </strong><br /> Computer and  Internet facility is available free of charge for all students and staff members.</p>
									<p><strong>Drinking  water</strong><br /> Water cooler is  installed on each floor for students. Purified water is provided in office and in  the common staff room.</p>
									<p><strong>Recreational  facilities </strong><br /> LCD, TVs and DTH  connections are available in the college. College has  advanced public address system.</p>

								</div>

								<div class="fc-tab-5">
									<h2 class="title_contanier">Sports</h2>
									<p><strong>Indoor  facilities<br /> </strong>College  has a physical education centre, commonly referred as Gymkhana, which is  renovated and modernized in the year 2008-09. Modern multigym 7 station  facility is available for the students. In the gymkhana, one table of “table  tennis” and four carom boards are placed with sufficient light arrangements. We  have enough number of Chess- boards. Gymkhana is open for students between  08:00 a.m. to 06:00 p.m.</p>
									<p><strong>Outdoor  Sports Facilities on the college campus</strong><br /> Volleyball Ground,<br /> Kho-Kho ground,<br /> Kabaddi Ground,<br /> Basketball Court,</p>
									<p><strong>Outdoor  Sports Facilities on the Sanjay Kale playground of the PCMC</strong><br /> Football Ground,<br /> Cricket pitch,<br /> Handball Ground,<br /> Badminton court</p>
								</div>

								<div class="fc-tab-6">
									<h2 class="title_contanier">Laboratory Equipments</h2>
										<b>Major equipments in various laboratories</b>
										<table width="100%">
											<tr>
												<th>Sr.No. </th> <th>Name</th> <th>Quantity</th> <th>Amount in Rs.</th>
											</tr>
											<tr>
											<td>1</td>	<td>Microtome</td>	<td>1</td>	<td>31700</td>
											</tr>
											<tr>
											<td>2</td>	<td>Analytical Digital loading Electronic Balance (Shimadzu Japan)</td>	<td>1</td>	<td>48696</td>
											</tr>
											<tr>
											<td>3</td>	<td>Electrophrosis unit</td>	<td>3</td>	<td>22000</td>
											</tr>
											<tr>
											<td>4</td>	<td>Autoclave Vertical</td>	<td>1</td>	<td>24900</td>
											</tr>
											<tr>
											<td>5</td>	<td>Kymograph Assembly Unit</td>	<td>3</td>	<td>38400</td>
											</tr>
											<tr>
											<td>6</td>	<td>U.V. Spectrophoto meter</td>	<td>1</td>	<td>144145</td>
											</tr>
											<tr>
											<td>7</td>	<td>UV Transilluminator</td>	<td>1</td>	<td>27900</td>
											</tr>
											<tr>
											<td>8</td>	<td>DeepFreezer</td>	<td>1</td>	<td>25175</td>
											</tr>
											<tr>
											<td>9</td>	<td>Streo Microscope</td>	<td>2</td>	<td>50500</td>
											</tr>
											<tr>
											<td>10</td>	<td>MLX-TR Microscope</td>	<td>1</td>	<td>27114</td>
											</tr>
											<tr>
											<td>11</td>	<td>HB Microscope</td>	<td>6</td>	<td>67199</td>
											</tr>
											<tr>
											<td>12</td>	<td>Signal Generator</td>	<td>2</td>	<td>21200</td>
											</tr>
											<tr>
											<td>13</td>	<td>GM Tube Apparatus</td>	<td>1</td>	<td>49163</td>
											</tr>
											<tr>
											<td>14</td>	<td>Magnetic susceptibility apparatus</td>	<td>1</td>	<td>55000</td>
											</tr>
											<tr>
											<td>15</td>	<td>Michelson Interferometer</td>	<td>1</td>	<td>27900</td>
											</tr>
											<tr>
											<td>16</td>	<td>Michelson Interferometer</td>	<td>1</td>	<td>27900</td>
											</tr>
											<tr>
											<td>17</td>	<td>Apparatus for Frank htz Exp. With Power supply</td>	<td>1</td>	<td>40000</td>
											</tr>
											<tr>
											<td>18</td>	<td>Ultra Sonic Inter Fero Meter F-80</td>	<td>1</td>	<td>25500</td>
											</tr>
											<tr>
											<td>19</td>	<td>Constant deviation Spectrometer with Prism</td>	<td>1</td>	<td>27000</td>
											</tr>
											<tr>
											<td>20</td>	<td>HB Microscope (Complete Set)</td>	<td>10</td>	<td>111998</td>
											</tr>
											<tr>
											<td>21</td>	<td>Craft's super Microtome Lipshaw type</td>	<td>1</td>	<td>31700</td>
											</tr>
											<tr>
											<td>22</td>	<td>UV visibleSpectrophometer Single beam Systronics Type-119</td>	<td>1</td>	<td>133254</td>
											</tr>
											<tr>
											<td>23</td>	<td>Spectrophometer UV visible Double beam Systronics Type-2202</td>	<td>1</td>	<td>175745</td>
											</tr>
											<tr>
											<td>24</td>	<td>Spectrophometer visible  Systronics Type-166</td>	<td>1</td>	<td>34592</td>
											</tr>
											<tr>
											<td>25</td>	<td>Photoflurometer Systronics Type-152</td>	<td>1</td>	<td>31255</td>
											</tr>
											<tr>
											<td>26</td>	<td>Flame Photometer Systronics Type-128</td>	<td>1</td>	<td>40710</td>
											</tr>
											<tr>
											<td>27</td>	<td>Gas ChromatographSystronics    Type-8606</td>	<td>1</td>	<td>306000</td>
											</tr>
											<tr>
											<td>28</td>	<td>Exhaust Fan 18"HD (Almonard)</td>	<td>12</td>	<td>38015</td>
											</tr>
											<tr>
											<td>29</td>	<td>Rota Vapours Vaccum Dist.</td>	<td>1</td>	<td>46800</td>
											</tr>
											<tr>
											<td>30</td>	<td>Electronic Balance-citizen cy-220</td>	<td>1</td>	<td>24650</td>
											</tr>
											<tr>
											<td>31</td>	<td>Karl fisher titration app.</td>	<td>1</td>	<td>21250</td>
											</tr>
											<tr>
											<td>32</td>	<td>Polaroscane with printer interface</td>	<td>1</td>	<td>46900</td>
											</tr>
											<tr>
											<td>33</td>	<td>Flame Photometer Microcontroller-base</td>	<td>1</td>	<td>41900</td>
											</tr>
											<tr>
											<td>34</td>	<td>HPLC 9000 series</td>	<td>1</td>	<td>438000</td>
											</tr>
											<tr>
											<td>35</td>	<td>Photoflurometer Digital</td>	<td>1</td>	<td>32858</td>
											</tr>
											<tr>
											<td>36</td>	<td>Spectrophometer micro controller</td>	<td>1</td>	<td>33568</td>
											</tr>
											<tr>
											<td>37</td>	<td>Spectrophometer Elico UV visible</td>	<td>1</td>	<td>25350</td>
											</tr>
											<tr>
											<td>38</td>	<td>Polarograph Elico</td>	<td>1</td>	<td>46600</td>
											</tr>
											<tr>
											<td>39</td>	<td>Flame Photometer</td>	<td>1</td>	<td>35600</td>
											</tr>
											<tr>
											<td>40</td>	<td>Electronic Balance</td>	<td>1</td>	<td>28560</td>
											</tr>
											<tr>
											<td>41</td>	<td>Electronic Balance</td>	<td>1</td>	<td>33000</td>
											</tr>
											<tr>
											<td>42</td>	<td>Spectrophometer Elico UV visible</td>	<td>1</td>	<td>25350</td>
											</tr>
											<tr>
											<td>43</td>	<td>Weather Station</td>	<td>1</td>	<td>142000</td>
											</tr>
											<tr>
											<td>44</td>	<td>Polarograph Elico</td>	<td>1</td>	<td>46600</td>
											</tr>
										</table>
								</div>




							</div>
						</div>
						<!-- End .HorizontalTab -->

					</div>

				</div>

			</div>

		</section>




<br/>
	<br/>

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


	<!-- this file for demo -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<!-- Copy & paste -->
	<script type="text/javascript" src="tab/js/easyResponsiveTabs.js"></script>
	<script type="text/javascript" src="tab/js/jquery.nicescroll.min.js"></script>
	<script type="text/javascript" src="tab/js/tabs.js"></script>


</body>
</html>
