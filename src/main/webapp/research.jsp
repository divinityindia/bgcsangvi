

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
	<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel='stylesheet' id='camera-css'  href='assets/css/camera.css' type='text/css' media='all'>
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>



  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <c:forEach var="dtls" items="${dtl}" varStatus="row">
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
				  margin: 80px auto;
				  position: relative;
				  width: 500px;
				  height: 400px;
				  padding: 10px;
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
</c:forEach>

<style>

<style>
	.resp-tabs-container{
		color:#000;
	}
	.VerticalTab.tabs_ver_1 h2.title_contanier{
		color:brown;
	}
	.VerticalTab.tabs_ver_1 p{
		color:#000;
	}
</style>
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

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	
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


	 <div class="container" style="padding: 20px;">


<style>
	.table td{
		color:#000;
		text-align: left;
	}
</style>
<center><h1 style="color:blue;">Research</h1></center>
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
								<li class="tabs-2"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Research </span></li>
								<li class="tabs-3"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Research Committee</span></li>
								<li class="tabs-4"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Recognized as research centre of the University of Pune for the M.Phil and Ph.D. Programmes.</span></li>
								<li class="tabs-5"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text"> Recognized research guides for M.Phil/Ph.D.</span></li>
								<li class="tabs-6"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Organized International, National, State level Seminar / conference </span></li>
								<li class="tabs-7"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Ongoing major Research project last four year</span></li>
								<li class="tabs-8"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Completing major Research project last four year</span></li>
								<li class="tabs-9"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Ongoing Minor Research Projects</span></li>
								<li class="tabs-10"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text"> Completed Minor Research Projects last five years</span></li>
								<li class="tabs-11"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">  Number of papers published by faculty peer reviewed journals</span></li>
								<li class="tabs-12"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text"> Publications by the faculty </span></li>						
							    <li class="tabs-13"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text"> Chapter in Book : 39 chapter in books published by our faculty</span></li>
								<li class="tabs-14"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text"> Books Edited :07 Book edited by various department</span></li>
								<li class="tabs-15"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">  Books with ISBN/ISSN numbers with details of publishers</span></li>
								<li class="tabs-16"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">   Citation Index </span></li>
								<li class="tabs-17"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">  Impact factor : </span></li>						
							</ul>

							<div class="resp-tabs-container hor_1">
							<%-- <div class="fc-tab-1">
							  <h2 class="title_contanier">Research</h2>
							   <div class="container" style="height: 1500px;width:100%; overflow: scroll;">
								 <c:forEach var="dtls" items="${dtl}">
                                    <div style="">
                                        <h2 style="color: #43577B;">${dtls.deptname}</h2>
                                         
										  <div class="carousel slide" data-ride="carousel">
										   
										
										    <!-- Wrapper for slides -->
										     
										    <div class="carousel-inner" style="width: 100%; height: 250px;">
										    
										    
									          <c:forEach var="img" items="${dtls.imglist}" varStatus="row">
										         <c:if test="${row.count eq 1}">
										         <div class="active item" >
										           <img src="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/ResearchImg/${img.imgid}_${img.image}" style="width: 100%; height: 300px;"/> 
										        <!-- <div class="carousel-caption">
										          <h3>Los Angeles</h3>
										          <p>LA is always so much fun!</p>
										        </div> -->
										         </div>
										         </c:if>
										         
										         <c:if test="${row.count ne 1}">
										         <div class="item" style="width: 100%; height: 200px;">
										           <img src="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/ResearchImg/${img.imgid}_${img.image}" style="width: 100%; height: 300px;"/> 
										        <!-- <div class="carousel-caption">
										          <h3>Los Angeles</h3>
										          <p>LA is always so much fun!</p>
										        </div> -->
										         </div>
										         </c:if>
										     </c:forEach>
										    </div>
										    
										
										    
										  </div>
										  <div style="width: 100%;">
										    ${dtls.details}
										  </div>
									</div>
								 </c:forEach>
									
								</div> 
									
									
                                        <c:forEach var="dtls" items="${dtl}">
                                        <div>
                                              <h2 style="color: #43577B;">${dtls.deptname}</h2>
                                                <div id="slideshow">
                                                  <c:forEach var="img" items="${dtls.imglist}">
                                                  <div>
						                          <img src="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/ResearchImg/${img.imgid}_${img.image}"/> 
						                          </div>
						                          </c:forEach>
						                      </div>
                                              <div>
                                                   ${dtls.details}
                                              </div>
                                        </div>
                                        </c:forEach>
                                         
								</div> --%>

								<div class="fc-tab-2">
									<h2 class="title_contanier">Research</h2>

                                            <p><i><strong>Research</strong></i></p>
                                            <a href="http://www.fles.co.in" target="_blank">INTERNATIONAL CONFERENCE ON "FROINTIERS IN LIFE SCIENCES AND EARTH SCIENCES" - Click here for details</a>
                                            <br><br><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/research/dr._pimple_v.v_minor_reseach_project.pdf" target="_blank">MINOR RESEARCH PROJECT Of Dr. V. V. Pimple" - Click here for details</a>
                                            <br><br><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/research/dr-vmb-ugc-mrp.pdf">MINOR RESEARCH PROJECT ON "BIODIVERSITY OF ARACHNIDS WITH REFERENCE TO MITES" -Click here for details</a>
                                            <br><br><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/research/mrphypo.pdf">MINOR RESEARCH PROJECT ON "Hypoglycemic and antioxidant activities of some medicinal plants in Wistar albino rat" -Click here for details</a>
                                            <br><br><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/research/projectreport.pdf" target="_blank">MINOR RESEARCH PROJECT ON "Preparation of sintered pellets of ternary mixed metal sulphides of Cu, Sn, Cd, As, Sb and Bi and their use in PEC cells"-Click here for details</a>
                                             <br><br><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/research/kshirsagar.pdf">MINOR RESEARCH PROJECT ON "Production and Application of Rotifers in Aquaculture"-Click here for detail</a>
								</div>
									

								<div class="fc-tab-3">
									<h2 class="title_contanier">Research Committee </h2>

                                         <p><i><strong>1)FResearch Committee</strong></i></p>
										
										<p><i>Principal - Chairman
										<br>Head Economics Department - Coordinator
										<br>P.G In Charge Botany Department - Member
										<br>Head Hindi Department - Member
										<br>Head Geography Department - Member
										<br>P.G. In charge Zoology Department - Member
										</i></p>
								
								</div>
									

								<div class="fc-tab-4">
									<h2 class="title_contanier">Recognized as research centre of the University of Pune</h2>

                                         <p><i><strong>2)Recognized as research centre of the University of Pune for the M.Phil and Ph.D. Programmes.</strong></i></p>
										
										<p><i>*Research Centre in Economics
										 <br> *Research Centre in Geography
										 <br> *Research Centre in Zoology
										 <br> *Research Centre in Commerce
										 <br> *Research Centre in Chemistry
										 <br> *Research Centre in Botany
										</i></p>
										<p><i><strong>3)11 patents obtained</strong></i></p>
										<p><i><strong>4)Total number of students registered for Ph.D. 52</strong></i></p>
										<p><i><strong>5)Total number of Ph.D. Awarded 06</strong></i></p>
										<p><i><strong>6)Total number of Students registered for M.Phil 196</strong></i></p>
								        <p><i><strong>7)Total number of M. Phil awarded. 98</strong></i></p>
								</div>
									

								<div class="fc-tab-5">
									<h2 class="title_contanier">Recognized research guides for M.Phil/Ph.D.</h2>

                                         <p><i><strong>8)Recognized research guides for M.Phil/Ph.D.</strong></i></p>
                                              
                                         <table  width="100%">
										<!-- <colgroup> <col span="2" width="64"></col> </colgroup>  -->
										<tbody>
										<tr>
										<th>Sr.no</th>
										<th>Name of the guide</th>
										<th>Subject</th>
										<th>M.Phil-Registered</th>
										<th>M.Phil-Awarded</th>
										<th>Ph.D.-Registered</th>
										<th>Ph.D.-Awarded</th>
										</tr>
										<tr height="20">
										<td>1 </td>
										<td>Dr. Ghorpade N.L</td>
										<td>Commerce </td>
										<td>02</td>
										<td>03 </td>
										<td>07</td>
										<td>00</td>
										</tr>
										<tr height="20">
										<td>1 </td>
										<td>Dr. Ghorpade N.L</td>
										<td>Commerce </td>
										<td>02</td>
										<td>03 </td>
										<td>07</td>
										<td>00</td>
										</tr>
										<tr height="20">
										<td>2 </td>
										<td>Dr. Dangat N.R.</td>
										<td>Economics </td>
										<td>08</td>
										<td>29 </td>
										<td>08</td>
										<td>03</td>
										</tr>
										<tr height="20">
										<td>3 </td>
										<td>Dr. Salve T.N.</td>
										<td>Economics </td>
										<td>08</td>
										<td>00 </td>
										<td>--</td>
										<td>--</td>
										</tr>
										<tr height="20">
										<td>4 </td>
										<td>Dr. Shitole T.A</td>
										<td>Geography </td>
										<td>06</td>
										<td>00 </td>
										<td>01</td>
										<td>--</td>
										</tr>
										<tr height="20">
										<td>5 </td>
										<td>Dr. Shriram V.D.</td>
										<td>Botany </td>
										<td>00</td>
										<td>00 </td>
										<td>00</td>
										<td>00</td>
										</tr>
										<tr height="20">
										<td>6 </td>
										<td>Dr. Kshirsagar R.V.</td>
										<td>Zoology </td>
										<td>00</td>
										<td>00 </td>
										<td>00</td>
										<td>00</td>
										</tr>
										<tr height="20">
										<td>7 </td>
										<td>Dr.Savita Singh</td>
										<td>Hindi </td>
										<td>00</td>
										<td>00 </td>
										<td>00</td>
										<td>00</td>
										</tr>
										<tr height="20">
										<td>8 </td>
										<td>Dr.Khandagale A.J.</td>
										<td>Zoology </td>
										<td>00</td>
										<td>00 </td>
										<td>--</td>
										<td>--</td>
										</tr>
										<tr height="20">
										<td>9 </td>
										<td>Dr. Cholke P. B.</td>
										<td>Botany</td>
										<td>01</td>
										<td>Nill </td>
										<td>--</td>
										<td>--</td>
										</tr>
										<tr height="20">
										<td>10 </td>
										<td>Dr. Tambade P.S.</td>
										<td>Physics </td>
										<td>00</td>
										<td>00 </td>
										<td>03</td>
										<td>00</td>
										</tr>
										<tr height="20">
										<td> </td>
										<td></td>
										<td>Total </td>
										<td>25</td>
										<td>27 </td>
										<td>18</td>
										<td>02</td>
										</tr>
										</tbody>
										</table>
										
								</div>
								<div class="fc-tab-6">
									<h2 class="title_contanier">International,National,State level Seminar/conference </h2>

                                              <p><i><strong>Organized International, National, State level Seminar / conference -</strong></i></p>
                                               <table  width="100%">
										<!-- <colgroup> <col span="2" width="64"></col> </colgroup>  -->
										<tbody>
										<tr>
										<th>Sr.no</th>
										<th>Nature of the events</th>
										<th>Year</th>
										<th>Title</th>
										</tr>
										<tr height="20">
										<td>1 </td>
										<td>International Level Seminar</td>
										<td>2009-10</td>
										<td>Entrepreneurship for Younger Generation</td>
										</tr>
										<tr height="20">
										<td>2 </td>
										<td>National Level Seminar</td>
										<td>2009-10</td>
										<td>Disaster Managements</td>
										</tr>
										<tr height="20">
										<td>3</td>
										<td>State Level Seminar</td>
										<td>2009-10</td>
										<td>Women empowerment</td>
										</tr>
										<tr height="20">
										<td>4</td>
										<td>National Level Seminar</td>
										<td>2010-11</td>
										<td>Recent Trends in Network and Mobile Security</td>
										</tr>
										<tr height="20">
										<td>5</td>
										<td>State Level Seminar</td>
										<td>2010-11</td>
										<td>Advance technique in laboratory work</td>
										</tr>
										<tr height="20">
										<td>6</td>
										<td>University level Seminar</td>
										<td>2010-11</td>
										<td>1 Data Warehousing & Data Mining
										<br>2.Recent trends in Chemistry</td>
										</tr>
										<tr height="20">
										<td>7</td>
										<td>International conference</td>
										<td>2011-12</td>
										<td>Contemporary Issues in Management, Technology and Economics</td>
										</tr>
										<tr height="20">
										<td>8</td>
										<td>International conference</td>
										<td>2011-12</td>
										<td>Contemporary Issues in Management, Technology</td>
										</tr>
										<tr height="20">
										<td>9</td>
										<td>National Level Seminar</td>
										<td>2011-12</td>
										<td>Recent Advance in Chemical and Environmental Science</td>
										</tr>
										<tr height="20">
										<td>10</td>
										<td>State Level Seminar</td>
										<td>2011-12</td>
										<td>Cooperation, Management & Rural Development : Challenges and Opportunities</td>
										</tr>
										<tr height="20">
										<td>11</td>
										<td>State Level Seminar</td>
										<td>2011-12</td>
										<td>Yoga For Administrate Staff</td>
										</tr>
										<tr height="20">
										<td>12</td>
										<td>University level Seminar</td>
										<td>2011-12</td>
										<td>1.Female foeiticide manmade Disaster
										  <br>2. Budget -2012 Overview</td>
										</tr>
										</tbody>
										</table>
                                                 
								</div>
								<div class="fc-tab-7">
									<h2 class="title_contanier"> Ongoing major Research project last four year</h2>

                                              <p><i><strong> Ongoing major Research project last four year</strong></i></p>
										 <table  width="100%">
										<!-- <colgroup> <col span="2" width="64"></col> </colgroup>  -->
										<tbody>
										<tr>
										<th>Sr.no</th>
										<th>Principal investigator</th>
										<th>Duration Year From To</th>
										<th>Title of the project</th>
										<th>Name of the funding agency</th>
										<th>Total grant Sanctioned</th>
										<th>Total grant Received</th>
										<th>Total grant received till date</th>
										</tr>
										<tr height="20">
										<td>1</td>
										<td>Dr.N.L.Ghorpade</td>
										<td>1/3/2011 to 28/2/13</td>
										<td>A study of effect of Meditation on Stress for teenagers</td>
										<td>ICSSR</td>
										<td>3,76,400</td>
										<td>352000</td>
										<td>352000</td>
										</tr>
										<tr height="20">
										<td>2</td>
										<td>Dr.Shriram V. D.</td>
										<td>1/2/2011 to 31/1/2014</td>
										<td>Phytochemical investigations for 
										      bioactive molecules of Eulophia nuda L.,
										      its in vitro propagation and enhancement 
										      of anticancer molecules in callus and
										      suspension cultures by elicitors</td>
										<td>UGC</td>
										<td>9 51,000</td>
										<td>501800</td>
										<td>501800</td>
										</tr>
										<tr height="20">
										<td>3</td>
										<td>Dr. Cholke Privan</td>
										<td>15/9/12 to 15/9/14</td>
										<td>Assessment of aerobiocomponants at garbage depot 
										of moshi & sick building of pimpari chinchwad</td>
										<td>UGC</td>
										<td>836300</td>
										<td>836300</td>
										<td>479800</td>
										</tr>
										<tr height="20">
										<td colspan="7"></td>
										<td>1602800</td>
										</tr>
										</tbody>
										</table>
										
								</div>
								<div class="fc-tab-8">
									<h2 class="title_contanier"> Completing major Research project last four year</h2>

                                              <p><i><strong> Completing major Research project last four year</strong></i></p>
										 <table  width="100%">
										<!-- <colgroup> <col span="2" width="64"></col> </colgroup>  -->
										<tbody>
										<tr>
										<th>Sr.no</th>
										<th>Principal investigator</th>
										<th>Duration Year From To</th>
										<th>Title of the project</th>
										<th>Name of the funding agency</th>
										<th>Total grant Sanctioned</th>
										<th>Total grant Received</th>
										<th>Total grant received till date</th>
										</tr>
										<tr height="20">
										<td>1</td>
										<td>Dr.N.L.Ghorpade</td>
										<td>1/2/2010 to 31/1/2012</td>
										<td>Comparative study of comprehensive Rural Development 
										    in Pune & Ahmednagar District of Maharashtra</td>
										<td>UGC</td>
										<td>4, 25,200</td>
										<td>269200</td>
										<td>269200</td>
										</tr>
										</tbody>
										</table>
								</div>
								<div class="fc-tab-9">
									<h2 class="title_contanier">Ongoing Minor Research Projects</h2>

                                              <p><i><strong>Ongoing Minor Research Projects</strong></i></p>
										 <table  width="100%">
										<!-- <colgroup> <col span="2" width="64"></col> </colgroup>  -->
										<tbody>
										<tr>
										<th>Sr.no</th>
										<th>Principal investigator</th>
										<th>Department</th>
										<th>Funding Agency</th>
										<th>Duration</th>
										<th>Amount Sanction (Rs.)</th>
										</tr>
										<tr height="20">
										<td>1</td>
										<td>Dr P.B.Cholke</td>
										<td>Botany</td>
										<td>UGC</td>
										<td>Two year</td>
										<td>45,000</td>
										</tr>
										<tr height="20">
										<td>2</td>
										<td>Dr.T.N.Salve</td>
										<td>Economics</td>
										<td>BCUD</td>
										<td>Two year</td>
										<td>1,10,000</td>
										</tr>
										<tr height="20">
										<td>3</td>
										<td>Dr.S.A.Singh</td>
										<td>Hindi</td>
										<td>BCUD</td>
										<td>Two year</td>
										<td>75,000</td>
										</tr>
										<tr height="20">
										<td>4</td>
										<td>DrR.V.Kshirsagar</td>
										<td>Zoology</td>
										<td>UGC</td>
										<td>Two year</td>
										<td>95,000</td>
										</tr>
										<tr height="20">
										<td>5</td>
										<td>Dr. Ganpule S.P.</td>
										<td>English</td>
										<td>UGC</td>
										<td>Two year</td>
										<td>101000</td>
										</tr>
										<tr height="20">
										<td>6</td>
										<td>Dr. Ganpule S.P.</td>
										<td>English</td>
										<td>UGC</td>
										<td>Two year</td>
										<td>105000</td>
										</tr>
										<tr height="20">
										<td>7</td>
										<td>Prof. Satav G.P</td>
										<td>Commerce</td>
										<td>BCUD</td>
										<td>Two year</td>
										<td>50000</td>
										</tr><tr height="20">
										<td>8</td>
										<td>Dr.Shriram V. D.</td>
										<td>Botany</td>
										<td>UGC</td>
										<td>Two year</td>
										<td>145000</td>
										</tr>
										<tr height="20">
										<td>9</td>
										<td>Prof. Kotkar D P</td>
										<td>Commerce</td>
										<td>BCUD</td>
										<td>Two year</td>
										<td>50000</td>
										</tr>
										<tr height="20">
										<td>10</td>
										<td>Dr. More R.A</td>
										<td>Zoology</td>
										<td>UGC</td>
										<td>Two year</td>
										<td>160000</td>
										</tr>
										<tr height="20">
										<td>11</td>
										<td>Prof. Bansod Vaishali</td>
										<td>Botany</td>
										<td>UGC</td>
										<td>Two year</td>
										<td>55000</td>
										</tr>
										<tr height="20">
										<td>12</td>
										<td>Dr. Kulkarni Savita</td>
										<td>Geography</td>
										<td>BCUD</td>
										<td>Two year</td>
										<td>75,000</td>
										</tr>
										<tr height="20">
										<td colspan="5">Total</td>
										<td>956,000</td>
										</tr>
										
										</tbody>
										</table>
								</div>
								<div class="fc-tab-10">
									<h2 class="title_contanier">Completed Minor Research Projects last 5 years</h2>

                                              <p><i><strong>Completed Minor Research Projects last five years</strong></i></p>
										 <table  width="100%">
										<!-- <colgroup> <col span="2" width="64"></col> </colgroup>  -->
										<tbody>
										
											<tr>
											<th>Sr. No.</th>
											<th>Name of the Principle investigator</th>
											<th>Title of the Project</th>
											<th>Sanctioned Year	Faculty</th>
											<th>Amount Sanctioned Rs.</th>
											</tr>
											<tr height="20">
											<td>1</td>
											<td>Dr.Shitole T.A.</td>
											<td>Tourism Potential of Beach and dune tourism of Sindhudurg district of Maharashtra</td>
											<td>2007-09Science</td>
											<td>50,000</td>
											</tr>
											<tr height="20">
											<td>2</td>
											<td>Prof. Ekar Satish Uttamrao</td>
											<td>Synthesis & characterization of Zinc-Oxide quantum dots using electro chemical method</td>
											<td>2007-09Science</td>
											<td>1,00,000</td>
											</tr>
											<tr height="20">
											<td>3</td>
											<td>Dr. Pawar P.R.</td>
											<td>ivaVaanasaBaa matdarsaMGaacaI punar-canaa ek icaik%sak AByaasa</td>
											<td>2007-09MM&SS</td>
											<td>75,000</td>
											</tr>
											<tr height="20">
											<td>4</td>
											<td>Dr. Cholke Pravin Bhagwat</td>
											<td>Study of microbial Population in the amblent air of poultry shed</td>
											<td>2008-10 Science</td>
											<td>2,00,000</td>
											</tr>
											<tr height="20">
											<td>5</td>
											<td>Dr.P.S.Kadam</td>
											<td>Analysis of Mineral Element Concentration in Bryophytes of Malavali, Lonavala</td>
											<td>2008-10 Science</td>
											<td>50,000</td>
											</tr>
											<tr height="20">
											<td>7</td>
											<td>Prof. Dilip Pandit Kotkar</td>
											<td>A case Study of Udhyam Nagari Sahakari Patasanstha Maryadit Chinchwad, Pune-33</td>
											<td>2008-10 Commerce</td>
											<td>50,000</td>
											</tr>
											<tr height="20">
											<td>8</td>
											<td>Dr. Khandagle Abhay John</td>
											<td>Bioactivity of Some Plane oils against Mosquitoes</td>
											<td>2008-10Science</td>
											<td>20,00,00</td>
											</tr>
											<tr height="20">
											<td>9</td>
											<td>Prof. Mrs. Sujata Tapare</td>
											<td>Investigation of Computer based teaching methods in Mathematics for classroom teaching</td>
											<td>2008-10 Science</td>
											<td>1,00,000</td>
											</tr>
											<tr height="20">
											<td>10</td>
											<td>Prof. Yeole Deepak Rajaram</td>
											<td>Identifying and analyzing marital problems, their effects on the Society and finding their remedies</td>
											<td>2008-10 Science</td>
											<td>1,00,000</td>
											</tr>
											<tr height="20">
											<td>11</td>
											<td>Dr.Late S.S.</td>
											<td>maharaYT/atIla naagarI sahkarI ba^Mkacyaa samasyaaMcaa icaik%sak AByaasa ivaSaoYa saMdBa- puNao ijalha 1996-97 to 2007-08</td>
											<td>2008-10Commerce</td>
											<td>75,000</td>
											</tr>
											<tr height="20">
											<td>12</td>
											<td>Prof. Satav G.P.</td>
											<td>A Study of accounting and policy of distribution and recovery of loans (with Ref. to credit co-op. societies within PMC, Pune .</td>
											<td>2008-10Commerce</td>
											<td>50,000</td>
											</tr>
											<tr height="20">
											<td>13</td>
											<td>Dr.Tambade P.S.
											</td>
											<td>Investigation of computer based teaching methods in Physics for class room Teaching</td>
											<td>2007-09 Science</td>
											<td>10,0000</td>
											</tr>
											<tr height="20">
											<td>14</td>
											<td>Dr. Mahajan DM
											</td>
											<td>Botany</td>
											<td>2008-10 Science</td>
											<td>80,000</td>
											</tr>
											<tr height="20">
											<td>15</td>
											<td>Dr. Chaskar A.G</td>
											<td>English</td>
											<td>2007-10</td>
											<td>50,000</td>
											</tr>
											<tr height="20">
											<td>16</td>
											<td>Dr. Cholke Pravin B.</td>
											<td>Botany</td>
											<td>2008-10 Science</td>
											<td>45,000</td>
											</tr>
											<tr height="20">
											<td>17</td>
											<td>Dr. Cholke Pravin B.</td>
											<td>Botany</td>
											<td>2008-10 Science</td>
											<td>20,00,00</td>
											</tr>
											<tr height="20">
											<td>18</td>
											<td>Dr. Cholke Pravin B.</td>
											<td>Botany</td>
											<td>2008-10 Science</td>
											<td>65,000</td>
											</tr>
											<tr height="20">
											<td>19</td>
											<td>Dr.P.S.Kadam</td>
											<td>Botany</td>
											<td>2008-10</td>
											<td>50,000</td>
											</tr>
											<tr height="20">
											<td>20</td>
											<td>Dr. Shriram V.D.</td>
											<td>Plant tissue culture & anticancer activity studies in medicinally important threatened orchid Eulophia nuda L."</td>
											<td>2008-10 Science</td>
											<td>20,00,00</td>
											</tr>
											<tr height="20">
											<td>21</td>
											<td>Dr.Shinde D.R.</td>
											<td>Chemistry</td>
											<td>Science</td>
											<td>10,00,00</td>
											</tr>
											<tr height="20">
											<td>22</td>
											<td>Dr.R.V.Kshirsagar</td>
											<td>Study of Absortance Specta inconb</td>
											<td>Science</td>
											<td>50,000</td>
											</tr>
											<tr height="20">
											<td>23</td>
											<td>Dr.R.V.Kshirsagar</td>
											<td>Production and Application of Roifer in Appellative</td>
											<td>Science</td>
											<td>95,000</td>
											</tr>
											<tr height="20">
											<td>24</td>
											<td>Dr. A. J. Khandagale<</td>
											<td>Zoology</td>
											<td>Science</td>
											<td>35,000</td>
											</tr>
											<tr height="20">
											<td>25</td>
											<td>Dr.Khandagle Abhay J</td>
											<td>Zoology</td>
											<td>Science</td>
											<td>20,00,00</td>
											</tr>
											<tr height="20">
											<td>26</td>
											<td>Dr. Pardeshi S.S.</td>
											<td>Geography UGC</td>
											<td>Science</td>
											<td>70,000</td>
											</tr>
											<tr height="20">
											<td>27</td>
											<td>Dr. Rasale S.P.</td>
											<td>Exreaction and characterization of chemical constituents from the fruits of balanites aegyptice (L) del"</td>
											<td>Science</td>
											<td>11,00,00</td>
											</tr>
											<tr height="20">
											<td>28</td>
											<td>Smt Bansod V.M.</td>
											<td>Biodiversiy of Brachnid with reference to Mites"</td>
											<td>Science</td>
											<td>20,0,000
											</td>
											</tr>
										</tbody>
										</table>
								</div>
								<div class="fc-tab-11">
									<h2 class="title_contanier">papers published by faculty peer reviewed journals </h2>

                                              <p><i><strong>Number of papers published by faculty peer reviewed journals </strong></i></p>
										 <table  width="100%">
										
											<tbody>
											<tr>
											<th>Sr. no</th>
											<th>Name of the faculty</th>
											<th>National/International</th>
											</tr>
											<tr height="20">
											<td>1</td>
											<td>Botany</td>
											<td>11</td>
											</tr>
											<tr height="20">
											<td>
											</td>
											<td>Chemistry</td>
											<td>04</td>
											</tr>
											<tr height="20">
											<td>3</td>
											<td>Commerce</td>
											<td>38</td>
											</tr>
											<tr height="20">
											<td>4</td>
											<td>Comp sci</td>
											<td>02</td>
											</tr>
											<tr height="20">
											<td>5</td>
											<td>Economics</td>
											<td>04</td>
											</tr>
											<tr height="20">
											<td>6</td>
											<td>MCAs</td>
											<td>01</td>
											</tr>
											<tr height="20">
											<td>7</td>
											<td>English</td>
											<td>12</td>
											</tr>
											<tr height="20">
											<td>8</td>
											<td>Hindi</td>
											<td>01</td>
											</tr>
											<tr height="20">
											<td>9</td>
											<td>Mathematics</td>
											<td>04</td>
											</tr>
											<tr height="20">
											<td>10</td>
											<td>Physics</td>
											<td>09</td>
											</tr>
											<tr height="20">
											<td>12</td>
											<td>Zoology</td>
											<td>34</td>
											</tr>
											<tr height="20">
											<td>13</td>
											<td>Total</td>
											<td>120</td>
											</tr>
											</tbody>
											</table>
										
								</div>
								<div class="fc-tab-12">
									<h2 class="title_contanier">Publications by the faculty </h2>

                                              <p><i><strong>Publications by the faculty  </strong></i></p>
							  <table  width="100%">
										
									<tbody>
									<tr >
									<th> Sr. no</th>
									<th>Name of the faculty</th>
									<th>National</th>
									<th>International</th>
									</tr>
									<tr height="20">
									<td>1</td>
									<td>Botany</td>
									<td>05</td>
									<td>11</td>
									</tr>
									<tr height="20">
									<td>2</td>
									<td>Chemistry</td>
									<td>01</td>
									<td>02</td>
									</tr>
									<tr height="20">
									<td>3</td>
									<td>Commerce</td>
									<td>32</td>
									<td>38</td>
									</tr>
									<tr height="20">
									<td>4</td>
									<td>Computer Science</td>
									<td>01</td>
									<td>01</td>
									</tr>
									<tr height="20">
									<td>5</td>
									<td>Economics</td>
									<td>19</td>
									<td>8</td>
									</tr>
									<tr height="20">
									<td>6</td>
									<td>Electronics</td>
									<td>0</td>
									<td>02</td>
									</tr>
									<tr height="20">
									<td>7</td>
									<td>English</td>
									<td>5</td>
									<td>7</td>
									</tr>
									<tr height="20">
									<td>8</td>
									<td>Hindi</td>
									<td>4</td>
									<td>4</td>
									</tr>
									<tr height="20">
									<td>9</td>
									<td>Mathematics</td>
									<td>0</td>
									<td>4</td>
									</tr>
									<tr height="20">
									<td>10</td>
									<td>Physics</td>
									<td>2</td>
									<td>7</td>
									</tr>
									<tr height="20">
									<td>11</td>
									<td>Politics</td>
									<td>03</td>
									<td>00</td>
									</tr>
									<tr height="20"> 
									<td>12</td>
									<td>Zoology</td>
									<td>22</td>
									<td>12</td>
									</tr>
									<tr height="20">
									<td></td>
									<td>Total</td>
									<td>95</td>
									<td>97</td>
									</tr>
									</tbody>
									</table>	
								</div>
								
								<div class="fc-tab-13">
									<h2 class="title_contanier">Chapter in Book : 39 chapter in books</h2>

                                              <p><i><strong>Chapter in Book : 39 chapter in books published by our faculty </strong></i></p>
										 <table  width="100%">
										
									<tbody>
									<tr>
									<td> Sr. no</td>
									<td>Department</td>
									<td>No. of books</td>
									</tr>
									<tr height="20">
									<td>1</td>
									<td>Economics</td>
									<td>16</td>
									</tr>
									<tr height="20">
									<td>2</td>
									<td>Hindi</td>
									<td>02</td>
									</tr>
									<tr height="20">
									<td>3</td>
									<td>Marathi</td>
									<td>04</td>
									</tr>
									<tr height="20">
									<td>4</td>
									<td>Zoology</td>
									<td>15</td>
									</tr>
									<tr height="20">
									<td>5</td>
									<td>Geography</td>
									<td>02</td>
									</tr>
									
									<tr height="20">
									<td></td>
									<td>Total</td>
									<td>39</td>
								
									</tr>
									</tbody>
									</table>	
								</div>
								<div class="fc-tab-14">
									<h2 class="title_contanier">Books Edited :07 Book edited by various department</h2>

                                              <p><i><strong>Books Edited :07 Book edited by various department </strong></i></p>
										 <table  width="100%">
										
									<tbody>
									<tr>
									<td> Sr. no</td>
									<td>Department</td>
									<td>No. of books</td>
									</tr>
									<tr height="20">
									<td>1</td>
									<td>Hindi</td>
									<td>01</td>
									</tr>
									<tr height="20">
									<td>2</td>
									<td>Marathi</td>
									<td>01</td>
									</tr>
									<tr height="20">
									<td>3</td>
									<td>Zoology</td>
									<td>05</td>
									</tr>
									<tr height="20">
									<td></td>
									<td>Total</td>
									<td>07</td>
								
									</tr>
									</tbody>
									</table>	
								</div>
								<div class="fc-tab-15">
									<h2 class="title_contanier"> Books with ISBN/ISSN numbers with details of publishers</h2>

                                              <p><i><strong> Books with ISBN/ISSN numbers with details of publishers</strong></i></p>
										      <p><i>31 Books published by our faculty with ISBN number</i></p>
										 <table  width="100%">
										
									<tbody>
									<tr>
									<td> Sr. no</td>
									<td>Department</td>
									<td>No. of books</td>
									</tr>
									<tr height="20">
									<td>1</td>
									<td>Commerce</td>
									<td>07</td>
									</tr>
									<tr height="20">
									<td>2</td>
									<td>Economics</td>
									<td>11</td>
									</tr>
									<tr height="20">
									<td>3</td>
									<td>Hindi</td>
									<td>05</td>
									</tr>
									<tr height="20">
									<td>4</td>
									<td>Marathi</td>
									<td>03</td>
									</tr>
									<tr height="20">
									<td>5</td>
									<td>Physics</td>
									<td>05</td>
									</tr>
									<tr height="20">
									<td></td>
									<td>Total</td>
									<td>31</td>
								
									</tr>
									</tbody>
									</table>	
								</div>
								<div class="fc-tab-16">
									<h2 class="title_contanier">  Citation Index</h2>

                                              <p><i><strong>  Citation Index</strong></i></p>
										 <table  width="100%">
										
									<tbody>
									<tr>
									<td> Sr. no</td>
									<td>Department</td>
									<td>No. of books</td>
									</tr>
									<tr height="20">
									<td>1</td>
									<td>Botany</td>
									<td>0.66 & 6.2</td>
									</tr>
									<tr height="20">
									<td>2</td>
									<td>Mathematics</td>
									<td>2</td>
									</tr>
									<tr height="20">
									<td>3</td>
									<td>Physics</td>
									<td>5</td>
									</tr>
									<tr height="20">
									<td>4</td>
									<td>Zoology</td>
									<td>2</td>
									</tr>
									
									</tbody>
									</table>	
								</div>
								<div class="fc-tab-17">
									<h2 class="title_contanier"> Impact factor</h2>

                                              <p><i><strong> Impact factor</strong></i></p>
										 <table  width="100%">
										
									<tbody>
									<tr>
									<td> Sr. no</td>
									<td>Department</td>
									<td>No. of books</td>
									</tr>
									<tr height="20">
									<td>1</td>
									<td>Botany</td>
									<td>15.3 & 0.23</td>
									</tr>
									<tr height="20">
									<td>2</td>
									<td>Chemistry</td>
									<td>2.01</td>
									</tr>
									<tr height="20">
									<td>3</td>
									<td>Physics</td>
									<td>1</td>
									</tr>
									<tr height="20">
									<td>4</td>
									<td>Mathematics</td>
									<td>0.5</td>
									</tr>
									<tr height="20">
									<td>5</td>
									<td>Zoology</td>
									<td>2.149</td>
									</tr>
									
									</tbody>
									</table>	
								</div>
								</div>
							</div>
						</div>
						<!-- End .HorizontalTab -->

					</div>

				</div>

			</div>

		</section>	

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
	<script src="assets/js/owl.carousel.min.js"></script>


	<!-- this file for demo -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<!-- Copy & paste -->
	<script type="text/javascript" src="tab/js/easyResponsiveTabs.js"></script>
	<script type="text/javascript" src="tab/js/jquery.nicescroll.min.js"></script>
	<script type="text/javascript" src="tab/js/tabs.js"></script>

 

</body>
</html>

























































