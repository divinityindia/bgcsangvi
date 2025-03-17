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



  <div class="container" style="padding:10px auto;text-align: center">

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

       				<h2>Feedback Master</h2>
       				<div id="block1" >
  						<p id="success" style="display: none;"></p>
  						<form action="feedbackmaster" method="post" id="form1">
  						<input type="hidden" name="id" id="id" value=""/>
  						<input type="hidden" name="formaction" id="formactionadd" value="add"/>
  						<table id="topTbl" style="">
  							<tbody id="addcrs">
    						<tr>
								<td class="llabel">Name<span class="required">*</span></td>
								<td>
									<input type="text" name="name" id="name" class="simpletext form-control" placeholder="Name for Feedback" required="required"/>
								</td>
								<td class="llabel">Duration<span class="required">*</span></td>
								<td>
									<input type="text" name="duration" id="duration" class="simpletext form-control" placeholder="Duration of Feedback" required="required"/>
								</td>
							
							</tr>
							<tr>
								<td colspan="4" style="text-align: center;"><button type="submit" id="addeditbutton" class="btn">Create Feedback</button>&nbsp;&nbsp;&nbsp;<button type="reset" id="resetbutton" form="#form1" class="btn">Reset</button></td>
							</tr>
						</table>
						</form>
						<p style="color: red;padding: 7px;border: dashed;" class="quadrat">
								          <b>Important Note:-</b><br>
								           1) Only one feedback active at time.&nbsp;&nbsp;
								           2) Active feedback system enable only (At a time only one check box select)&nbsp;&nbsp;
								           3) Maintain same Academic Year in all feedback. <br>
								           4) Once all feedback get complete then disable all feedback system.
								     </p>
						<center>

						<h3>Feedbacks Created</h3>
						<form action="feedbackmaster" method="post">
						<table class="info">
							<tr>
								<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr. No</th>
								<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Name</th>
								<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Duration</th>
								<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Reports</th>
								<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Active</th>
								<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete Feedback</th>
								<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
							</tr>
							<c:forEach var="cat" items="${requestScope.list}" varStatus="loop">
							<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
								<td>${loop.count}</td>
								<td>${cat.name}</td>
								<td>${cat.duration}</td>
								<td><a href="freportmaster?fid=${cat.fid}">Reports</td>
								<td>
									<c:choose>
										<c:when test="${cat.active}">
											Active
										</c:when>
										<c:otherwise>
											<a href="makefeedbackactive?fid=${cat.fid}">Make Active</a>
										</c:otherwise>
									</c:choose>
								</td>
								<td><a href="javascript:;" data-p1="${cat.fid}" class="deletelink">Delete</a></td>
								<td><a href="javascript:;" data-p1="${cat.fid}" data-p2="${cat.name}" data-p3="${cat.duration}" class="editlink">Edit</a></td>
							</tr>
							</c:forEach>
						</table>

						</form>
						</center>
						<br/>

						<center>
						<c:choose>
						<c:when test="${param.fstatus eq 1}">
    							<div class="form_success">Feedback System status changed</div>
  							</c:when>
  							<c:when test="${param.fstatus eq 0}">
    							<div class="form_success">Feedback System status change failed</div>
  							</c:when>
  							<c:when test="${param.fsystem eq 1}">
    							<div class="form_success">Feedback System updated successfully</div>
  							</c:when>
  							<c:when test="${param.fsystem eq 0}">
    							<div class="form_success">Feedback System update failed</div>
  							</c:when>
  						</c:choose>


						<c:choose>
							<c:when test="${system.status}">
								<h3>FEEDBACK SYSTEM IS ENABLED: <a href="enabledisablefeedback">DISABLE</a></h3>

								<form action="enabledisablefeedback" method="post">
									<table class="info">
										<tr>
											<th>Category</th>
											<th>Sub Category</th>
											<th>Disable/Enable</th>
										</tr>
<!-- 										<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
<!-- 											<td>I. From Student</td> -->
<!-- 											<td>-</td> -->
<!-- 											<td><input type="checkbox" id="student" name="student" class="chk"><br/>(Check All)</td> -->
<!-- 										</tr> -->
										<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td>I. From Student</td>
											<td>Teaching - Learning and Evaluation</td>
											<td><input type="checkbox" id="studentcollege" value="${system.studentcollege}" name="studentcollege" <c:if test="${system.studentcollege== 'true'}">checked="checked"</c:if> class="chk"></td>
										</tr>
										<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td></td>
											<td>Student Feedback About Teachers </td>
											<td><input type="checkbox" id="studentteaching" value="${system.studentteaching}" name="studentteaching" <c:if test="${system.studentteaching== 'true'}">checked="checked"</c:if> class="chk"></td>
										</tr>
										<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td></td>
											<td>Student Feedback About College</td>
											<td><input type="checkbox" id="teachercollege" value="${system.teachercollege}" name="teachercollege" <c:if test="${system.teachercollege== 'true'}">checked="checked"</c:if> class="chk"></td>
										</tr>
											<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td>II. From Employer</td>
											<td>Employer Feedback About Student</td>
											<td><input type="checkbox" id="employeremployee" value="${system.employeremployee}" name="employeremployee" <c:if test="${system.employeremployee== 'true'}">checked="checked"</c:if> class="chk"></td>
										</tr>
										<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
											<td>III. From Parent</td>
											<td>Parent Feedback About College</td>
											<td><input type="checkbox" id="parentcollege" value="${system.parentcollege}" name="parentcollege" <c:if test="${system.parentcollege== 'true'}">checked="checked"</c:if> class="chk"></td>
										</tr>
<!-- 										<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
<!-- 											<td></td> -->
<!-- 											<td>3. About Library</td> -->
<%-- 											<td><input type="checkbox" id="studentlibrary" value="${system.studentlibrary}" name="studentlibrary" <c:if test="${system.studentlibrary== 'true'}">checked="checked"</c:if> class="chk"></td> --%>
<!-- 										</tr> -->
<!-- 										<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
<!-- 											<td></td> -->
<!-- 											<td>4. About Alumini</td> -->
<%-- 											<td><input type="checkbox" id="studentalumini" value="${system.studentalumini}" name="studentalumini" <c:if test="${system.studentalumini== 'true'}">checked="checked"</c:if> class="chk"></td> --%>
<!-- 										</tr> -->
<!-- 										<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"> -->
<!-- 											<td></td> -->
<!-- 											<td>5. About Sports</td> -->
<%-- 											<td><input type="checkbox" id="studentsports" value="${system.studentsports}" name="studentsports" <c:if test="${system.studentsports== 'true'}">checked="checked"</c:if> class="chk"></td> --%>
<!-- 										</tr> -->
										
										<tr>
										<td colspan="3">
											<button type="submit" class="btn">Save Changes</button>
										</td>
										</tr>
									</table>
									</form>


							</c:when>
							<c:otherwise>
								<h3>FEEDBACK SYSTEM IS DISABLED: <a href="enabledisablefeedback">ENABLE</a></h3>
							</c:otherwise>
						</c:choose>
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
