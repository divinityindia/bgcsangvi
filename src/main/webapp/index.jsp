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

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script>
	$( document ).ready(function() {
		var width=$('#ved').width();
		var height=$('#ved2').height();
		
		$('#vtour1').height(height);
		$('#vtour1').width(width);
		
		

//	document.getElementById('modal1').style.display='block';

		NoticeLoad();
		NewsLoad();
		EventLoad();
		GalleryLoad();

	});

 
	function NewsLoad(){
		$.ajax({
			type:"GET",
			url:"GetAllShortNews",
			success:function(data){
				for (var key in data.hm) {
					if(data.hm[key][6] == 'Yes')
					{
						if(data.hm[key][8] == 'Yes')
						{							
						($('ul#newsUL')).append('<li > <a  target="_blank" style="color:#0000CD; " href="NewsH?id='+key+'"> &#9755;'+data.hm[key][2]+'</a> &nbsp;<lable class="quadrat" style="font-size: 12px;">New</lable> </li>'
							);
						}
						else
						{
							($('ul#newsUL')).append('<li > <a target="_blank" style="color:	#0000CD;" href="NewsH?id='+key+'"> &#9755;'+data.hm[key][2]+'</a></li>'
							);
						}
					}
		        }
			},
			error:function(data){

			}
		});
	}

	function EventLoad(){
		$.ajax({
			type:"GET",
			url:"GetAllShortEvents",
			success:function(data){
				for (var key in data.hm) {
					if(data.hm[key][17] == 'Yes')
					{
						if(data.hm[key][18] == 'Yes')
							{
						
						      ($('ul#eventUL')).append('<li> <a  target="_blank" style="color:#0000CD; " href="EventsH?id='+key+'"> &#9755;'+data.hm[key][3]+'</a>&nbsp;<lable class="quadrat" style="font-size: 12px;">New</lable> </li>'
							  );
							}
						else
							{
							  ($('ul#eventUL')).append('<li> <a target="_blank" style="color:#0000CD; " href="EventsH?id='+key+'"> &#9755;'+data.hm[key][3]+'</a></li>'
							   );
							}
					}
		        }
			},
			error:function(data){

			}
		});
	}

	function NoticeLoad(){
		$.ajax({
			type:"GET",
			url:"GetAllShortNotice",
			success:function(data){
				for (var key in data.hm) {
					if(data.hm[key][6] == 'Yes')
					{
						if(data.hm[key][8] == 'Yes')
							{
								($('ul#noticeUL')).append('<li> <a  style="color:#0000CD; " target="_blank" href="NoticeH?id='+key+'"> &#9755;'+data.hm[key][2]+'</a>&nbsp;<lable class="quadrat" style="font-size: 12px;">New</lable> </li>'
								);
							}
						else
							{
							($('ul#noticeUL')).append('<li> <a target="_blank" style="color:#0000CD;" href="NoticeH?id='+key+'"> &#9755;'+data.hm[key][2]+'</a></li>'
							);
							}
					}
					
		        }
			},
			error:function(data){

			}
		});
	}

	function GalleryLoad(){
		var s3pat=$('#s3pat').val();
		$.ajax({
			type:"GET",
			url:"GetPublicGallery",
			success:function(data){
				for (var key in data.hm) {
					($('#galleryDiv')).append(''
							+'<a href="PublicSubGallery?gid='+key+'">'
							+'	<div class="galDiv">'
							+'	<div class="picDiv">'
							+'		<img alt="" src="'+s3pat+'gallery/'+key+'/'+data.hm[key][1]+'/'+data.hm[key][2]+'" style="width: 250px;;height: 130px">'
							+'	</div>'
							+'	<b style="font-size:11px;"><center>'+data.hm[key][0]+'</center></b>'
							+'</div>'
							+'</a>'
						);
		        }
			},
			error:function(data){

			}
		});
	}
	</script>

<style>
	.galDiv{
		width:250px;
		height: 160px;
		display: inline-block;
		margin: 10px;
/* 		background-color: #66ffb3; */
       background-color: white;
		padding: 10px;
		vertical-align: top;
		overflow: auto;
		border: 1px solid #577FDB;
	}
	.picDiv{
		width:100%;
		height:130px;
	}
	
	/* ---------Blink--------------------- */

.quadrat {

 -webkit-animation: NAME-YOUR-ANIMATION 1s infinite; /* Safari 4+ */
  -moz-animation:    NAME-YOUR-ANIMATION 1s infinite; /* Fx 5+ */
  -o-animation:      NAME-YOUR-ANIMATION 1s infinite; /* Opera 12+ */
  animation:         NAME-YOUR-ANIMATION 1s infinite; /* IE 10+, Fx 29+ */
}

@-webkit-keyframes NAME-YOUR-ANIMATION {
0%, 49% {
    color: 	rgb(128,0,0);
    
}
50%, 100% {
    color:  	#00BFFF;
   
}
}
.quadrat1 {

 -webkit-animation: NAME-YOUR-ANIMATION1 1s infinite; /* Safari 4+ */
  -moz-animation:    NAME-YOUR-ANIMATION1 1s infinite; /* Fx 5+ */
  -o-animation:      NAME-YOUR-ANIMATION1 1s infinite; /* Opera 12+ */
  animation:         NAME-YOUR-ANIMATION1 1s infinite; /* IE 10+, Fx 29+ */
}

@-webkit-keyframes NAME-YOUR-ANIMATION1 {
0%, 49% {
    color: 	rgb(255,255,255);
    
}
50%, 100% {
    color:red;
   
}
}

</style>
</head>
<body>

	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse" style="padding-top:0px">
		<div class="container" style="width: 100%;margin: 0px;padding-left: 0px;padding-right: 0px; ">

			<jsp:include page="header.jsp"></jsp:include>
			<jsp:include page="menu.jsp"></jsp:include>
             <jsp:include page="/HitCounter"/>
             <input type="hidden" id="s3pat" value="${s3pat}">
		</div>
	</div>
	<!-- /.navbar -->

	<!-- Header -->
	
<!-- 	<header id="head"> -->
	<div class="container" style="width: 100%">
             <!-- <div class="heading-text">
							<h1 class="animated flipInY delay1">Start Online Education</h1>
							<p>Free Online education template for elearning and online education institute.</p>
						</div> -->

						<style>
							.nav-stacked li a{
								/* background-color: #63C0F5;//#00ff40; */
								background-color: #002e3b;//#00ff40; 
								/* background-color: #FF9933;//#00ff40; */
								
								color:#fff;
								font-weight: bold;
							}
							.nav>li>a:hover,.nav>li>a:focus{
								color:#003135;
								background: #fdd991;
							}
						</style>

            	<div class="row" id="mblock">
            		<div class="col-md-2" style="padding-left: 0px;padding-right: 0px;" >
	            		<ul class="nav nav-pills nav-stacked"style="font-family: sans-serif;">
					        <li><a href="AboutCollege.jsp" class="bg-success">About College</a></li>
					        <li><a href="CollegeAdministrationStaffBean" class="bg-success">Administration</a></li>
					        <li><a href="Examinations" class="bg-success">Examinations</a></li>
					        <li><a href="ProgramOutcomes.jsp" class="bg-success">Program OutComes</a></li>
<!-- 					        <li><a href="Emirate-Professor/ProfessorList" target="_blank" class="bg-success">Emirate Professors</a></li> -->
					        <li><a href="TimeTable" class="bg-success">Time Table</a></li>
					        <li><a href="GetInfra" class="bg-success">Infra. &amp; Facility</a></li>
					        <!-- <li><a href="Results.jsp" class="bg-success">Results</a></li> -->
					        <li><a href="BestPractices.jsp" class="bg-success">Best Practices</a></li> 
<!-- 					         <li><a href="IPR.jsp" target="_blank"  class="bg-success ">IPR Cell</a></li> -->
					        <li><a href="CodeOfConduct.jsp" class="bg-success">Code of Conduct</a></li>
					        <li><a href="CodOfEthics.jsp" class="bg-success">Code of Ethics</a></li>
					        <li><a href="DistinctivenesOfTheCollege.jsp" class="bg-success">Distinctivenes of the college</a></li>
				      	</ul>
            		</div>
            		 <div  class="col-md-8" style="padding-left: 0px;padding-right: 0px; ">
            		  <div id="slideshow" style="background: white; ">
            		  	         <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/20.JPG" ></div>
            		  	          <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/21.JPG" ></div>
            		  	           <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/22.JPG" ></div>
            		  	            <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/23.JPG" ></div>
            		  	             <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/24.JPG" ></div>
            		  	              <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/25.JPG" ></div>
            		  	               <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/26.JPG" ></div>
            		  	                <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/27.JPG" ></div>
            		  	                 <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/28.JPG" ></div>
            		  	                  <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/29.JPG" ></div>
            		  	                   <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/30.JPG" ></div>
            		  	                    
            		  <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/11.JPG" ></div>
							<div><img style=" height: 400px!important;width: 100%;" src="BGC_Images/sld/12.JPG" ></div>
					        <div><img style=" height: 400px!important;width: 100%;" src="BGC_Images/sld/13.JPG" ></div>
						    <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/14.JPG" ></div>  
						     <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/15.JPG" ></div> 
						      <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/16.JPG" ></div> 
						       <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/17.JPG" ></div> 
						        <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/18.JPG" ></div> 
						         <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/19.JPG" ></div> 
						          <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/9.JPG" ></div> 
						           <div><img style="height: 400px!important;width: 100%;" src="BGC_Images/sld/10.JPG" ></div> 
						               
										 
					 </div>
<!-- 	                   <div id="camera_wrap_4"> -->

<!-- 	                        <div data-thumb="assets/images/slides/thumbs/img2.jpg" data-src="images/rmc1.JPG"> -->
<!-- 	                        </div> -->
<!-- 	                        <div data-thumb="assets/images/slides/thumbs/img2.jpg" data-src="images/rmc2.JPG"> -->
<!-- 	                        </div> -->
<!-- 	                        <div data-thumb="assets/images/slides/thumbs/img2.jpg" data-src="images/rmc3.jpg"> -->
<!-- 	                        </div> -->
<!-- 	                        <div data-thumb="assets/images/slides/thumbs/img2.jpg" data-src="images/rmc4.jpg"> -->
<!-- 	                        </div> -->
<!-- 	                        <div data-thumb="assets/images/slides/thumbs/img2.jpg" data-src="images/rmc5.JPG"> -->
<!-- 	                        </div> -->

<!-- 	                        <div data-thumb="assets/images/slides/thumbs/img2.jpg" data-src="images/rmc8.jpg"> -->
<!-- 	                        </div> -->
<!-- 	                        <div data-thumb="assets/images/slides/thumbs/img2.jpg" data-src="images/rmc9.jpg"> -->
<!-- 	                        </div> -->
<!-- 	                        <div data-thumb="assets/images/slides/thumbs/img2.jpg" data-src="images/rmc10.JPG"> -->
<!-- 	                        </div> -->
<!-- 	                        <div data-thumb="assets/images/slides/thumbs/img2.jpg" data-src="images/rmc11.jpg"> -->
<!-- 	                        </div> -->
<!-- 	                         <div data-thumb="assets/images/slides/thumbs/img2.jpg"  data-src="images/dbt start pic in home page.jpg"> -->
<!-- 	                        </div> -->
<!-- 	                         <div data-thumb="assets/images/slides/thumbs/img2.jpg"  data-src="images/rmc22.JPG"> -->
<!-- 	                        </div> -->

<!-- 	                    </div> -->
	                   
	                   
	                   
                	</div>
            		
            		
            		
            		
            		
					 <!-- <div id="ved" class="col-md-8" style="padding-left: 0px;padding-right: 0px; ">
	                   
	                    <video  id="vtour1" allowfullscreen="true" controls="controls" autoplay="autoplay">
			            	<source src="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/virtualtour/CollegeVideo.mp4">
			            	Your browser does not support the video tag.
			            </video>
			           
	                   
	                   
                	</div> -->
                	<!-- .fluid_container -->
                	<div class="col-md-2" id="ved2" style="padding-left: 0px;padding-right: 0px;">
            			<ul class="nav nav-pills nav-stacked" style="font-family: sans-serif;">
            			<li><a href="http://www.pdea-admission.org/" class="bg-success" target="blank">Online Admission</a></li>
            				<li><a href="CoursesOffered" class="bg-success">Courses Offered</a></li>
					        <li><a href="ISO.jsp" class="bg-success">ISO</a></li>
<!-- 					        <li><a href="StudentDevelopment?type=Placement&pgnm=StudentDevelopmentPlacement" class="bg-success">Placement Cell</a></li> -->
                           <li><a href="CollegeActivity" class="bg-success">College Activity</a></li>
							<!-- <li><a href="https://s3.us-east-2.amazonaws.com/rmmoreone/IQAC/DBT_STAR/1/DBT+for+Website.pdf" target="_blank" class="bg-success">DBT-Star College</a></li> -->
<!-- 							<li><a href="DBTStarCollege?type=DBTStarCollege" class="bg-success">DBT-Star College</a></li> -->
					        <li><a href="NIRF" class="bg-success">NIRF</a></li>
					        
					        <li>
					        <a href="https://lms.pdeabgcollege.edu.in/login/index.php" class="bg-success" target="_blank" style="    padding: 2px 1px !important; padding-bottom: 4px!important;">Learning Management System (LMS)</a>
					        
					        </li>
					        
<!-- 					        <li><a href="studentfeedback" class="bg-success">Feedback</a></li> -->
                              <li><a href="Library.jsp" class="bg-success">Library</a></li>
					        <li><a href="http://www.unipune.ac.in/university_files/syllabi.htm" target="_blank" class="bg-success">Syllabus</a></li>
					        <li><a href="WebFeedBack2021.jsp" target="_blank" class="bg-success quadrat1">Webinar FeedBack</a></li>
					        <li><a href="http://www.ugc.ac.in" target="_blank" class="bg-success">UGC</a></li>
				      	</ul>
            		</div>
                </div>
        </div>
<!-- 	</header> -->
	<!-- /Header -->
	<br/>
<style>
		.col-md-4{
			border:0px solid #aaa;
		}
		marquee{
/* 			border:1px solid #aaa; */
			background: #f6f6f6;

		}
		marquee div{
 		/* height: 200px; */
		}
		.list.custom-list ul li,.list.custom-list ul li a{
			color:brown;
			font-weight: bold;
		}

		h2.title-box_primary{
			color:red;
		}
	</style>
    <section class="container" style="width: 100%">
      <div class="row">
      	<div class="col-md-4"><div class="title-box clearfix " style="background: #002e3b;border:7px outset #fdd991;"><h2 class="title-box_primary" style="color:#fff;font-family: sans-serif;margin: 10px;font-size: 22px;">Notice</h2></div>
      	<div style="max-height: 200px;">
      	<marquee direction="up" behavior="scroll" onmouseover="this.stop();" onmouseout="this.start();" scrolldelay="300" style=" height: 200px;background: white;border: 2px solid #fdd991;border-bottom: 2px solid #002e3b;">
	        <div class="list styled custom-list" >
	            <ul id="noticeUL" style="font-family: sans-serif;">
	            </ul>
	            </div>
	   </marquee>
	   </div>
	   </div>


          <div class="col-md-4"><div class="title-box clearfix " style="background: #002e3b;border:7px outset #fdd991;"><h2 class="title-box_primary" style="color:#fff;font-family: sans-serif;margin: 10px;font-size: 22px;">News</h2></div>
          <div style="max-height: 200px;">
            <marquee direction="up" onmouseover="this.stop();" onmouseout="this.start();"scrolldelay="300" style=" height: 200px;background: white;border: 2px solid #fdd991;border-bottom: 2px solid #002e3b;" >
	            <div class="list styled custom-list">
	            <ul id="newsUL"  style="font-family: sans-serif;" >

	            </ul>
	            </div>
            </marquee>
          </div>
         </div>

         <div class="col-md-4"><div class="title-box clearfix " style="background: #002e3b;border:7px outset #fdd991;"><h2 class="title-box_primary" style="color:#fff;font-family: sans-serif;margin: 10px;font-size: 22px;">Events</h2></div>
            <div style="max-height: 200px;">
            <marquee direction="up" onmouseover="this.stop();" onmouseout="this.start();"scrolldelay="300" style="height: 200px;background: white;border: 2px solid #fdd991;border-bottom: 2px solid #002e3b;">
	            <div class="list styled custom-list">
	            <ul id="eventUL"  style="font-family: sans-serif;">

	            </ul>
	            </div>
            </marquee>
            </div>
         </div>
      </div>
      </section>
  <div class="container" style="width: 100%">
    <div class="row">
					<div class="col-md-3">
						<div class="grey-box-icon" style="border-radius: 25px; background-color: #fdd991;border: 3px solid #002e3b;">
							<div class="icon-box-top grey-box-icon-pos">
								<img src="images/president.jpg" alt="" class="img-thumbnail" style="border-radius: 50%;"/>
							</div><!--icon box top -->
							<span style="color: #15687f;font-weight: bold;font-family: sans-serif;">Hon. Ajit dada Pawar
									<br/>
									President,PDEA,Pune.
									
							</span>
							<h4 style="font-family: sans-serif;color: brown;">President's Message</h4>
							<div style="text-align: justify;color:#002e3b;font-family: sans-serif;">
							<p><b>Dear Student's ,</b><br>
							I am indeed very pleased to note your interest to joining Poona District Education Association, PUNE 411038.</p>
							</div>
     						<p><a href="PresidentMessage.jsp"><em>Read More</em></a></p>
						</div><!--grey box -->
					</div><!--/span3-->
					<div class="col-md-3">
						<div class="grey-box-icon" style="border-radius: 25px; background-color: #fdd991;border: 3px solid #002e3b;">
							<div class="icon-box-top grey-box-icon-pos">
							
								<img src="images/rajendraghadage.jpg" alt="" class="img-thumbnail" style="border-radius: 50%;"/>
							</div><!--icon box top -->
						
							<span style="color:#15687f;font-weight: bold;font-family: sans-serif;">HON.RAJENDRA GHADAGE
									<br/>
									Vice - President,PDEA,Pune.									
							</span>
							<h4 style="font-family: sans-serif;color: brown;">Vice President's Message</h4>

							<div style="text-align: justify;color:#002e3b;font-family: sans-serif;">
							<p><b>Dear Student's ,</b><br>

                                I am indeed very pleased to note your interest to joining Poona District Education Association, PUNE 411038....</p>
							</div>
     						<p><a href="Vicepresident.jsp"><em>Read More</em></a></p>
						</div><!--grey box -->
					</div><!--/span3-->
					<div class="col-md-3">
						<div class="grey-box-icon" style="border-radius: 25px; background-color: #fdd991;border: 3px solid #002e3b;">
							<div class="icon-box-top grey-box-icon-pos">
								<img src="images/sandipkadam.jpg" alt="" class="img-thumbnail" style="border-radius: 50%;"/>
							</div><!--icon box top -->
							<span style="color:#15687f;font-weight: bold;font-family: sans-serif;">Hon. Adv Sandeep Kadam<br/>
								Secretary, PDEA,Pune.
								
							</span>

							<h4 style="font-family: sans-serif;color: brown;">Secretary's Message</h4>
							<div style="text-align: justify;color:#002e3b;font-family: sans-serif;">
							<p>
								Pune District Education Association (PDEA), one of the leading educational associations in Pune was established in the year 1941 under the able guidance...
							</p>
							</div>
     						<p><a href="SecretaryMessage.jsp"><em>Read More</em></a></p>
						</div><!--grey box -->
					</div><!--/span3-->
					<div class="col-md-3">
						<div class="grey-box-icon" style="border-radius: 25px; background-color: #fdd991;border: 3px solid #002e3b;">
							<div class="icon-box-top grey-box-icon-pos">
								<img src="BGC_Images/sld/jagtap.jpg" alt="" class="img-thumbnail" style="height:160px;width:125px;border-radius: 50%;" />
							</div><!--icon box top -->
							<span style="color:#15687f;font-weight: bold;font-family: sans-serif;">Dr.Sangeeta Jagtap<br/>
							                                            Principal </span>

							<h4 style="font-family: sans-serif; color: brown;">Principal's Message</h4>
							<div style="text-align: justify;color:#002e3b;font-family: sans-serif;">
							<p>
							  <b>Dear Student's ,</b><br>
								I extend you a warm welcome at Pune District Education Association's BaburaojiGholap College, Sangvi, Pune... 
															</p>
							</div>
     						<p><a href="PrincipalMessage.jsp"><em>Read More</em></a></p>
						</div><!--grey box -->
					</div><!--/span3-->
					
				</div>
    </div>
<br><br>
	

      <section class="news-box top-margin">
        <div class="container" style="width: 100%;">
          
            <div class="row" >
<!--                    <hr style="border: 1px solid #1ebcb8;margin: 0px;"> -->
                <div class="col-lg-8 col-md-8 col-sm-12" >
                  <div class="title-box clearfix " style="background: #002e3b;border:7px outset #fdd991;"><h2 class="title-box_primary" style="color:#fff;font-family: sans-serif;margin: 10px;font-size: 22px;">Photo Gallery</h2></div>
                    <div class="newsBox" style="background: #fdd991;border:5px solid #002e3b ;border-top: none;">
                        <div class="thumbnail" >
<!--                             <figure ><img src="images/rmc6.JPG" alt=""  style="height:190px "></figure> -->
                            <div style="width: 100%;height: 190px;border:0px solid #aaa;" id="galleryDiv1">
                            <marquee style="width: 100%;height: 180px;background: white;border: 2px solid #fdd991;border-radius: 3%;"  id="galleryDiv" onmouseover="stop()" onmouseout="start()""scrolldelay="400" >

                            </marquee>

                            </div>
                            <div class="caption maxheight2" >
                            <div class="box_inner" >
                                        <div class="box" style="text-align: center;color: #000;font-family: sans-serif;">
                                            <p class="title"><h5>Photo Gallery</h5></p>
<!--                                             <p>Lorem ipsum dolor sit amet, conc tetu er adipi scing. Praesent ves tibuum molestie lacuiirhs. Aenean.</p> -->
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12" ">
                 <div class="title-box clearfix " style="background: #002e3b;border:7px outset #fdd991;"><h2 class="title-box_primary" style="color:#fff;font-family: sans-serif;margin: 10px;font-size: 22px;">Quick Links</h2></div>
                    <div class="newsBox" style="background: #002e3b;border:6px solid #fdd991 ;border-top: none;height: 243px;">
                        <div class="thumbnail">
                             <ul class="menu" style="font-family: sans-serif;">
					            <li><a href="http://www.dbtindia.nic.in/star-college-scheme/" target="_blank" style="color: #fff700!important;">
					              &#9755;  DBT -STAR
					              </a>
					            </li>
					            <li><a href="http://www.fist-dst.org/" target="_blank" style="color: #fff700!important;">
					               &#9755; DST-FIST
					              </a>
					            </li>
					            <li><a href="http://mhrd.gov.in/community-colleges" target="_blank" style="color: #fff700!important;">
					              &#9755;  UGC Community College
					              </a>
					            </li>
					            <li><a href="https://www.ugc.ac.in/page/Basic-Scientific-Research.aspx" target="_blank" style="color: #fff700!important;">
					              &#9755; UGC-BSR
					              </a>
					            </li>
					            <li><a href="https://www.facebook.com/baburaoji.gholap.5" target="_blank" style="color: #fff700!important;">
					              &#9755; B.G.College Facebook Page 
					              </a>
					            </li>
					            <li><a href="https://youtube.com/channel/UCLszPP9TCyW9eo5rQE3jc3A" target="_blank" style="color: #fff700!important;">
					              &#9755; B.G.College Youtube Channel 
					              </a>
					            </li>
					            <li><a href="https://pdeabgcollege.s3.us-east-2.amazonaws.com/bgc-college-introduction.mp4" target="_blank" style="color: #fff700!important;">
					              &#9755; NAAC Visit
					              </a>
					            </li>
					            
					          </ul>
					         <p style="padding: 2px;"></p>
                        </div>
                   </div>
               </div>
         </div>
      </div>
    </section>


    <style>
.modal {
//    z-index:3;
//    display:none;
//    padding-top:0px;
//    position:fixed;
//    left:0;
 //   top:auto;
//    bottom:0;
//    width:100%;
//   height:100%;
 //   overflow:auto;
 /*   background-color:rgb(0,0,0); */
    background-color:rgba(0,0,0,0.6);
}
</style>




<!-- <div id="modal1" class="modal" style="margin: auto;height:600px; width:95%;border:2px solid gray"> -->
<style>
	.cust-Btn{
		font-size: 1.2em;
		font-weight: bold;
		padding: 10px;
	}
	.cust-Btn:HOVER{
		background: green;
		color: #fff;
	}
</style>
<!-- <a  onclick="document.getElementById('modal1').style.display='block'" target="iframe_modal"> <input type="button"  value="  Edit Access Rights  " class="green-btn"/> </a> -->
<div id="modal1" class="modal" style="height:">
	<div style="margin: auto;height:120px; width:80%;margin-top:500px;background-color: #bfff00ee;border-radius:20px;">
		<div style="width: 100%;text-align: right">
		  <span onclick="document.getElementById('modal1').style.display='none'; document.getElementById('iframe1').src =''" class=""><b style="color:#000;font-size: 3em;cursor: pointer;">&times;</b></span>
	  	</div>

	  	<div class="row">
	  		<div class="col-xs-4" style="text-align: center; ">
	  				<a href="${s3pat}CAS/CAS+Notice.pdf" target="_blank">
	  					<input type="button" value="CAS Notice" class="btn btn-default cust-Btn"/>
					</a>
	  		</div>
	  		<div class="col-xs-4"  style="text-align: center; ">
	  			<a href="${s3pat}CAS/PrincipalNotice.jpg" target="_blank">
	  				<input type="button" value="Notice For Principal" class="btn btn-default cust-Btn"/>
	  			</a>
	  		</div>
	  		<div class="col-xs-4"  style="text-align: center; ">
	  			<a href="${s3pat}CAS/UNIVERSITY+CIRCULAR.pdf" target="_blank">
	  				<input type="button" value="University Circular" class="btn btn-default cust-Btn"/>
	  			</a>
	  		</div>

	  	</div>
<!-- 	  	<iframe id="iframe1" height="565px" width="100%" src="" name="iframe_modal" > -->
<!-- 	  		abcd -->

<!-- 	  	</iframe> -->
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
/* 				  margin-left: 10%; */
/* 				  margin-right:10%; */
				  position: relative;
				  
				  height: 420px;
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

</body>
</html>
