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

	<link rel="stylesheet" href="../style/style.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
	$( document ).ready(function() {

		if($('#resultDelete').val() == '1'){
			$("#DeleteSucc").click();
		}
		if($('#resultDelete').val() == '0'){
			alert("Something went wrong. Try again");
		}
	});
	</script>


	<script>
		function chkDisableDelBtn(){
			if ($('.delChkBox:checked').length) {
				$('#deleteButton').removeAttr('disabled');
			} else {
				$('#deleteButton').attr('disabled', 'disabled');
			}

		}
	</script>
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


	<style>
		.innerTbl td{
			text-align: left;
			padding:3px;
		}
		table.Vscroll tbody td table.innerTbl tbody
		{
			overflow-y: visible;
		}
		table.innerTbl, table.innerTbl tr, table.innerTbl td, table.innerTbl td:last-child, table.innerTbl td:nth-last-child(2){
			border:none;
		}
		table.innerTbl tr{
 			border-bottom : 1px solid #ddd;
		}
		table.innerTbl tr:last-child{
			border:none;
		}
	</style>
  <div class="container" style="padding:10px auto;">

		<br/><br/>
		<form action="" method="post">
  		<table class="Vscroll" style="height: 550px;">
  			<thead>
  				<tr>
  					<th style="width:80px">S.No.</th>
  					<th style="width:120px">Photo</th>
  					<th>Details</th>
  					<th style="width:50px">Delete</th>
  				</tr>
  			</thead>
  			<c:forEach var="rec" items="${hm }" varStatus="i">
				<tr>
					<td style="width:80px">${i.count}</td>
					<td style="width:120px">
						<c:choose>
							<c:when test="${rec.value.photo !='' }">
								<img alt="" src="${s3path}alumni/${rec.key}/${rec.value.photo}" style="width:100px;border:1px solid #aaa;">
							</c:when>
							<c:otherwise>
								<div style="width: 100px;height:100px;border:1px solid #aaa;margin: auto ">

								</div>
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<table class="innerTbl">
							<tr>
								<td><b>Name : </b>${rec.value.name}</td>
								<td><b>DOB : </b>${rec.value.dob}</td>
							</tr>
							<tr>
								<td><b>Phone : </b>${rec.value.phone}</td>
								<td><b>Email ID : </b>${rec.value.email}</td>
							</tr>
							<tr>
								<td colspan="2"><b>Current Address : </b><br/>${rec.value.caddress }</td>
							</tr>
							<tr>
								<td colspan="2"><b>Permanent Address : </b><br/>${rec.value.paddress }</td>
							</tr>
							<tr>
								<td><b>Course : </b>${rec.value.course}</td>
								<td><b>Department : </b>${rec.value.dept}</td>
							</tr>
							<tr>
								<td><b>Passing Year : </b>${rec.value.pyear}</td>
								<td><b>Occupation : </b>${rec.value.occupation}</td>
							</tr>
							<tr>
								<td colspan="2"><b>Other Occupation(If any) : </b><br/>${rec.value.otherocc }</td>
							</tr>
							<tr>
								<td><b>Name of Organization : </b>${rec.value.nameoforg}</td>
								<td><b>Address of Organization : <br/></b>${rec.value.addressoforg}</td>
							</tr>
							<tr>
								<td colspan="2"><b>Country : </b>${rec.value.country }</td>
							</tr>
						</table>
					</td>
					<td style="width:50px">

						<input type="checkbox" class="delChkBox" name="chkBox" onchange="chkDisableDelBtn()" value="${rec.key}">

					</td>
				</tr>
  			</c:forEach>
  		</table>
  		<br/>
  		<div style="border:0px solid #aaa;text-align: right">
  			<input type="submit" value="Delete Records" class="btn" disabled="disabled" id="deleteButton">

  		</div>
  		</form>

  		<br/><br/>

  </div>



	<button type="button" id="DeleteSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success-delete">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success-delete" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">Record(s) deleted successfully</h3>

					<br/><br/>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn" data-dismiss="modal">   Close  </button>
		        </div>
		      </div>
		    </div>
		  </div>

<input type="hidden" value="${resultDelete}" id="resultDelete"/>
<c:remove var="resultDelete"/>


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
