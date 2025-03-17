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

<style>
	.input-field{
		color:#000;
		font-weight:bold;
		width:100%;
		padding:10px;
		margin-bottom:15px;
 		border:1px solid #f4e1d2;
		background-color: #fefbd8;
		border-radius:5px;
		transition: background .5s;

	}
	.input-field:FOCUS {
	background-color: #d5f4e6;//rgb(236,240,241);
	border:1px solid rgb(136,140,141);
	border-radius:0px;
}
</style>
</head>
<body>

	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse" style="padding-top:0px">
		<div class="container" style="width: 100%;margin: 0px;padding-left: 0px;padding-right: 0px;">

			<jsp:include page="header2.jsp"></jsp:include>

			<c:if test="${sessionScope.UID==null}">
				<c:redirect url="error.jsp"></c:redirect>
			</c:if>

			<jsp:include page="menu.jsp"></jsp:include>

			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<!-- Header -->



  <div class="container" style="padding: 10px;">

  <style>
		.planeTbl td, .planeTbl tr:LAST-CHILD td{
  			border:none;
			text-align: left;
			padding:5px 10px;
		}
		.planeTbl tr:HOVER {
			background: transparent;
		}
		span.req{
			color:red;

		}
		textarea.form-control {
		    height: 100px;
		    line-height: 1.5;
		}
	</style>

  <div style="border:0px solid #aaa;padding:0px;border-radius:5px;text-align: center">
  		<h3 style="line-height: 0px;color: #43577B;font-weight: bold;">Update Emirate Professor Info</h3>
  		<br/>
  			<form action="" method="post" enctype="multipart/form-data" >

  			<table class="planeTbl" style="width:100%">

  				<tr>
  					<td>Name <span class="req">*</span></td>
  					<td>
  						<input type="text" required name="name" class="form-control" id="name" placeholder="Name" autocomplete="off" value="${info.name }"/>
  					</td>
  				</tr>
  				<tr>
  					<td width="10%">User Name <span class="req">*</span></td>
  					<td width="40%"><input type="text" required name="username" class="form-control" id="username" onblur="ChkDuplicateUser(this)" placeholder="User Name" autocomplete="off"  value="${info.userName }"/> </td>
  					<td width="10%">Password <span class="req">*</span></td>
  					<td width="40%">
  						<input type="password" required name="password" class="form-control" id="password" placeholder="Passward" autocomplete="new-password"/>
  					</td>
  				</tr>
  				<tr>
  					<td>Contact No. <span class="req">*</span></td>
  					<td><input type="text" name="phno" required class="form-control" id="phno" placeholder="Contact no."   value="${info.phno}"/> </td>
  					<td>E-Mail  <span class="req">*</span></td>
  					<td><input type="email"  name="email" required class="form-control" id="email" placeholder="Email" value="${info.email }"/></td>
  				</tr>
  				<tr>
	  				<td>UpdatePhoto</td>
	  				<td>
	  					<div style="width:100%">
	  						<div style="display: inline-block;background-color: #eee;width:80px;height:80px">
	  							<img alt="" src="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/EProfessor/${info.ID}/photo/${info.photo }" style="max-width: 80px; max-height: 80px">
							</div>
							<div style="display: inline-block;width:calc(100% - 83px);overflow: hidden;vertical-align: middle;">
	  							<input type="file" name="photo" class="form-control123" style="line-height: 2;width:100% ;" accept="image/*" />
	  						</div>
	  					</div>
	  				</td>
	  				<td>About Us</td>
	  				<td><textarea name="aboutus" class="form-control" style="resize:none">${info.aboutus }</textarea>  </td>
  				</tr>
  				<tr>
  					<td>Research Undertaken</td>
	  				<td><textarea name="research" class="form-control" style="resize:none">${info.research }</textarea>  </td>
	  				<td>Publications</td>
	  				<td><textarea name="publications" class="form-control" style="resize:none">${info.publication }</textarea>  </td>
  				</tr>


  				<tr>
  					<td></td>
  					<td>
  						<input type="hidden" value="${info.ID }" name="ID"/>
  						<input type="submit" value="Submit" class="btn">
  					</td>
  				</tr>

  			</table>



  			</form>
  		</div>





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
