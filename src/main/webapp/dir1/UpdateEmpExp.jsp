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



<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
        $(function() {
            $( "#datepicker-1" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#datepicker-2" ).datepicker({
            	dateFormat:"dd/MM/yyyy",
            	changeMonth: true,
      	      changeYear: true,
    	      yearRange: "1942:2050",
    		  dateFormat:"dd/mm/yy"
            });
            $( "#fromdate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#todate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#krdate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
         });
        </script>
<script src="../js/updateemployeeexp.js"></script>


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


  <div class="container" style="padding:10px;">

			<jsp:include page="UpdateEmpNav.jsp"></jsp:include>

				<style>
					.required{
						color: red;
					}
					.employeeprofile:nth-child(2) td{
						border:none;
						paddinG:5px;
					}
					.employeeprofile:nth-child(2) th{
						background: transparent;
						border: none;
						text-align: left;
						color: #000;
						font-size: 1.2em;
					}
					.employeeprofile:nth-child(2){
						border:1px solid #3d84e6;
					}
					.employeeprofile:nth-child(2) tr:HOVER {
						background-color: transparent;
					}
					.employeeprofile:nth-child(2) td:nth-child(1),.employeeprofile:nth-child(2) td:nth-child(3){
						text-align: right;
					}
				</style>
				<h2>Update Employee Experience</h2>
       				<div id="expsuccess" class="success"></div>

       				<div id="block3" style="text-align: center;">


						<table class="employeeprofile" id="usertable" style="margin-top: 15px;width: 100%">
							<thead>
							<tr>
								<th style="font-weight: bold;">Orgainzation</th><th style="font-weight: bold;">Website</th><th style="font-weight: bold;">Designation</th><th style="font-weight: bold;">Job Profile</th><th style="font-weight: bold;">From Date</th><th style="font-weight: bold;">To Date</th><th style="font-weight: bold;">Achievement</th><th style="font-weight: bold;">Delete</th>
							</tr>
							</thead>
							<tbody id="usertablebody">
							<c:forEach var="cat" items="${expList}">
								<tr id="e${cat.expId}">
									<td>${cat.eorg}</td><td>${cat.eurl}</td><td>${cat.designation}</td><td>${cat.jobprofile}</td><td><fmt:formatDate value="${cat.fromDate}" pattern="dd-MM-yyyy"/></td><td><fmt:formatDate value="${cat.toDate}" pattern="dd-MM-yyyy"/></td><td>${cat.achievement}</td><td><a href="javascript:;" data-p1="${cat.expId}" class="deletelinkExp">Delete</a></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
       					<img src="../icons/loading3.gif" id="load1" width="18" height="18" alt="loading3" style="margin: 0px;display: none;left: 50%"/>
  						<form action="" method="post" id="form3">
  						<input type="hidden" class="fid" value="${efid}" name="fid"></input>
  						<table class="employeeprofile" id="usertable" style="margin-top: 15px;width: 100%">
								<tr>
									<th colspan="4" style="font-weight: bold;">
										Add more experience :
									</th>
								</tr>
								<tr>
									<td class="exlabel">Organization:<span class="required">*</span></td>
									<td>
										<input type="text" name="eorg" id="eorg"  placeholder="Organization" class="simpletext form-control" required="required">
									</td>
									<td class="exlabel">Website</td>
									<td>
										<input type="text" name="eurl" id="eurl"  placeholder="Website URL" class="simpletext form-control">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Designation:<span class="required">*</span></td>
									<td>
										<input type="text" name="designation" id="designation"  placeholder="Designation" class="simpletext form-control" required="required">
									</td>
									<td class="exlabel">Job Profile</td>
									<td>
										<input type="text" name="jobprofile" id="jobprofile"  placeholder="Job Profile" class="simpletext form-control">
									</td>

								</tr>
								<tr>
									<td class="exlabel">From:</td>
									<td>
										<input type="text" class="simpletext form-control" placeholder="mm/dd/yyyy" name="fromdate" id="fromdate" readonly="readonly">
									</td>
									<td class="exlabel">To:</td>
									<td>
										<input type="text" class="simpletext form-control" placeholder="mm/dd/yyyy" name="todate" id="todate" readonly="readonly">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Achievement:</td>
									<td colspan="1">
										<input type="text" name="achi" id="achi"  placeholder="Achievement" class="simpletext form-control">
									</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td colspan="4" style="text-align: center;"><button type="submit" id="save3" class="btn">Save Details</button></td>
								</tr>
							</table>
							</form>
						</div>





  </div>

<button type="button" id="CrSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">Profile updated successfully</h3>

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
