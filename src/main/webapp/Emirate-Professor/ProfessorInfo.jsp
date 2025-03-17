<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="Prof. Ramkrishna More Arts, Commerce &amp; Science College" />
	<meta name="description" content="Prof. Ramkrishna More Arts, Commerce &amp; Science College">
	<meta name="author" content="Prof. Ramkrishna More Arts, Commerce &amp; Science College">
	<title>Prof. Ramkrishna More Arts, Commerce &amp; Science College</title>


	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



	<link rel="favicon" href="assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="../assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="../assets/css/style.css">
    <link rel='stylesheet' id='camera-css'  href='../assets/css/camera.css' type='text/css' media='all'>
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">


</head>
<body>

	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse" style="padding-top:0px">
		<div class="container" style="width: 100%;margin: 0px;padding-left: 0px;padding-right: 0px;">

			<jsp:include page="header.jsp"></jsp:include>

<%-- 			<c:import url="header.jsp"></c:import> --%>

			<jsp:include page="menu.jsp"></jsp:include>

			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<!-- Header -->

<style>
	.fa {
			width:20px;
		}
		p{
			text-align: justify;
		}
	</style>

  <div class="container" style="padding:10px;">

	<div class="row" >

		<div class="col-xs-12 col-md-3" >

			<div style="margin:30px auto 10px;width: 100%;">
				<c:choose>
  					<c:when test="${info.photo == null}">
  						<div style="background: #eeeeee;height:150px;width:150px;margin: auto"></div>
  					</c:when>
  					<c:otherwise>
  						<div style="width:150px;margin:auto">
						<img src="${s3path}EProfessor/${info.ID}/photo/${info.photo}" alt="" style="width:150px;height:auto;" />
						</div>
					</c:otherwise>
				</c:choose>
			</div>
			<div style="width:100%;text-align: center;border-bottom:1px solid #ddd">
				<b>${info.name}</b><br/><br/>
			</div>
			<br/>
			<div style="width:100%;color:#3d84e6">
				<i class="fa fa-phone" aria-hidden="true"></i> ${info.phno}
			</div>
			<div style="width:100%;color:#3d84e6">
				<i class="fa fa-envelope" aria-hidden="true"></i> ${info.email}
			</div>


		</div>

		<div class="col-xs-12 col-md-9">

			  <h2 style="color:brown">${info.name}</h2>


			  <ul class="nav nav-tabs">
			    <li class="active"><a data-toggle="tab" href="#ablutus">About Us</a></li>
			    <li><a data-toggle="tab" href="#research">Research Undertaken</a></li>
			    <li><a data-toggle="tab" href="#publication">Publications</a></li>
<!-- 			    <li><a data-toggle="tab" href="#menu3">Menu 3</a></li> -->
			  </ul>

			  <div class="tab-content">

			    <div id="ablutus" class="tab-pane fade in active">
			      <h3>About Us</h3>
			      <p>${info.aboutus}</p>
			    </div>

			    <div id="research" class="tab-pane fade">
			      <h3>Research Undertaken</h3>
			      <p>${info.research}</p>
			    </div>

			    <div id="publication" class="tab-pane fade">
			      <h3>Publications</h3>
			      <p>${info.publication}</p>
			    </div>

			  </div>


		</div>

	</div>


	<br/><br/><br/>



  </div>


	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="../assets/js/modernizr-latest.js"></script>
	<script type='text/javascript' src='../assets/js/jquery.min.js'></script>
    <script type='text/javascript' src='../assets/js/fancybox/jquery.fancybox.pack.js'></script>

    <script type='text/javascript' src='../assets/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='../assets/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='../assets/js/camera.min.js'></script>
    <script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/custom.js"></script>


</body>
</html>
