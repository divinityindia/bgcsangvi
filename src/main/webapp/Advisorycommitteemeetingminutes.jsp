
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
	
	<link rel="stylesheet" href="css/color.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico"> 
	<link rel="stylesheet" href="css/mycss.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	 <!-- 	Image slide Show  -->	
	
<script type="text/javascript" src="../highslide/highslide-with-gallery.js"></script>
<link rel="stylesheet" type="text/css" href="../highslide/highslide.css" />
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="../highslide/highslide-ie6.css" />
<![endif]-->



<!--
    2) Optionally override the settings defined at the top
    of the highslide.js file. The parameter hs.graphicsDir is important!
-->

<script type="text/javascript">
	hs.graphicsDir = '../highslide/graphics/';
	hs.align = 'center';
	hs.transitions = ['expand', 'crossfade'];
	hs.fadeInOut = true;
	hs.dimmingOpacity = 0.8;
	hs.wrapperClassName = 'borderless floating-caption';
	hs.captionEval = 'this.thumb.alt';
	hs.marginLeft = 100; // make room for the thumbstrip
	hs.marginBottom = 80 // make room for the controls and the floating caption
	hs.numberPosition = 'caption';
	hs.lang.number = '%1/%2';

	// Add the slideshow providing the controlbar and the thumbstrip
	hs.addSlideshow({
		//slideshowGroup: 'group1',
		interval: 5000,
		repeat: false,
		useControls: true,
		overlayOptions: {
			className: 'text-controls',
			position: 'bottom center',
			relativeTo: 'viewport',
			offsetX: 50,
			offsetY: -5

		},
		thumbstrip: {
			position: 'middle left',
			mode: 'vertical',
			relativeTo: 'viewport'
		}
	});

	// Add the simple close button
	hs.registerOverlay({
		html: '<div class="closebutton" onclick="return hs.close(this)" title="Close"></div>',
		position: 'top right',
		fade: 2 // fading the semi-transparent overlay looks bad in IE
	});
</script>

<!--
	3) Add some extra CSS for this example
-->
<style type="text/css">
/* Center the text in the caption */
.highslide-caption {
	width: 100%;
	text-align: center;
}
/* Remove the close button from the controls since we already have one in the corner of the image */
.highslide-close {
	display: none !important;
}
/* Put the image number in front of the caption */
.highslide-number {
	display: inline;
	padding-right: 1em;
	color: white;
}
</style>	

<!-- Img Silde Show End -->	
	
	
	


	
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
											<a href="DBTStarCollege?type=DBTStarCollege"><li class="des ">DBT Star College Scheme</li></a>
<!-- 											<a href="DBTStarCollege?type=Annualreports"><li class="des">Annual reports</li></a> -->
											<a href="DBTStarCollege?type=Advisorycommitteemeetingminutes"><li class="des active">Advisory committee meeting minutes</li></a>
											<a href="DBTStarCollege?type=Notices"><li class="des ">Notices</li></a>
											<a href="DBTStarCollege?type=Activities"><li class="des ">Activities</li></a>
											<a href="DBTStarCollege?type=Photogallery"><li class="des ">Photo gallery</li></a>
										</ul>
									</div>
								</div>
							</aside>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
						<div class="table-responsive">
						<h2 class="title_contanier" >Advisory committee meeting minutes </h2>
						 <hr style="border: 1px solid;">
								<div id="container1">
								  <div id="container2" >
<!-- 								  <b style="font-family: sans-serif; font-size: 16px;color: #43577B;font-weight: bold;">Major equipments in various laboratories</b> -->
										
										<h4 style="text-align: left; color: #43577B!important;font-weight: bold;">Advisory committee meeting minutes </h4>
										<table id="myTable" class="Vscroll" style="height: 200px;border: 1px solid gray;width: 98%;">
								  			<thead>
								  				<tr>
								  					<th width="8%;">Sr. No.</th>
								  					<th>Title</th>
								  					<th>Document</th>
								  				</tr>
								  			</thead>
								  			<tbody style="color: black;">
								  			  
								  				<tr >
								  					<td width="8%;" style="padding: 7px;">1</td>
								  					<td style="text-align: left;padding-left: 3px;">
								  					
								  					DBT Star college scheme committee
								  					
								  					</td>
								  					<td style="text-align: left;padding-left: 3px;">
								  					
								  					<a href="${s3pat}DBTSTAR_Advisory_committee_meet/1.DBt+star+college+scheme+committee.pdf" target="_blank" style="color: #a52a35;"> <i style="font-size:22px" class="fa">&#xf1c1;</i>&nbsp;&nbsp;PDF File</a>
								  					
								  					</td>
								  				</tr>
								                <tr >
								  					<td width="8%;" style="padding: 7px;">1</td>
								  					<td style="text-align: left;padding-left: 3px;">
								  					
								  					DBT Star Advisory meet 27-04-18
								  					
								  					</td>
								  					<td style="text-align: left;padding-left: 3px;">
								  					
								  					<a href="${s3pat}DBTSTAR_Advisory_committee_meet/2.+DBT+Star+Advisory+meet+27+4+18.pdf" target="_blank" style="color: #a52a35;"> <i style="font-size:22px" class="fa">&#xf1c1;</i>&nbsp;&nbsp;PDF File</a>
								  					
								  					</td>
								  				</tr>
								           
								  			</tbody>
								  			
								  		</table><br>
								  		<h4 style="text-align: left; color: #43577B!important;font-weight: bold;">Photo Gallery</h4>
								  		<div class="row" >
										
											<div class="col-md-3" >
											<a class='highslide' href="${s3pat}DBTSTAR_Advisory_committee_meet/1.JPG" target="_blank" onclick="return hs.expand(this)"> 
		                                         <img src="${s3pat}DBTSTAR_Advisory_committee_meet/1.JPG" alt='Mountain valley' style="max-width:100%;height: 200px;padding: 5px;"/></a> 
											</div>
											<div class="col-md-3" >
											<a class='highslide' href="${s3pat}DBTSTAR_Advisory_committee_meet/2.JPG" target="_blank" onclick="return hs.expand(this)"> 
		                                         <img src="${s3pat}DBTSTAR_Advisory_committee_meet/2.JPG" alt='Mountain valley' style="max-width:100%;height: 200px;padding: 5px;"/></a> 
											</div>
											<div class="col-md-3" >
											<a class='highslide' href="${s3pat}DBTSTAR_Advisory_committee_meet/3.JPG" target="_blank" onclick="return hs.expand(this)"> 
		                                         <img src="${s3pat}DBTSTAR_Advisory_committee_meet/3.JPG" alt='Mountain valley' style="max-width:100%;height: 200px;padding: 5px;"/></a> 
											</div>
											<div class="col-md-3" >
											<a class='highslide' href="${s3pat}DBTSTAR_Advisory_committee_meet/4.JPG" target="_blank" onclick="return hs.expand(this)"> 
		                                         <img src="${s3pat}DBTSTAR_Advisory_committee_meet/4.JPG" alt='Mountain valley' style="max-width:100%;height: 200px;padding: 5px;"/></a> 
											</div>
									    
									</div>
									<br>
									<div class="row" >
											<div class="col-md-3" >
											<a class='highslide' href="${s3pat}DBTSTAR_Advisory_committee_meet/5.JPG" target="_blank" onclick="return hs.expand(this)"> 
		                                         <img src="${s3pat}DBTSTAR_Advisory_committee_meet/5.JPG" alt='Mountain valley' style="max-width:100%;height: 200px;padding: 5px;"/></a> 
											</div>
											<div class="col-md-3" >
											<a class='highslide' href="${s3pat}DBTSTAR_Advisory_committee_meet/6.JPG" target="_blank" onclick="return hs.expand(this)"> 
		                                         <img src="${s3pat}DBTSTAR_Advisory_committee_meet/6.JPG" alt='Mountain valley' style="max-width:100%;height: 200px;padding: 5px;"/></a> 
											</div>
											<div class="col-md-3" >
											<a class='highslide' href="${s3pat}DBTSTAR_Advisory_committee_meet/7.JPG" target="_blank" onclick="return hs.expand(this)"> 
		                                         <img src="${s3pat}DBTSTAR_Advisory_committee_meet/7.JPG" alt='Mountain valley' style="max-width:100%;height: 200px;padding: 5px;"/></a> 
											</div>
											<div class="col-md-3" >
											<a class='highslide' href="${s3pat}DBTSTAR_Advisory_committee_meet/8.JPG" target="_blank" onclick="return hs.expand(this)"> 
		                                         <img src="${s3pat}DBTSTAR_Advisory_committee_meet/8.JPG" alt='Mountain valley' style="max-width:100%;height: 200px;padding: 5px;"/></a> 
											</div>
									    
									</div>
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