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
<script type="text/javascript">
			$(document).ready(function(){

				$("#addeditbutton").text("Create Feedback")
				$("#formactionadd").val("add");

				//Delete button function

 				//Reset button function
				$('#resetbutton').click(function() {
					$('#caption').val("");
					$("#addeditbutton").text("Create Feedback")
					$("#formactionadd").val("add");
 				});

				//editlink onclick function

				$('.editlink').click(function() {

					var $this = $(this);
		            var fid = $this.data('p1');
		            var name= $this.data('p2');
		            var duration= $this.data('p3');
		            $("#id").val(fid);
					$('#name').val(name);
					$('#duration').val(duration);
					$("#addeditbutton").text("Save");
					$("#formactionadd").val("edit");
 				});

				$('.deletelink').click(function() {

					var $this = $(this);
		            var fid = $this.data('p1');

		            if (!confirm("Are you sure? All the records related to this feedback will be deleted!")){
					    return false;
					}
		            location.href='deletefeedback?fid='+fid;
 				});

				$('#student').change(function() {

					if($(this).prop("checked") == true){
						$("#studentcollege").prop('checked',true);
						$("#studentteaching").prop('checked',true);
						$("#studentlibrary").prop('checked',true);
						$("#studentalumini").prop('checked',true);
						$("#studentsports").prop('checked',true);
		            }
					else{
						$("#studentcollege").prop('checked',false);
						$("#studentteaching").prop('checked',false);
						$("#studentlibrary").prop('checked',false);
						$("#studentalumini").prop('checked',false);
						$("#studentsports").prop('checked',false);
					}
 				});

 			});
		</script>

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


	       				<c:choose>
  							<c:when test="${param.success eq 1}">
    							<div class="form_success">Success</div>
  							</c:when>
  							<c:when test="${param.success eq 0}">
    							<div class="form_success">Failed...Please try again</div>
  							</c:when>
  							<c:when test="${param.success eq 2}">
    							<div class="form_success">Feedback deleted successfully</div>
  							</c:when>
  							<c:when test="${param.success eq 3}">
    							<div class="form_success">Error please try again!</div>
  							</c:when>
  							<c:when test="${param.success eq 4}">
    							<div class="form_success">Edit Successful</div>
  							</c:when>
  							<c:when test="${param.success eq 5}">
    							<div class="form_success">Edit failed</div>
  							</c:when>
  						</c:choose>

       				<h2>${feedback.name} - ${feedback.duration}</h2>
       				<div id="block1">
  						<p id="success" style="display: none;"></p>

						<center>

									<table class="info">
										<tr>
											<th>Sr. No</th>
											<th>Category</th>
											<th>Report</th>
										</tr>
										
										    <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td>1</td>
											<td> Teaching - Learning and Evaluation</td>
											<td><a href="fstudentcollegereport?fid=${feedback.fid}">View Report</a></td>
										    </tr>
										   
									
										   <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td>2</td>
											<td>Student - Feedback About Teachers</td>
											<td><a href="fstudentteachingreport?fid=${feedback.fid}">View Report</a></td>
										    </tr>
									
										   <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td>3</td>
											<td>Employer - Feedback About Student</td>
											<td><a href="femployeremployeereport?fid=${feedback.fid}">View Report</a></td>
										   </tr>
									
										   <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td>4</td>
											<td>Parent Feedback About College</td>
											<td><a href="fparentcollegereport?fid=${feedback.fid}">View Report</a></td>
										   </tr>
									
								
										   <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td>5</td>
											<td>Student Feedback About College</td>
											<td><a href="fteachercollegereport?fid=${feedback.fid}">View Report</a></td>
										   </tr>
								
										
										
										
										
										




<!-- 										<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
<!-- 											<td>3</td> -->
<!-- 											<td>Student - About Library</td> -->
<%-- 											<td><a href="#?fid=${feedback.fid}">View Report</a></td> --%>
<!-- 										</tr> -->
<!-- 										<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
<!-- 											<td>4</td> -->
<!-- 											<td>Student - About Alumini</td> -->
<%-- 											<td><a href="#?fid=${feedback.fid}">View Report</a></td> --%>
<!-- 										</tr> -->
<!-- 										<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
<!-- 											<td>5</td> -->
<!-- 											<td>Student - About Sports</td> -->
<%-- 											<td><a href="#?fid=${feedback.fid}">View Report</a></td> --%>
<!-- 										</tr> -->
										
									</table>
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
