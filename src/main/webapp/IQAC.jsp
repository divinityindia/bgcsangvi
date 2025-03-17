<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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

<style>
	.resp-tabs-container{
		color:#000;
	}
	.VerticalTab.tabs_ver_1 h2.title_contanier{
		color:brown;
	}
	.footerwidget {
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
	<script>
	$( document ).ready(function() {

 	 	load_UGC_CPE();
		load_DBT_STAR();
		load_DST_FIST();
		/*  load_UGC_BSR();
		load_UGC_Community_College(); */
		load_Other_Doc();

	});
	</script>

	<script>
		 function load_UGC_CPE(){
			$.ajax({
				type:"GET",
				url:"GetAllIQACDoc",
				success:function(data){
					var sno= +0;
					$("#UGC_CPE").text("");
					for (var key in data.hm) {
						var file=data.hm[key][0];
						var name = file.substr(0, file.lastIndexOf('.'));
						($('#UGC_CPE_Div')).append('<tr><td>'+ key +'</td> <td> '
							+'<a href="NaacDocSrv?gid='+key+'&nm='+data.hm[key][0]+'" target="_blank">'+data.hm[key][0]+'</a>'
							+'</td></tr>');
			        }
				},
				error:function(data){}
			});
		} 

	 function load_DBT_STAR(){
			$.ajax({
				type:"GET",
				url:"GetAllIQACDoc?tbl=DBT_STAR",
				success:function(data){
					var sno= +0;
					$("#DBT_STAR").text("");
					for (var key in data.hm2) {
						($('#DBT_STAR')).append('<li type="disc">'
							+'<a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/IQAC/DBT_STAR/'+key+'/'+data.hm2[key][0]+'" target="_blank">'+data.hm2[key][0]+'</a>'
							+'</li>');
			        }
				},
				error:function(data){}
			});
		} 

		 function load_DST_FIST(){
			$.ajax({
				type:"GET",
				url:"GetAllAQAR?tbl=AQAR",
				success:function(data){
					var sno= +0;
 					//$("#Aqar").text("");
					for (var key in data.hm) { 
 						($('#Aqar')).append('<tr>'
 							+'<td style="text-align: center"><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/'+data.hm[key][0]+'" target="_blank">'+data.hm[key][0]+'</a>'
 							+'</td></tr>');
			        }
				},
				error:function(data){}
			});
		} 

		/* function load_UGC_BSR(){
			$.ajax({
				type:"GET",
				url:"GetAllIQACDoc?tbl=UGC_BSR",
				success:function(data){
					var sno= +0;
					$("#UGC_BSR").text("");
					for (var key in data.hm) {
						($('#UGC_BSR')).append('<li type="disc">'
							+'<a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/IQAC/UGC_BSR/'+key+'/'+data.hm[key][0]+'" target="_blank">'+data.hm[key][0]+'</a>'
							+'</li>');
			        }
				},
				error:function(data){}
			});
		} */

		/* function load_UGC_Community_College(){
			$.ajax({
				type:"GET",
				url:"GetAllIQACDoc?tbl=UGC_Community_College",
				success:function(data){
					var sno= +0;
					$("#UGC_Community_College").text("");
					for (var key in data.hm) {
						($('#UGC_Community_College')).append('<li type="disc">'
							+'<a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/IQAC/UGC_Community_College/'+key+'/'+data.hm[key][0]+'" target="_blank">'+data.hm[key][0]+'</a>'
							+'</li>');
			        }
				},
				error:function(data){}
			});
		} */

		function load_Other_Doc(){
			$.ajax({
				type:"GET",
				url:"GetAllIQACDoc?tbl=IqacOther",
				success:function(data){
					var sno= +0;
					$("#OtherDoc").text("");
					for (var key in data.hm1) {
						
						($('#OtherDoc')).append('<li type="disc">'
							+'<a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/IQAC/IqacOther/'+key+'/'+data.hm1[key][0]+'" target="_blank">'+data.hm1[key][0]+'</a>'
							+'</li>');
			        }
				},
				error:function(data){}
			});
		}
	</script>

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
<center><h1 style="color:blue;padding:5px;border:0px solid brown;">IQAC</h1></center>
	 <section class="section-full dark-bg">

			<div class="container">

				<div class="row">

					<div class="col-md-12">

						<!-- Begin .HorizontalTab -->
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
								<li class="tabs-1"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">IQAC Committee</span></li>
								<li class="tabs-2"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">AQAR Reports</span></li>
								<li class="tabs-3"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">IQAC Minutes and Action Taken Reports</span></li>
								<li class="tabs-4"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">NAAC SSR Document</span></li>
								<li class="tabs-5"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">IQAC Notices</span></li>
								<!-- <li class="tabs-4"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">UGC - CPE</span></li>
								<li class="tabs-5"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">DBT -STAR</span></li>
								<li class="tabs-6"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">DST-FIST</span></li>
								<li class="tabs-7"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">UGC-BSR</span></li>
								<li class="tabs-8"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">UGC Community College</span></li> -->
								<li class="tabs-5"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Other Document</span></li>
							</ul>

							<div class="resp-tabs-container hor_1">

								<div class="fc-tab-1">
									<h2 class="title_contanier">IQAC Committee</h2>

										<table class="table">
					                		<thead>
					                			<tr>
					                				<th>S.N.</th><th>Designation</th><th>Name</th>
					                			</tr>
					                		</thead>
					                		<tbody>
					                			<tr>
					                				<td>1</td>
					                				<td>Chairperson: Head of the Institution  </td>
					                				<td>Prin.Dr. M.G.Chaskar</td>
					                			</tr>
					                			<tr>
					                				<td>2</td>
					                				<td>A few senior administrative officers  </td>
					                				<td>Shri A.S. Shinde
					                					<br/>
					                					Shri V.R.Ghadage
					                				</td>
					                			</tr>
					                			<tr>
					                				<td>3</td>
					                				<td>Three to eight teachers</td>
					                				<td>
					                					Dr.N.R.Dangat<br/>
					                					Dr. T.A. Shitole<br/>
					                					Prof.S.G.Gujrathi<br/>
					                					Dr. R.A. Morey<br/>
					                					Dr.M.K.Dhumal<br/>
					                					Prof.S.G.Lakhdive<br/>
					                				</td>
					                			</tr>
					                			<tr>
					                				<td>4</td>
					                				<td>One member from the Management  </td>
					                				<td>Shri A.M.Jadhav</td>
					                			</tr>
					                			<tr>
					                				<td>5</td>
					                				<td>One/two nominees from local society, Students and Alumni</td>
					                				<td>
					                					Shri. Raju Misal<br/>
					                					Shri DnyaneshwarKute<br/>
					                					Ms. Renuka Makarand<br/>
					                				</td>
					                			</tr>
					                			<tr>
					                				<td>6</td>
					                				<td>One/two nominees from Employers /Industrialists/stakeholders</td>
					                				<td>
					                					Dr.M.G.Takawale<br/>
					                					Dr. A.A. Natu<br/>
					                				</td>
					                			</tr>
					                			<tr>
					                				<td>7</td>
					                				<td>One of the senior teachers as the coordinator/Director of the IQAC</td>
					                				<td>Dr.A.J.Khandagle</td>
					                			</tr>
					                		</tbody>

					                	</table>

								</div>

								<div class="fc-tab-2">
									<h2 class="title_contanier">AQAR Reports</h2>

										<p><strong>ANNUAL QUALITY ASSURANCE REPORT</strong></p>
										<table class="table" id="Aqar">

											<tr>
											    
											    <th>Document</th>
											</tr>
											<!-- <td valign="top">

											<ul>
												<li><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/aqar16-17.pdf" target="_blank"><strong>AQAR2016-17</strong></a></li>
												<li><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/aqar-2015-16.pdf" target="_blank"><strong>AQAR2015-16</strong></a></li>
												<li><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/aqar-2014-15.pdf" target="_blank"><strong>AQAR2014-15</strong></a></li>
												<li><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/aqar-2013-14.pdf" target="_blank"><strong>AQAR2013-14</strong></a></li>
												<li><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/AQAR-2012-13.pdf" target="_blank"><strong>AQAR2012-13</strong></a></li>
												<li><strong><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/AQAR11-12.pdf" target="_blank">AQAR2011-12</a></strong> </li>

											</ul>

											</td>
											<td>
												<ul>
													<li><strong><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/AQAR2010-11.pdf" target="_blank">AQAR2010-11</a></strong> </li>
													<li><strong><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/AQAR2009-10.pdf" target="_blank">AQAR2009-10</a></strong></li>
													<li><strong><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/AQAR2008-09.pdf" target="_blank">AQAR2008-09</a></strong></li>
													<li><strong><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/AQAR2007-08.pdf" target="_blank">AQAR2007-08</a></strong></li>
													<li><strong><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/AQAR2006-07.pdf" target="_blank">AQAR2006-07</a></strong></li>
													<li><strong><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/AQAR2005-06.pdf" target="_blank">AQAR2005-06</a></strong></li>
													<li><strong><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AQAR/AQAR2004-05.pdf">AQAR2004-05</a></strong></li>
												</ul>

											</td> -->
											

											</table>


								</div>

								<div class="fc-tab-3" >
									<h2 class="title_contanier">IQAC Minutes and Action Taken Reports</h2>
									<div style="color:#000;font-weight: bold;">
										<p style="color:#000;">
											It gives me pleasure to present the report of the Internal Quality Assurance Cell of the college for the year 2017-18.
											<br/>
											Primarily focussed on the overall development of the college and keeping in mind the preparation for acciditation by NAAC, Bangalore in 2019, the IQAC has planned for several curricular, co-curricular and extracurricular activities along with keeping the administrative work in line with the requirements of the NAAC. We have largely focussed on the student centric activities which is a prime requirement of NAAC.

										</p>
										Following are the details of the activities undertaken through IQAC.

										<table class="table">
											<thead>
												<tr>
													<th>S.N.</th><th>Activity planned for the A.Y. 2017-18</th><th>Action taken</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Implementation of DBT STAR College Scheme</td>
													<td>A system has been developed for the conduct of the activities. All activities as expected by DBT have been smoothly conducted. </td>
												</tr>
												<tr>
													<td>2</td>
													<td>To start Short Term Courses</td>
													<td>STC in all faculties have been started in a systematic way. Students are being benefitted through this activity.</td>
												</tr>
												<tr>
													<td>3</td>
													<td>Strengthening of Competitive Exam Cell</td>
													<td>Separate spacious and sophisticated infrastructural facility has been made available for the students.</td>
												</tr>
												<tr>
													<td>4</td>
													<td>Conduct of Alumni meet</td>
													<td>A well planned and managed alumni meet of over 4000 students has been organized in Dec 2017 to mark the successful completion of the silver jubilee year of the college.</td>
												</tr>
												<tr>
													<td>5</td>
													<td>To organize conferences/seminars etc</td>
													<td>BCUD sponsored International conference and two state level seminars were successfully organized in Jan 2018. </td>
												</tr>
												<tr>
													<td>6</td>
													<td>To facilitate the research activities.</td>
													<td>Faculties have been promoted to aply for the MRP funded by SPPU.
														<br/>
														Result of the same is awaited.
														<br/>
														Science exhibition and Poster competition was organized in Dec.2017 to motivate the students towards research.
													</td>
												</tr>
												<tr>
													<td>7</td>
													<td>To make a central Lab facility.</td>
													<td>The central Lab is being made in the present infrastructure for integrated research.
														<br/>
														A Lab will also be made available for the B.Voc. course in Food Science and Technology.
													</td>
												</tr>
												<tr>
													<td>8</td>
													<td>Green practices </td>
													<td>Landscaping has been strengthened. Solar panel installation will start soon. Replacing LED lights is in progress. Waste management has been given a serious thought. Use of plastic on campus has been banned.</td>
												</tr>
												<tr>
													<td>9</td>
													<td>Submission of AQAR</td>
													<td>All AQAR for the period of 3rd cycle have been submitted to NAAC,
														<br/>
														The AQAR for the year 2017-18 will be submitted in July/ Aug 2018.
													</td>
												</tr>
												<tr>
													<td>10</td>
													<td>Discussion on New guidelines by NAAC</td>
													<td>Teaching /learning; extension; library; adequate facilities for curriculum and curricular activities; Exam reforms; CBCS; outreach, gender issues, numerical data required, code of conduct required, Rare books collection, e resources. LMS.
														<br/>
														All these actyivities have been discussed in the IQAC meeting held on 8th Feb.2018. timely completion of these activities would be done.
														<ul>
															<li type="disc">Strengthening of Library/sports facilities and laboratories need to be done at the earliest.</li>
															<li type="disc">Increase in ICT facilities and Wi-fi connectivity is expected.</li>
															<li type="disc">Updating of college website is in progress.</li>
														</ul>
													</td>
												</tr>
											</tbody>
										</table>



									</div>





								</div>

								<div class="fc-tab-4">
									<h2 class="title_contanier">NAAC SSR Document</h2>
										<ol id="UGC_CPE">
											<li>Loading...</li>
										</ol>
										<table id="UGC_CPE_Div" style="width:90%; border:1px solid black;  margin-left: 5%;">
										    <tr style="background-color:#61167B;text-align: center;padding: 15px; color: white; font-size: 15px;">
	                                           <th >Sr No.</th>
	                                               <th >Description</th>
										
										</table>
				                		<br/><br/><br/><br/><br/><br/><br/><br/>
								</div>

								<div class="fc-tab-5">
									<h2 class="title_contanier">IQAC Notices</h2>
										<ol id="DBT_STAR">
											<li>Loading...</li>
										</ol>
				                		<br/><br/><br/><br/><br/><br/><br/><br/>
								</div>

								<!-- <div class="fc-tab-6">
									<h2 class="title_contanier">DST-FIST</h2>
										<ol id="DST_FIST">
											<li>Loading...</li>
										</ol>
				                		<br/><br/><br/><br/><br/><br/><br/><br/>
								</div>

								<div class="fc-tab-7">
									<h2 class="title_contanier">UGC-BSR</h2>
										<ol id="UGC_BSR">
											<li>Loading...</li>
										</ol>
				                		<br/><br/><br/><br/><br/><br/><br/><br/>
								</div>

								<div class="fc-tab-8">
									<h2 class="title_contanier">UGC Community College</h2>
										<ol id="UGC_Community_College">
											<li>Loading...</li>
										</ol>
				                		<br/><br/><br/><br/><br/><br/><br/><br/>
								</div> -->

								<div class="fc-tab-5">
									<h2 class="title_contanier">Other Document</h2>
										<ol id="OtherDoc">
											<li>Loading...</li>
										</ol>
				                		<br/><br/><br/><br/><br/><br/><br/><br/>
								</div>




							</div>
						</div>
						<!-- End .HorizontalTab -->

					</div>

				</div>

			</div>

		</section>





<!--
<style>
.tabs-left, .tabs-right {
  border-bottom: none;
  padding-top: 2px;
}
.tabs-left {
  border-right: 1px solid #ddd;
}
.tabs-right {
  border-left: 1px solid #ddd;
}
.tabs-left>li, .tabs-right>li {
  float: none;
  margin-bottom: 2px;
}
.tabs-left>li {
  margin-right: -1px;
}
.tabs-right>li {
  margin-left: -1px;
}
.tabs-left>li.active>a,
.tabs-left>li.active>a:hover,
.tabs-left>li.active>a:focus {
  border-bottom-color: #ddd;
  border-right-color: transparent;
}

.tabs-right>li.active>a,
.tabs-right>li.active>a:hover,
.tabs-right>li.active>a:focus {
  border-bottom: 1px solid #ddd;
  border-left-color: transparent;
}
.tabs-left>li>a {
  border-radius: 4px 0 0 4px;
  margin-right: 0;
  display:block;
}
.tabs-right>li>a {
  border-radius: 0 4px 4px 0;
  margin-right: 0;
}
.vertical-text {
  margin-top:50px;
  border: none;
  position: relative;
}
.vertical-text>li {
  height: 20px;
  width: 120px;
  margin-bottom: 100px;
}
.vertical-text>li>a {
  border-bottom: 1px solid #ddd;
  border-right-color: transparent;
  text-align: center;
  border-radius: 4px 4px 0px 0px;
}
.vertical-text>li.active>a,
.vertical-text>li.active>a:hover,
.vertical-text>li.active>a:focus {
  border-bottom-color: transparent;
  border-right-color: #ddd;
  border-left-color: #ddd;
}
.vertical-text.tabs-left {
  left: -50px;
}
.vertical-text.tabs-right {
  right: -50px;
}
.vertical-text.tabs-right>li {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  -o-transform: rotate(90deg);
  transform: rotate(90deg);
}
.vertical-text.tabs-left>li {
  -webkit-transform: rotate(-90deg);
  -moz-transform: rotate(-90deg);
  -ms-transform: rotate(-90deg);
  -o-transform: rotate(-90deg);
  transform: rotate(-90deg);
}
</style>

<style>
.tabs-left{
	background-color:#3d84e6;
}
.tabs-left li a{
	color:#fff;
	font-weight: bold;
}
.tabs-left li.active a{
/* 	margin-right: -2px; */
/* 	border-left:2px solid #3d84e699; */
}
.tabs-left>li.active>a,
.tabs-left>li.active>a:hover,
.tabs-left>li.active>a:focus {
  border-bottom-color: #ddd;
  border-right-color: transparent;
  border-left:2px solid #3d84e6;
  margin-right: -2px;
}
.col-xs-9{
	//background-color:#3d84e622;
	border:2px solid #3d84e6;
	//margin-left: -2px;
	z-index: 200;
}
.col-xs-3{
	padding-right:0px;
	z-index: 300;
}
.tabs-left {
  border-right: none;
}
.tabs-left>li>a:hover{
	background-color: #fff;
	color:#000;
}
</style>

	<br/>
  <div class="container">

<style>
	table td {
	text-align: left;
	font-weight: bold;
	color:#000;
}
</style>

 -->

<!--
	<div class="row" style="min-height:300px;">
    <div  class="col-sm-12">
        <h3>IQAC</h3>
        <div class="col-xs-3">
            required for floating
            Nav tabs
            <ul class="nav nav-tabs tabs-left">
                <li class="active"><a href="#home" data-toggle="tab">IQAC Committee</a></li>
                <li><a href="#messages" data-toggle="tab">AQAR Reports</a></li>
                <li><a href="#profile" data-toggle="tab">IQAC Minutes and Action Taken Reports</a></li>
            </ul>
        </div>
        <div class="col-xs-9">
            Tab panes
            <div class="tab-content">

                <div class="tab-pane active" id="home" style="padding:10px;">

                	<table class="table">
                		<thead>
                			<tr>
                				<th>S.N.</th><th>Designation</th><th>Name</th>
                			</tr>
                		</thead>
                		<tbody>
                			<tr>
                				<td>1</td>
                				<td>Chairperson: Head of the Institution  </td>
                				<td>Prin.Dr. M.G.Chaskar</td>
                			</tr>
                			<tr>
                				<td>2</td>
                				<td>A few senior administrative officers  </td>
                				<td>Shri A.S. Shinde
                					<br/>
                					Shri V.R.Ghadage
                				</td>
                			</tr>
                			<tr>
                				<td>3</td>
                				<td>Three to eight teachers</td>
                				<td>
                					Dr.N.R.Dangat<br/>
                					Dr. T.A. Shitole<br/>
                					Prof.S.G.Gujrathi<br/>
                					Dr. R.A. Morey<br/>
                					Dr.M.K.Dhumal<br/>
                					Prof.S.G.Lakhdive<br/>
                				</td>
                			</tr>
                			<tr>
                				<td>4</td>
                				<td>One member from the Management  </td>
                				<td>Shri A.M.Jadhav</td>
                			</tr>
                			<tr>
                				<td>5</td>
                				<td>One/two nominees from local society, Students and Alumni</td>
                				<td>
                					Shri. Raju Misal<br/>
                					Shri DnyaneshwarKute<br/>
                					Ms. RenukaMakarand<br/>
                				</td>
                			</tr>
                			<tr>
                				<td>6</td>
                				<td>One/two nominees from Employers /Industrialists/stakeholders</td>
                				<td>
                					Dr.M.G.Takawale<br/>
                					Dr. A.A. Natu<br/>
                				</td>
                			</tr>
                			<tr>
                				<td>7</td>
                				<td>One of the senior teachers as the coordinator/Director of the IQAC</td>
                				<td>Dr.A.J.Khandagle</td>
                			</tr>
                		</tbody>

                	</table>



                </div>

                <div class="tab-pane" id="messages"  style="padding:10px;">

                	<table class="contentpaneopen">



					<tr>
					<td valign="top">
					<p><strong>ANUAL QUALITY ASSURANCE REPORT</strong></p>
					<ul>
					<li><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/aqar16-17.pdf" target="_blank"><strong>AQAR2016-17</strong></a></li>
					<li><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/aqar-2015-16.pdf" target="_blank"><strong>AQAR2015-16</strong></a></li>
					<li><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/aqar-2014-15.pdf" target="_blank"><strong>AQAR2014-15</strong></a></li>
					<li><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/aqar-2013-14.pdf" target="_blank"><strong>AQAR2013-14</strong></a></li>
					<li><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/AQAR-2012-13.pdf" target="_blank"><strong>AQAR2012-13</strong></a></li>
					<li><strong><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/AQAR11-12.pdf" target="_blank">AQAR2011-12</a></strong> </li>
					<li><strong><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/AQAR2010-11.pdf" target="_blank">AQAR2010-11</a></strong> </li>
					<li><strong><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/AQAR2009-10.pdf" target="_blank">AQAR2009-10</a></strong></li>
					<li><strong><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/AQAR2008-09.pdf" target="_blank">AQAR2008-09</a></strong></li>
					<li><strong><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/AQAR2007-08.pdf" target="_blank">AQAR2007-08</a></strong></li>
					<li><strong><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/AQAR2006-07.pdf" target="_blank">AQAR2006-07</a></strong></li>
					<li><strong><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/AQAR2005-06.pdf" target="_blank">AQAR2005-06</a></strong></li>
					<li><strong><a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AQAR/AQAR2004-05.pdf">AQAR2004-05</a></strong></li>
					</ul>

					</td>
					</tr>

					</table>

                </div>
                <div class="tab-pane" id="profile"  style="padding:10px;">
                		<br/><br/><br/><br/><br/><br/><br/><br/>

                			<center>
                				<h2>Page Under Construction</h2>
                			</center>

                		<br/><br/><br/><br/><br/><br/><br/><br/>

                </div>
                <div class="tab-pane" id="settings">Settings Tab.</div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>

</div>

 -->



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
