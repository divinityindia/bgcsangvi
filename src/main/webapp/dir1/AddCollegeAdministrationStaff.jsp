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
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$( function() {
			$( "#dob" ).datepicker(
				{
					dateFormat: 'dd/mm/yy',
					changeMonth: true,
		      	    changeYear: true,
		      	  yearRange: '1950:2050',
				}
			);
			$( "#doj" ).datepicker(
				{
					dateFormat: 'dd/mm/yy',
					changeMonth: true,
		      	    changeYear: true,
		      	  yearRange: '1950:2050',
				}
			);
		} );
	</script>

	<script>
		$( document ).ready(function() {

			if($('#result').val() == '0'){
				alert("Something went wrong. Try again");
			}
			else if($('#result').val() == ''){
			}
			else if($('#result').val() != '0'){
				$("#CrSucc").click();
				$("#EmpNavDiv").css("display", "block");
			}

		});
		</script>
		
		
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
		function puValsInModel(eid,pdid,sal,fname,mname,lname,deg,qul,emid,mob)
		{ 
			$("#eid").val(eid);
			$("#pdid").val(pdid);
			$("#sal").val(sal);
			 $("#fnm").val(fname);
			$("#mnm").val(mname);
			$("#lnm").val(lname);
			$("#deg").val(deg);
			$("#qul").val(qul);
			$("#emid").val(emid);
			$("#mob").val(mob);
		
			
			
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


<script src="../js/AddEmployee.js"></script>
  <div class="container" style="padding:10px;">

  	<div id="EmpNavDiv" style="text-align:right;display:none">
  		<div style="display: flex">
  		<div style="display:inline-block;background:#e8c396;flex: 1;">

  			<h4>You can proceed for adding info of newly created employee. <b>&#x21E8;</b></h4>
  			<div style="text-align: center;">
  				<h4>OR, add new employee <b>&#x21E9;</b></h4>
  			</div>
  		</div>
  		<div style="display: inline-block;flex: 1">
  			<jsp:include page="UpdateEmpNav.jsp"></jsp:include>
  		</div>
  		</div>
  	</div>

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
	</style>

  		<div style="border:0px solid #aaa;padding:0px;border-radius:5px;text-align: center">
  		<h3 style="line-height: 0px;">Add New Employee</h3>
  		<br/>
  			<form action="AddCollegeAdministrationStaff" method="post" enctype="multipart/form-data" >

  			<table class="planeTbl" style="width:100%">
  				<tr>
  					<td colspan="4" style="text-align: center;font-weight: bold;background: #eee">Employee Details Entry</td>
  				</tr>
  				<tr>
	  				<td>PDEA ID</td>
	  				<td><input type="text" class="form-control" required="required" name="pdid"/></td>
	  				<td>Designation</td>
	  				<td>	
	  				   <select class="form-control" required="required" name="deg">
  							<option value="" selected="selected">~~Choose~~</option>
  								<c:forEach var="rec" items="${desig}">
									<option value="${rec.value}">${rec.value}</option>
  								</c:forEach>

  						</select>
  				  </td>
  				</tr>
  				<tr>
  					<td>Name <span class="req">*</span></td>
  					<td colspan="3">
						<select name="sal" required="required" class="form-control" style="display:inline;width:15%">
							<option value="" selected="selected">~~ Choose~~</option>
							<option>Dr.</option>
							<option>Prof.</option>
							<option>Mr.</option>
							<option>Mrs.</option>
							<option>Miss.</option>
						</select>
						<div style="display:inline-block;width:calc(4% - 11px);"></div>
						<input type="text" class="form-control" name="fnm" placeholder="First Name" required="required"  style="display:inline;width:27%"/>
						<input type="text" class="form-control" name="mnm" placeholder="Middle Name" required="required"  style="display:inline;width:27%"/>
						<input type="text" class="form-control" name="lnm" placeholder="Last Name" required="required"  style="display:inline;width:27%"/>
  					</td>
  				</tr>
  				<tr>
	  				<td>Mobile No</td>
	  				<td><input type="text" class="form-control" required="required" name="mob"/></td>
	  				<td>Email ID</td>
	  				<td><input type="text" class="form-control" required="required" name="eid"/></td>
  				</tr>
  				<tr>
	  				<td>Qualification</td>
	  				<td><input type="text" class="form-control" required="required" name="qul"/></td>
	  				<td>Photo</td>
	  				<td><input type="file" class="form-control" name="imgname" accept="image/*"/></td>
  				</tr>
  				
  				<tr>
  					<td></td>
  					<td></td>
  					<td align="center">
  						
  						<input type="submit" value="Submit" class="btn">
  					</td>
  					<td></td>
  				</tr>

  			</table>
  			<br><br>



  			</form>
  			
  			<h2>Already Add Employee</h2>
  		<div style="width: 100%; height: 400px; overflow: scroll;">
  			<table style="width: 100%; border: 1px solid; " >
  			<thead>
  				<tr style="border: 1px solid; background-color: #43577B; padding: 20px; color: white; text-align: center;">
  					<th  style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr. No</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">PdeaId</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Name</th>
  					<th  style="color: #fff; background: #002e3b;border:1px solid #003135; ">Designation</th>
  					<th  style="color: #fff; background: #002e3b;border:1px solid #003135; ">Qualification</th>
  					<th  style="color: #fff; background: #002e3b;border:1px solid #003135; ">Email Id</th>
  					<th  style="color: #fff; background: #002e3b;border:1px solid #003135; ">Mobile No</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Photo</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
  					
  				</tr>
  			</thead>
  			<tbody>
  			   <c:forEach var="cp" items="${cat}" varStatus="row">
  				<tr align="left" style="border-bottom: 1px solid black;">
  					<td style="text-align: center;border-right: 1px solid black;">${row.count}</td>
  					<td style="text-align: center;border-right: 1px solid black;">${cp.pdeaid}</td>
  					<td style="text-align: center;border-right: 1px solid black;">${cp.sal}${cp.fname}${cp.mname}${cp.lname}</td>
  					<td style="text-align: center;border-right: 1px solid black;">${cp.designation}</td>
  					<td style="text-align: center;border-right: 1px solid black;">${cp.qulification}</td>
  					<td style="text-align: center;border-right: 1px solid black;">${cp.emailid}</td>
  					<td style="text-align: center;border-right: 1px solid black;">${cp.mobileno}</td>
  					<td style="text-align: center;border-right: 1px solid black;"><img src="${s3path}AddCollegeAdministrationStaffImage/${cp.eid}_${cp.imgname}" style="height: 80px; width: 100px;"/></td>
  					<td style="text-align: center;border-right: 1px solid black;"><a href="DeptDeleteStaff?id=${cp.eid}">Delete</a></td>
  					<td style="text-align: center;border-right: 1px solid black;"><input type="button" onclick="puValsInModel('${cp.eid}','${cp.pdeaid}','${cp.sal}','${cp.fname}','${cp.mname}','${cp.lname}','${cp.designation}','${cp.qulification}','${cp.emailid}','${cp.mobileno}')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/></td>
  				</tr>
            </c:forEach>
  			</tbody>
  			
  		</table>
  		</div>
  		</div>

  </div>

<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog modal-lg ">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Edit Staff Details</h4>
		        </div>
		        <div class="modal-body" style="text-align: center">
					  
					
					<form action="UpdateCollegeAdministrationStaff" method="post" enctype="multipart/form-data" >

  			<table class="planeTbl" style="width:100%">
  				<tr>
  					<td colspan="4" style="text-align: center;font-weight: bold;background: #eee">Employee Details Entry</td>
  				</tr>
  				<tr>
	  				<td>PDEA ID</td>
	  				<td><input type="text" class="form-control" required="required" name="pdid" id="pdid"/></td>
	  				<td>Designation</td>
	  				<td>	
	  				   <select class="form-control" required="required" name="deg" id="deg" >
  							<option value="" selected="selected">~~Choose~~</option>
  								<c:forEach var="rec" items="${desig}">
									<option value="${rec.value}">${rec.value}</option>
  								</c:forEach>

  						</select>
  				  </td>
  				</tr>
  				<tr>
  					<td>Name <span class="req">*</span></td>
  					<td colspan="3">
						<select name="sal" required="required" id="sal" class="form-control" style="display:inline;width:15%">
							<option value="" selected="selected">~~ Choose~~</option>
							<option>Dr.</option>
							<option>Prof.</option>
							<option>Mr.</option>
							<option>Mrs.</option>
							<option>Miss.</option>
						</select>
						<div style="display:inline-block;width:calc(4% - 11px);"></div>
						<input type="text" class="form-control" name="fnm" id="fnm" placeholder="First Name" required="required"  style="display:inline;width:27%"/>
						<input type="text" class="form-control" name="mnm" id="mnm" placeholder="Middle Name" required="required"  style="display:inline;width:27%"/>
						<input type="text" class="form-control" name="lnm" id="lnm" placeholder="Last Name" required="required"  style="display:inline;width:27%"/>
  					</td>
  				</tr>
  				<tr>
	  				<td>Mobile No</td>
	  				<td><input type="text" class="form-control" required="required" name="mob" id="mob"/></td>
	  				<td>Email ID</td>
	  				<td><input type="text" class="form-control" required="required" name="emid" id="emid"/></td>
  				</tr>
  				<tr>
	  				<td>Qualification</td>
	  				<td><input type="text" class="form-control" required="required" name="qul" id="qul"/></td>
	  				<td>Photo</td>
	  				<td><input type="file" class="form-control" name="imgname" accept="image/*"/></td>
  				</tr>
  				
  				<tr>
  					<td></td>
  					<td></td>
  					<td align="center">
  						<input type="hidden" name="eid" id="eid">
  						<input type="submit" value="Submit" class="btn">
  					</td>
  					<td></td>
  				</tr>

  			</table>
  			<br><br>



  			</form>



					<br/><br/>
		        </div>
<!-- 		        <div class="modal-footer"> -->
<!-- 		          <button type="button" class="red-btn" data-dismiss="modal">   Close  </button> -->
<!-- 		        </div> -->
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
