<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#date" ).datepicker(
    		{ dateFormat: 'dd/mm/yy' }
    );
  } );
  </script>

<script>
	$( document ).ready(function() {
		if($('#result').val() == '1'){
			$("#CrSucc").click();
		}
		if($('#result').val() == '0' ){
			alert("Something went wrong. Try again");
		}

	});
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

<style>
	p{
		text-align: justify;
	}
	.planeTbl td, .planeTbl tr:LAST-CHILD td{
		border:none;
		text-align: left;
		padding:5px 10px;
	}
	.planeTbl tr:HOVER {
		background: transparent;
	}
	.req{
		color:red;
	}
</style>
	<br/>
  <div class="container">

		<div style="text-align: center">
  			<h3 style="line-height: 0px;color: #43577B;font-weight: bold;">Alumni Registration</h3>
  		</div>
  		<br/>
		<form action="" method="post" enctype="multipart/form-data">
		<table class="planeTbl" style="width:100%">
			<tr>
				<td colspan="4" style="text-align: center;background-color: #eee;color: #442056;"><b>Personal Information</b></td>
			</tr>
			<tr>
				<td>Name Of Candidate <span class="req">*</span></td>
				<td><input type="text" name="name" class="form-control" required> </td>
				<td>Email ID (userID) <span class="req">*</span></td>
				<td><input type="email" name="email" class="form-control" required> </td>
			</tr>
			<tr>
				<td>Password<span class="req">*</span></td>
				<td><input type="password" name="password" class="form-control" required> </td>
				<td>Confirm Password <span class="req">*</span></td>
				<td><input type="password"  class="form-control" required> </td>
			</tr>
			<tr>
				<td>DOB <span class="req">*</span></td>
				<td><input type="text" name="dob" id="date" class="form-control" required> </td>
				<td>Upload Photo </td>
				<td><input type="file" name="photo" > </td>
			</tr>
			<tr>
				<td>Gender <span class="req">*</span></td>
				<td>
					<input type="radio" name="gender" required value="Male"> Male
					<input type="radio" name="gender" value="Female"> Female
				</td>
				<td>Phone <span class="req">*</span></td>
				<td><input type="text" name="phone" class="form-control" required> </td>
			</tr>
			<tr>
				<td>Current Address </td>
				<td><textarea rows="" cols=""name="caddress" class="form-control" style="resize:none"></textarea> </td>
				<td>Permanent Address </td>
				<td><textarea rows="" cols=""name="paddress" class="form-control" style="resize:none"></textarea> </td>
			</tr>

			<tr>
				<td colspan="4" style="text-align: center;;background-color: #eee;color: #442056;"><b>Educational Information</b></td>
			</tr>
			<tr>
				<td>Course <span class="req">*</span></td>
				<td><input type="text" name="course" class="form-control" required> </td>
				<td>Depatrment <span class="req">*</span></td>
				<td>
					<select class="form-control" required name="dept" >
						<option value="" selected="selected">~~ Choose~~</option>
						<c:forEach var="dept" items="${depts}" >
						<option value="${dept.key}">${dept.value}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>Pass out Year <span class="req">*</span></td>
				<td>
					<select class="form-control" required name="pyear" >
						<option value="" selected="selected">~~ Choose~~</option>
						<option>1990</option><option>1991</option><option>1992</option>
						<option>1993</option><option>1994</option><option>1995</option>
						<option>1996</option><option>1997</option><option>1998</option>
						<option>1999</option><option>2000</option><option>2001</option>
						<option>2002</option><option>2003</option><option>2004</option>
						<option>2005</option><option>2006</option><option>2007</option>
						<option>2008</option><option>2009</option><option>2010</option>
						<option>2011</option><option>2012</option><option>2013</option>
						<option>2014</option><option>2015</option><option>2016</option>
						<option>2017</option><option>2018</option><option>2019</option>
					</select>
				</td>
			</tr>

			<tr>
				<td colspan="4" style="text-align: center;;background-color: #eee;color: #442056;"><b>Professional Information</b></td>
			</tr>
			<tr>
				<td>Occupation <span class="req">*</span></td>
				<td>
					<select class="form-control" required name="occupation" >
						<option value="" selected="selected">~~ Choose~~</option>
						<option>Entrepreneur</option>
						<option>Educator</option>
						<option>Service</option>
						<option>Other</option>
					</select>
				</td>
				<td>Other Occupation (If any) </td>
				<td><input type="text" name="otherocc" class="form-control"> </td>
			</tr>
			<tr>
				<td>Organization Name <span class="req">*</span></td>
				<td><input type="text" name="nameoforg" class="form-control" required> </td>
				<td rowspan="2">Organization Address  <span class="req">*</span></td>
				<td rowspan="2">
						<textarea rows="" cols=""name="addressoforg" class="form-control" style="resize:none"></textarea>
				</td>
			</tr>
			<tr>
				<td>Country <span class="req">*</span></td>
				<td>
					<select class="form-control" required name="country" >
						<option value="" selected="selected">~~ Choose~~</option>
						<option value="India">India</option>
										<option value="Afghanistan">Afghanistan</option>
										<option value="Argentina">Argentina</option>
										<option value="Australia">Australia</option>
										<option value="Austria">Austria</option>
										<option value="Bangladesh">Bangladesh</option>
										<option value="Belgium">Belgium</option>
										<option value="Brazil">Brazil</option>
										<option value="China">China</option>
										<option value="Cuba">Cuba</option>
										<option value="Czech Republic">Czech Republic</option>
										<option value="Denmark">Denmark</option>
										<option value="Egypt">Egypt</option>
										<option value="France">France</option>
										<option value="Germany">Germany</option>
										<option value="Greece">Greece</option>
										<option value="Hungary">Hungary</option>
										<option value="India">India</option>
										<option value="Indonesia">Indonesia</option>
										<option value="Iran">Iran</option>
										<option value="Iraq">Iraq</option>
										<option value="Ireland">Ireland</option>
										<option value="Israel">Israel</option>
										<option value="Italy">Italy</option>
										<option value="Japan">Japan</option>
										<option value="Kenya">Kenya</option>
										<option value="Kuwait">Kuwait</option>
										<option value="Malaysia">Malaysia</option>
										<option value="Maldives">Maldives</option>
										<option value="Mongolia">Mongolia</option>
										<option value="Nepal">Nepal</option>
										<option value="Netherlands">Netherlands</option>
										<option value="New Zealand">New Zealand</option>
										<option value="Nigeria">Nigeria</option>
										<option value="North Korea">North Korea</option>
										<option value="Norway">Norway</option>
										<option value="Pakistan">Pakistan</option>
										<option value="Panama">Panama</option>
										<option value="Paraguay">Paraguay</option>
										<option value="Peru">Peru</option>
										<option value="Qatar">Qatar</option>
										<option value="Saudi Arabia">Saudi Arabia</option>
										<option value="Serbia">Serbia</option>
										<option value="Singapore">Singapore</option>
										<option value="South Africa">South Africa</option>
										<option value="South Korea">South Korea</option>
										<option value="Spain">Spain</option>
										<option value="Sri Lanka">Sri Lanka</option>
										<option value="Switzerland">Switzerland</option>
										<option value="Syria">Syria</option>
										<option value="Taiwan">Taiwan</option>
										<option value="Turkey">Turkey</option>
										<option value="United Arab Emirates">United Arab Emirates</option>
										<option value="United Kingdom">United Kingdom</option>
										<option value="United States of America">United States of America</option>
										<option value="Uruguay">Uruguay</option>
										<option value="Zimbabwe ">Zimbabwe </option>
					</select>
				</td>
			</tr>

			<tr>
				<td></td>
				<td>
					<input type="submit" value=" ADD " class="btn" />
				</td>
			</tr>
		</table>
		</form>

  </div>
		<button type="button" id="CrSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">Registration Done Successfully</h3>

					<br/><br/>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn" data-dismiss="modal">   Close  </button>
		        </div>
		      </div>
		    </div>
		  </div>

<input type="hidden" value="${result}" id="result"/>
<c:remove var="result"/>


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


</body>
</html>
