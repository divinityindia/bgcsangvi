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
		.row{
/* 			min-height:250px; */
		}
		.panel-body{
/* 			border:1px solid #428bca; */
/* 			padding: 5px; */
/* 			border-radius:0px 0px 5px 5px; */
		}
		table{
			width:100%
		}
		table td{
			border-bottom:1px solid #aaa;
			font-size:0.9em;
			text-align: left;
			vertical-align: middle;
			height: 150px;
		}
		table td img{
			width:100%;
		}
		table td:nth-child(1){
			width: 20%
		}
		table td:nth-child(2){
			padding-left:8px;
		}
		.panel{
/* 			border:none; */
/* 			margin: 5px 0px; */
/* 			border-bottom: 1px solid #aaa; */
/* 			border-radius:0px 0px 5px 5px; */
/* 			box-shadow: 0px 0px 10px 2px #aaa; */
		}
		.col-md-6{
			border:0px solid #aaa;
		}
		.inDiv{
			width:100%;
			line-height: 1.5;
		}
		.name{
			color:brown;font-weight: bold;
			font-size: 1.2em;
		}
		.overHidden{
			font-size: 0.9em;
		}
		.fa {
			width:20px;
		}
	</style>
  <div class="container" style="padding:10px auto;">
  <br/>
  
  	<div style="border:0px solid #aaa;text-align: center">
			<h3 style="color: #43577B;font-weight: bold;">Emirate Professors</h3>
  	</div>

	<div style="border:0px solid #aaa;width:90%;margin: auto">


		<c:forEach var="rec" items="${hm}" varStatus="i">
			<c:if test="${i.count % 2 == 1}">
				<div class="row" >
			</c:if>

				 <div class="col-xs-12 col-md-6">
			      	<table>
			      		<tr>
			      			<td >
			      				<c:choose>
			      					<c:when test="${rec.value.photo == null}">
			      						<div style="background: #eeeeeeaa;min-height:80%;width:100%"></div>
			      					</c:when>
			      					<c:otherwise>
			      						<img src="${s3pat}EProfessor/${rec.key}/photo/${rec.value.photo}" alt="" />
			      					</c:otherwise>
			      				</c:choose>

<!-- 			      			<div style="background: #eeeeeeaa;min-height:80%;width:100%"> -->

<!-- 			      				</div> -->
			      			</td>
							<td>
								<div class="inDiv name">${rec.value.name}</div><br/>
								<div class="inDiv "><i class="fa fa-phone" aria-hidden="true"></i>  ${rec.value.phno} </div>
								<div class="inDiv "><i class="fa fa-envelope" aria-hidden="true"></i>  ${rec.value.email} </div>
								<div class="inDiv overHidden"><i class="fa fa-globe" aria-hidden="true"></i>  <a href="${baseURL}Emirate-Professor/ProfessorInfo?id=${rec.key}" target="_blank">${baseURL}Emirate-Professor/ProfessorInfo?id=${rec.key}</a> </div>
							</td>
			      		</tr>
			      	</table>
	        </div>

			<c:if test="${i.count % 2 == 0}">
				</div>
			</c:if>

		</c:forEach>

		</div>


  		<br/><br/><br/><br/><br/><br/><br/><br/><br/>

<!--   		<div class="row" > -->
<!-- 	        <div class="col-xs-12 col-md-6"> -->
<!-- 			      	<table> -->
<!-- 			      		<tr> -->
<!-- 			      			<td> -->
<!-- 			      			<div style="background: #eeeeeeaa;height:80%;width:100%"></div> -->
<!-- <!-- 			      				<img src="images/office/1.jpg" alt="" /> -->
<!-- 			      			</td> -->
<!-- 							<td> -->
<!-- 								<div class="inDiv name">NAME</div> -->
<!-- 								<div class="inDiv "><i class="fa fa-phone" aria-hidden="true"></i>  25659797/25659191 </div> -->
<!-- 								<div class="inDiv "><i class="fa fa-envelope" aria-hidden="true"></i>  abc@abc.com </div> -->
<!-- 								<div class="inDiv "><i class="fa fa-globe" aria-hidden="true"></i>  www.abc.com </div> -->
<!-- 							</td> -->
<!-- 			      		</tr> -->
<!-- 			      	</table> -->
<!-- 	        </div> -->
<!-- 	        <div class="col-xs-12 col-md-6"> -->
<!-- 		      	<table> -->
<!-- 		      		<tr> -->
<!-- 		      			<td> -->
<!-- 		      				<img src="images/office/2.jpg" alt="" /> -->
<!-- 		      			</td> -->
<!-- 						<td> -->
<!-- 							<b>Contact No:</b>  020-25400279  <br/> -->
<!-- 							<b>DOB:</b> 03 Apr 1963 <br/><br/> -->
<!-- 							<b>Address :</b><br/> -->
<!-- 							D-34, Swapnashilp Co-op Hous. Society, Sr. No. 19/3, Ganeshnagar, Kothrud, Pune - 411 029 -->
<!-- 						</td> -->
<!-- 		      		</tr> -->
<!-- 		      	</table> -->
<!-- 	        </div> -->
<!-- 	</div> -->

	</div>


	<br/>

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
