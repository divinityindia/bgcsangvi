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
	.VerticalTab.tabs_ver_6.resp-vtabs .resp-tabs-container{
	     width: 77%;
        }

        .VerticalTab.tabs_ver_6.resp-vtabs ul.resp-tabs-list{
	     width:19%
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

		tableLoadAcademicCalender();
		tableLoadResults();
		tableLoadOldQPapers();
		tableLoadEligibility();
		tableLoadWelfareDoc();
		tableLoadWelfarePhoto();
		tableLoadShortTermCourse();
		LoadCyberSec();
	});
	</script>

	<script>

		function tableLoadAcademicCalender(){
			$.ajax({
				type:"GET",
				url:"GetAllAcademicCalenders",
				success:function(data){
					var sno = +0;
					$("#myTableAcademicCalender tbody").text("");
					for (var key in data.hm) {
						($('#myTableAcademicCalender tbody')).append('<tr >'
							+'<td>'+ ++sno+'</td>'
							+'<td>'+data.hm[key][0]+'</td>'
							+'<td><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/academic_calender/'+key+'/'+data.hm[key][1]+'">'+data.hm[key][1]+'</a></td>'
							+'</tr>');
			        }
				},
				error:function(data){}
			});
		}

		function tableLoadResults(){
			$.ajax({
				type:"GET",
				url:"GetAllResults",
				success:function(data){
					var sno= +0;
					$("#myTableResults tbody").text("");
					for (var key in data.hm) {
						($('#myTableResults tbody')).append('<tr >'
							+'<td>'+ ++sno +'</td>'
							+'<td>'+data.hm[key][0]+'</td>'
							+'<td>'+data.hm[key][1]+'</td>'
							+'<td>'+data.hm[key][2]+'</td>'
							+'<td><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/results/'+key+'/'+data.hm[key][3]+'">'+data.hm[key][3]+'</a></td>'
							+'</tr>');
			        }
				},
				error:function(data){}
			});
		}

		function tableLoadOldQPapers(){
			$.ajax({
				type:"GET",
				url:"GetAllQPapers",
				success:function(data){
					var sno= +0;
					$("#myTableQPapers tbody").text("");
					for (var key in data.hm) {
						($('#myTableQPapers tbody')).append('<tr >'
							+'<td>'+ ++sno +'</td>'
							+'<td>'+data.hm[key][1]+'</td>'
							+'<td>'+data.hm[key][2]+'</td>'
							+'<td>'+data.hm[key][3]+'</td>'
							+'<td>'+data.hm[key][4]+'</td>'
							+'<td>'+data.hm[key][5]+'</td>'
							+'<td><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/qpapers/'+key+'/'+data.hm[key][6]+'">'+data.hm[key][6]+'</a></td>'
							+'</tr>');
			        }
				},
				error:function(data){}
			});
		}

		function tableLoadEligibility(){
			$.ajax({
				type:"GET",
				url:"GetAllEligibilityDoc",
				success:function(data){
					var sno= +0;
					$("#myTableEligibility tbody").text("");
					for (var key in data.hm) {
						 ($('#dd')).append('<div class="col-md-4"  style="border:1px solid gray;text-align: center;"> <a href="EligibController?year='+data.hm[key][2]+'&did='+data.hm[key][1]+'">'+data.hm[key][2]+'</a></div>');
						/* ($('#myTableEligibility tbody')).append('<tr >'
							
							+'<td><a href="EligibController?year='+data.hm[key][2]+'&did='+data.hm[key][1]+'">'+data.hm[key][2]+'</a></td>'
							+'</tr>'); */
			        }
				},
				error:function(data){}
			});
		}

		function tableLoadWelfareDoc(){
			$.ajax({
				type:"GET",
				url:"GetAllWelfareDocs",
				success:function(data){
					var sno= +0;
					$("#myTableWelfareDoc tbody").text("");
					for (var key in data.hm) {
						($('#myTableWelfareDoc tbody')).append('<tr >'
							+'<td>'+ ++sno +'</td>'
							+'<td>'+data.hm[key][0]+'</td>'
							+'<td><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/welfare_docs/'+key+'/'+data.hm[key][1]+'">'+data.hm[key][1]+'</a></td>'
							+'</tr>');
			        }
				},
				error:function(data){}
			});
		}

		function tableLoadWelfarePhoto(){
			$.ajax({
				type:"GET",
				url:"GetAllWelfarePhotos",
				success:function(data){
					var sno= +0;
					for (var key in data.hm) {
						var dis='none';
						if(sno == 0){dis=''; }
						($('#mySlidDiv')).append('<div class="mySlides" style="display:'+dis+';height:400px;">'
								+'<img src="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/welfare_photos/'+key+'/'+data.hm[key][2]+'"  style="max-height:100%;height:400px;width:auto;max-width:100%;margin:auto auto" />'
								+'<div class="photoTitle">'
								+' '+data.hm[key][0]+' : '+data.hm[key][1]+''
								+'</div>'
								+'</div>');
						++sno;

			        }

				},
				error:function(data){}
			});
		}

		function tableLoadShortTermCourse(){
			$.ajax({
				type:"GET",
				url:"GetAllShortTermCourses",
				success:function(data){
					$("#myTableShortTermCourse tbody").text("");
					var sno= +0;
					for (var key in data.hm) {
						($('#myTableShortTermCourse tbody')).append('<tr >'
							+'<td>'+ ++sno +'</td>'
							+'<td>'+data.hm[key][1]+'</td>'
							+'<td>'+data.hm[key][2]+'</td>'
							+'<td>'+data.hm[key][3]+'</td>'
							+'<td>'+data.hm[key][4]+'</td>'
							+'<td>'+data.hm[key][5]+'</td>'
							+'<td><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/short_term_course/'+key+'/'+data.hm[key][6]+'">'+data.hm[key][6]+'</a></td>'
// 							+'<td>'+data.hm[key][7]+'</td>'
// 							+'<td> <input type="checkbox" class="delChkBox" name="chkBox" value="'+key+'" onchange="chkDisableDelBtn()"/> </td>'
// 							+'<td> <input type="button" onclick="puValsInModel(\''+key+'\',\''+data.hm[key][0]+'\',\''+data.hm[key][2]+'\',\''+data.hm[key][3]+'\',\''+data.hm[key][4]+'\',\''+data.hm[key][5]+'\',\''+data.hm[key][7]+'\')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/> </td>'
							+'</tr>');

			        }

				},
				error:function(data){}
			});

		}

		function  LoadCyberSec(){
			$.ajax({
				type:"GET",
				url:"GetCyberSecurity",
				
				success:function(data){
					if(data!=null){
						var sr=1
						$.each(data.al, function (i, item) {
							$("#st").append('<tr>'
									+'<td>'+sr+'</td>'
									/* +'<td>'+item.subject+'</td>' */
									+'<td><a href="ShowAllCS?ty='+item.semester+'"> '+item.semester+'</a></td>'
								/* 	+'<td>'+item.details+'</td>'
									+'<td><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AddStaffAchiv/'+item.deptid+'_'+item.document+'" target="_blank">'+item.document+'</a></td>' */
									+'</tr>');
							
							sr++;
							
							
						});
					  		               }
				},
				error:function(data){

				}
				
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

	<br/>
  <div class="container">

<style>
	.resp-tabs-container{
		color:#000;
	}
	.VerticalTab.tabs_ver_1 h2.title_contanier{
		color:brown;
	}
</style>
<center><h1 style="color:#43577B;padding:5px;border:0px solid brown; font-weight: bold;">Academics</h1></center>
  <section class="section-full dark-bg">

			<div class="container">

				<div class="row">

					<div class="col-md-12">

						<!-- Begin .HorizontalTab -->
						<div class="VerticalTab  VerticalTab_6 tabs_ver_6">

							<ul class="resp-tabs-list hor_1">
<!-- 								<li class="tabs-1"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Home</span></li> -->
                                <li class="tabs-1"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Academic Calendars</span></li>
                                <li class="tabs-2"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Syllabus</span></li>
                                <li class="tabs-3"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Old Question Papers</span></li>
                                <li class="tabs-4"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Results</span></li>
								<li class="tabs-5"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Eligibility Numbers</span></li>
								<!-- <li class="tabs-6"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Student Development & Welfare</span></li>
								<li class="tabs-7"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Accreditation Status</span></li> -->
								<li class="tabs-8"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Cyber Security</span></li>
								
							</ul>

							<div class="resp-tabs-container hor_1">

                             <div class="fc-tab-1">
									<h2 class="title_contanier">Academic Calendars</h2>

										<table id="myTableAcademicCalender" class="Vscroll" style="height: 600px;">
							  			<thead>
							  				<tr>
							  					<th>Sr. No</th><th>Title </th><th>Document</th>

							  				</tr>
							  			</thead>
							  			<tbody>
							  				<tr>
							  					<td colspan="5">
							  							<br/><br/><br/>
							  							<h4>Loading...</h4>
							  							<br/><br/><br/>
							  					</td>
							  				</tr>

							  			</tbody>
							  		</table>

								</div>
								<div class="fc-tab-2">
									<h2 class="title_contanier">Syllabus</h2>
										<br/><br/><br/><br/>

										<center>
											<a href="http://www.unipune.ac.in/university_files/syllabi.htm" target="_blank" class="bg-success">
												Go to Savitribai Phule Pune University Syllabus Page
											</a>
										</center>

										<br/><br/><br/><br/>

								</div>
								<div class="fc-tab-3">
									<h2 class="title_contanier">Old Question Papers</h2>

									<a href="http://www.unipune.ac.in/university_files/old_papers.htm" target="_blank">Click here for Savitribai Phule Pune University Question Papers</a>
										<br/><br/>
										<table id="myTableQPapers" class="Vscroll" style="height: 600px;">
								  			<thead>
								  				<tr>
								  					<th>Sr. No.</th><th>Department </th><th>Year</th><th>Pattern</th><th>Subject</th>
								  					<th>Exam</th><th>Document</th>
								  				</tr>
								  			</thead>
								  			<tbody>
								  				<tr>
								  					<td>
									  					<br/><br/><br/>
								  							<h4>Loading...</h4>
								  						<br/><br/><br/>
								  					</td>
								  				</tr>

								  			</tbody>
								  		</table>
								</div>
								<div class="fc-tab-4">
									<h2 class="title_contanier">Results</h2>

										<table id="myTableResults" class="Vscroll" style="height: 600px;">
								  			<thead>
								  				<tr>
								  					<th>Sr. No.</th><th>Year </th><th>Pattern</th><th>Examination</th><th>Document</th>

								  				</tr>
								  			</thead>
								  			<tbody>
												<tr>
													<td>
														<br/><br/><br/>
														<h4>Loading...</h4>
														<br/><br/><br/>
													</td>
												</tr>
								  			</tbody>

								  		</table>


								</div>

								<div class="fc-tab-5">
									<h2 class="title_contanier">Eligibility Numbers</h2>
										<div class="row" id="dd" style="border: 1px solid black;">

							                  <!--  <div class="col-md-4" id="di1">
							                   </div> -->
					                   </div>
										
										
										
										
										<!-- <table id="myTableEligibility" class="Vscroll" style="height: 600px;">
								  			<thead>
								  				<tr>
								  					<th>Academic Year</th>
								  					
								  				</tr>
								  			</thead>
								  			<tbody>
								  				<tr>
								  					<td>
									  					<br/><br/><br/>
								  							<h4>Loading...</h4>
								  						<br/><br/><br/>
								  					</td>
								  				</tr>
								  			</tbody>
								  		</table> -->
								</div>
								
								<!-- <div class="fc-tab-6">
									<h2 class="title_contanier">Student Development & Welfare</h2>
										<table id="myTableWelfareDoc" class="Vscroll" style="height:400px;">
							  			<thead>
							  				<tr>
							  					<th>Sr. No.</th><th>Information</th>
							  					<th>Document</th>
							  				</tr>
							  			</thead>
							  			<tbody>
							  				<tr>
							  					<td>
								  					<br/><br/><br/>
							  							<h4>Loading...</h4>
							  						<br/><br/><br/>
							  					</td>
							  				</tr>
							  			</tbody>
							  		</table>


							  		<br/>
				                  	<h2 class="title_contanier">Photos</h2>
				                  	<style>
				                  		#photoTbl td{
				                  			border:none;
				                  		}
				                  		#photoTbl tr:HOVER{
				                  			background-color: transparent;
				                  		}
				                  		.photoTitle{
				                  			background-color: #555;
				                  			color:#fff;
				                  			font-weight: bold;
				                  			padding:5px;
				                  		}

				                  	</style>
				                  	<table id="photoTbl" style="width:100%">
				                  		<tr>
				                  			<td style="width: 1px;white-space: nowrap;padding-right: 3px">
				                  				<button class="btn" style="padding:90px 10px" onclick="plusDivs(-1)" >&#10094;</button>
				                  			</td>
				                  			<td style="vertical-align: middle;">
				                  				<div class="w3-content w3-display-container" id="mySlidDiv" style="background: rgba(0,0,0,0.2)">
				                  				</div>
				                  			</td>
				                  			<td  style="width: 1px;white-space: nowrap;padding-left: 4px">
				                  				<button class="btn" style="padding:90px 10px" onclick="plusDivs(1)">&#10095;</button>
				                  			</td>
				                  		</tr>
				                  	</table>

								<br/><br/>

								</div>
 -->
								<!-- <div class="fc-tab-7">
									<h2 class="title_contanier">Accreditation Status</h2>

										<ol>
											<li type="disc"><b>NAAC</b></li>
											<li type="disc"><b>NBA</b></li>
										</ol>


				                		<br/><br/><br/><br/><br/><br/><br/><br/>
								</div> -->
								
								<div class="fc-tab-8">
									<h2 class="title_contanier">Cyber Security</h2>
									
									<ul>
									    <li>
									     <a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/CyberSecurity/Syllabus.pdf" target="_blank">Syllabus</a>
									    </li>
									   <!--   <li>
									     <a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/CyberSecurity/Introduction+to+Cyber+Security+format.pdf" target="_blank">Introduction to Cyber Security format</a>
									    </li> -->
									</ul>
                                      <table id="countrytable" class="Vscroll">
									  			<thead>
									  				<tr>
									  				    <th>Sr.No.</th>
									  					
									  					<th>Semester</th>
									  				</tr>
									  				
									  			</thead>
									  			<tbody id="st">
									
									  			</tbody>
									  	
											

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


<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  x[slideIndex-1].style.display = "block";
}
</script>


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
