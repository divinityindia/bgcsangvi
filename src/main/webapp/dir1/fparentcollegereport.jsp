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
	<jsp:include page="title.jsp"></jsp:include>
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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript" src="../js/piechart/fparentcollegereport.js"></script>
<link rel="stylesheet" href="../style/style.css">
 <style>
 	table td{
 		background:#fff;
 		padding:3px;
 	}
 	table{
 		width:100%
 	}
 	#topTbl{
		margin: auto;
		width:70%
 	}
 	#topTbl, #topTbltr, #topTbl td{
 		border:none;
 	}
 	#chartTbl td{
 		border:1px solid #3d84e6;
 	}
 </style>
</head>
<body>

	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse" style="padding-top:0px">
		<div class="container" style="width: 100%;margin: 0px;padding-left: 0px;padding-right: 0px;">

<%-- 			<jsp:include page="header.jsp"></jsp:include> --%>

			<c:import url="header.jsp"></c:import>
			<c:if test="${sessionScope.sToken==null}">
				<c:redirect url="../error.jsp"></c:redirect>
			</c:if>
			<jsp:include page="menu.jsp"></jsp:include>

			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<!-- Header -->



  <div class="container" style="padding:10px auto;">




       				<!-- Q1 -->
       				<input type="hidden" id="q1a1" value="${q1a1}">
       				<input type="hidden" id="q1a2" value="${q1a2}">
       				<input type="hidden" id="q1a3" value="${q1a3}">
       				<input type="hidden" id="q1a4" value="${q1a4}">
       				<input type="hidden" id="q1a5" value="${q1a5}">

       				<!-- Q2 -->
       				<input type="hidden" id="q2a1" value="${q2a1}">
       				<input type="hidden" id="q2a2" value="${q2a2}">
       				<input type="hidden" id="q2a3" value="${q2a3}">
       				<input type="hidden" id="q2a4" value="${q2a4}">
       				<input type="hidden" id="q2a5" value="${q2a5}">

       				<!-- Q3 -->
       				<input type="hidden" id="q3a1" value="${q3a1}">
       				<input type="hidden" id="q3a2" value="${q3a2}">
       				<input type="hidden" id="q3a3" value="${q3a3}">
       				<input type="hidden" id="q3a4" value="${q3a4}">
       				<input type="hidden" id="q3a5" value="${q3a5}">

       				<!-- Q4 -->
       				<input type="hidden" id="q4a1" value="${q4a1}">
       				<input type="hidden" id="q4a2" value="${q4a2}">
       				<input type="hidden" id="q4a3" value="${q4a3}">
       				<input type="hidden" id="q4a4" value="${q4a4}">
       				<input type="hidden" id="q4a5" value="${q4a5}">

       				<!-- Q5 -->
       				<input type="hidden" id="q5a1" value="${q5a1}">
       				<input type="hidden" id="q5a2" value="${q5a2}">
       				<input type="hidden" id="q5a3" value="${q5a3}">
       				<input type="hidden" id="q5a4" value="${q5a4}">
       				<input type="hidden" id="q5a5" value="${q5a5}">

       				<!-- Q6 -->
       				<input type="hidden" id="q6a1" value="${q6a1}">
       				<input type="hidden" id="q6a2" value="${q6a2}">
       				<input type="hidden" id="q6a3" value="${q6a3}">
       				<input type="hidden" id="q6a4" value="${q6a4}">
       				<input type="hidden" id="q6a5" value="${q6a5}">

       				<!-- Q7 -->
       				<input type="hidden" id="q7a1" value="${q7a1}">
       				<input type="hidden" id="q7a2" value="${q7a2}">
       				<input type="hidden" id="q7a3" value="${q7a3}">
       				<input type="hidden" id="q7a4" value="${q7a4}">
       				<input type="hidden" id="q7a5" value="${q7a5}">

       				<!-- Q8 -->
       				<input type="hidden" id="q8a1" value="${q8a1}">
       				<input type="hidden" id="q8a2" value="${q8a2}">
       				<input type="hidden" id="q8a3" value="${q8a3}">
       				<input type="hidden" id="q8a4" value="${q8a4}">
       				<input type="hidden" id="q8a5" value="${q8a5}">

       				<!-- Q9 -->
       				<input type="hidden" id="q9a1" value="${q9a1}">
       				<input type="hidden" id="q9a2" value="${q9a2}">
       				<input type="hidden" id="q9a3" value="${q9a3}">
       				<input type="hidden" id="q9a4" value="${q9a4}">
       				<input type="hidden" id="q9a5" value="${q9a5}">

       				<!-- Q10 -->
       				<input type="hidden" id="q10a1" value="${q10a1}">
       				<input type="hidden" id="q10a2" value="${q10a2}">
       				<input type="hidden" id="q10a3" value="${q10a3}">
       				<input type="hidden" id="q10a4" value="${q10a4}">
       				<input type="hidden" id="q10a5" value="${q10a5}">


       				<div id="block1">
  						<p id="success" style="display: none;"></p>

						<center>

								<h3>Parent - About College Feedback</h3>
								<button id="printBtn" type="button">PRINT</button><br/>
									<br/>
									<div id="printBlock">
									<table class="info" id="chartTbl" style="border-collapse: collapse;">
										<thead>
										<tr>
											<th style="font-size: medium;font-weight: bold;">${feedback.name} - ${feedback.duration}</th>
										</tr>
										<tr>
											<th style="font-size: small;font-weight: bold;"><br/>Parent - About College Feedback - Total: ${total}</th>
										</tr>
										</thead>
										<tbody>
										<tr>
											<td><div id="q1"></div></td>
										</tr>
										<tr>
											<td><div id="q2"></div></td>
										</tr>
										<tr>
											<td><div id="q3"></div></td>
										</tr>
										<tr>
											<td><div id="q4"></div></td>
										</tr>
										<tr>
											<td><div id="q5"></div></td>
										</tr>
										<tr>
											<td><div id="q6"></div></td>
										</tr>
										<tr>
											<td><div id="q7"></div></td>
										</tr>
										<tr>
											<td><div id="q8"></div></td>
										</tr>
										<tr>
											<td><div id="q9"></div></td>
										</tr>
										<tr>
											<td><div id="q10"></div></td>
										</tr>
										</tbody>
									</table>

									<h3 style="text-align: center;">Detailed Report</h3>
									<table id="detailTbl" style="border-collapse: collapse;width: 100%">
										<thead>
											<tr style="background: #f1f9ec">
												<th style="font-weight: bold;border: 1px solid #000000;text-align: center;width: 5%">Sr. No</th>
												<th style="font-weight: bold;border: 1px solid #000000;text-align: center;">Parent Name</th>
												<th style="font-weight: bold;border: 1px solid #000000;text-align: center;">Contact</th>
												<th style="font-weight: bold;border: 1px solid #000000;text-align: center;">Name of Ward</th>
												<th style="font-weight: bold;border: 1px solid #000000;text-align: center;">Department</th>
												<th style="font-weight: bold;border: 1px solid #000000;text-align: center;">A. Y.</th>
												<th style="font-weight: bold;border: 1px solid #000000;text-align: center;">Course</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="cat" items="${list}" varStatus="row">
												<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#f1f9ec';" style="background: #f1f9ec">
													<td style="border: 1px solid #000000;text-align: center;">${row.count}</td>
													<td style="border: 1px solid #000000;text-align: justify;padding:2px 5px 2px 5px;">${cat.parentname}</td>
													<td style="border: 1px solid #000000;text-align: center;">${cat.contact}</td>
													<td style="border: 1px solid #000000;text-align: justify;padding:2px 5px 2px 5px;">${cat.wardname}</td>
													<td style="border: 1px solid #000000;text-align: center;">${cat.department}</td>
													<td style="border: 1px solid #000000;text-align: center;">${cat.academicyear}</td>
													<td style="border: 1px solid #000000;text-align: center;">${cat.course}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

									</div>
						</center>

				</div>
				<br/><br/><br/>
<!-- 				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->


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
