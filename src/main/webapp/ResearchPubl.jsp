

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
	<link rel="stylesheet" type="text/css" href="tab/css/colors/color_6.css" id="colors-style" />
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
<center><h1 style="color:blue;">Research Publication</h1></center>
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
								<li class="tabs-1"><i class="fc_icons fa fa-tasks"></i> <span class="tabs-text">Research Publication</span></li>
							</ul>

							<div class="resp-tabs-container hor_1">
							<div class="fc-tab-1">
									<h2 class="title_contanier">Research Publication</h2>
                                        <c:forEach var="dtls" items="${dtl}">
                                        <div>
                                              <h2 style="color: #43577B;">${dtls.deptname}</h2>
                                              <div>
                                                   ${dtls.details}
                                              </div>
                                        </div>
                                        </c:forEach>
                                           
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


	<!-- this file for demo -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<!-- Copy & paste -->
	<script type="text/javascript" src="tab/js/easyResponsiveTabs.js"></script>
	<script type="text/javascript" src="tab/js/jquery.nicescroll.min.js"></script>
	<script type="text/javascript" src="tab/js/tabs.js"></script>



</body>
</html>

























































