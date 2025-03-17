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
				}
			);
			$( "#doj" ).datepicker(
				{
					dateFormat: 'dd/mm/yy',
					changeMonth: true,
		      	    changeYear: true,
				}
			);
		} );
	</script>

	<script  type="text/javascript">
		$( document ).ready(function() {

			if($('#result').val() == '0'){
				alert("Something went wrong. Try again");
			}
			else if($('#result').val() == ''){
			}
			else if($('#result').val() != '0'){
				$("#CrSucc").click();
			}


			$("input[name=gender][value=${bean.gender}]").attr('checked', 'checked');
			$('[name=preName]').eq(0).val('${bean.sal}');
			$('[name=religion]').eq(0).val('${bean.religion}');
			$('[name=category]').eq(0).val('${bean.category}');
			$('[name=mstatus]').eq(0).val('${bean.mstatus}');
			$('[name=appdept]').eq(0).val('${bean.appdept}');
			$('[name=designation]').eq(0).val('${bean.designation}');
			$('[name=noa]').eq(0).val('${bean.noa}');
			$('[name=noj]').eq(0).val('${bean.noj}');

		});
		</script>


		<script src="../js/editemployee.js"></script>
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


<!-- <script src="../js/AddEmployee.js"></script> -->
  <div class="container" style="padding:10px;">

  	<jsp:include page="UpdateEmpNav.jsp"></jsp:include>

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
  		<h3 style="line-height: 0px;">Update Employee Profile</h3>
  		<br/>
  			<form action="" method="post" enctype="multipart/form-data" >

  			<table class="planeTbl" style="width:100%">
  				<tr>
  					<td colspan="4" style="text-align: center;font-weight: bold;background: #eee">Step 1: Employee Details Entry</td>
  				</tr>
  				<tr>
  					<td>Name <span class="req">*</span></td>
  					<td colspan="3">
						<select name="preName" id="preName" required class="form-control" style="display:inline;width:15%">
							<option value="" selected="selected">~~ Choose~~</option>
							<option>Dr.</option>
							<option>Prof.</option>
							<option>Mr.</option>
							<option>Mrs.</option>
							<option>Miss.</option>
						</select>
						<div style="display:inline-block;width:calc(4% - 11px);"></div>
						<input type="text" class="form-control" name="firstName" placeholder="First Name" required  style="display:inline;width:27%" value="${bean.fname }"/>
						<input type="text" class="form-control" name="middleName" placeholder="Middle Name" required  style="display:inline;width:27%" value="${bean.mname }"/>
						<input type="text" class="form-control" name="lastName" placeholder="Last Name" required  style="display:inline;width:27%" value="${bean.lname }"/>
  					</td>
  				</tr>
  				<tr>
	  				<td>BCUD ID</td>
	  				<td><input type="text" class="form-control" name="bcudid" value="${bean.bcudid }"/></td>
	  				<td>PDEA ID</td>
	  				<td><input type="text" class="form-control" name="pdeaid" value="${bean.pdeaid }"/></td>
  				</tr>
  				<tr>
	  				<td>PAN No</td>
	  				<td><input type="text" class="form-control" name="panno" value="${bean.panno }"/></td>
	  				<td>Adhar No</td>
	  				<td><input type="text" class="form-control" name="adharno" value="${bean.adharno }"/></td>
  				</tr>
  				<tr>
	  				<td>UpdatePhoto</td>
	  				<td>
	  					<div style="width:100%">
	  						<div style="display: inline-block;background-color: #eee;width:80px;height:80px">
	  							<img alt="" src="https://s3.us-east-2.amazonaws.com/rmmoreone/emp/${bean.EID}/photo/${bean.photo }" style="max-width: 80px; max-height: 80px">
							</div>
							<div style="display: inline-block;width:calc(100% - 83px);overflow: hidden;vertical-align: middle;">
	  							<input type="file" name="photo" class="form-control123" style="line-height: 2;width:100% ;" accept="image/*" />
	  						</div>
	  					</div>
	  				</td>
	  				<td>Date Of Birth</td>
	  				<td><input type="text" class="form-control" name="dob" id="dob" value="${bean.dob }"/></td>
  				</tr>
  				<tr>
	  				<td>Gender <span class="req">*</span></td>
	  				<td>
	  					<span class="form-control" >
	  					<input type="radio" name="gender" value="Male" required/>Male
	  					<input type="radio" name="gender" value="Female"/>Female
	  					</span>
	  				</td>
	  				<td>Religion</td>
	  				<td>
	  					<select name="religion" class="form-control">
							<option value="" selected="selected">~~ Choose~~</option>
							<option>Hindu</option>
							<option>Muslim</option>
							<option>Christian</option>
							<option>Buddhist</option>
							<option>Jain</option>
							<option>Sikh</option>
							<option>Other</option>
						</select>
	  				</td>
  				</tr>
  				<tr>
	  				<td>Category</td>
	  				<td>
	  					<select name="category" class="form-control">
							<option value="" selected="selected">~~ Choose~~</option>
							<option>General/OPEN</option>
                           	<option>J &amp; K Migrant</option>
                           	<option>Lingayat Vani</option>
                           	<option>Maratha</option>
                           	<option>NT</option>
                           	<option>NT-1</option>
                           	<option>NT-1(NT-D)</option>
                           	<option>NT-2</option>
                           	<option>NT-2(NT-C)</option>
                           	<option>NT-2(NT-D)</option>
                           	<option>NT-A</option>
                           	<option>NT-B</option>
                           	<option>NT-C</option>
                           	<option>NT-D</option>
                           	<option>OBC</option>
                           	<option>Raghuvanshi</option>
                           	<option>SC</option>
                           	<option>ST</option>
                           	<option>SBC</option>
                           	<option>VJ</option>
                           	<option>VJ-NT</option>
                           	<option>VJ-DT</option>
						</select>
	  				</td>
	  				<td>Caste</td>
	  				<td><input type="text" class="form-control" name="caste" value="${bean.caste }"/></td>
  				</tr>
  				<tr>
  					<td>Marital Status</td>
  					<td>
  						<select name="mstatus" class="form-control">
  							<option value="" selected="selected">~~ Choose~~</option>
  							<option>Married</option>
  							<option>Single</option>
  							<option>Divorsed</option>
  						</select>
  					</td>
  					<td>Contact 1  <span class="req">*</span></td>
  					<td><input type="text" class="form-control" name="contact1" required value="${bean.contact1 }"/></td>
  				</tr>
  				<tr>
  					<td>Contact 2</td>
  					<td><input type="text" class="form-control" name="contact2"  value="${bean.contact2 }"/></td>
  					<td>Email ID  <span class="req">*</span></td>
  					<td><input type="email" class="form-control" name="mail" required value="${bean.mail }"/></td>
  				</tr>
  				<tr>
  					<td>Current Address</td>
  					<td><textarea name="curraddress" class="form-control" style="resize:none">${bean.curraddress }</textarea> </td>
  					<td>Permanent Address</td>
  					<td><textarea name="peraddress" class="form-control" style="resize:none">${bean.peraddress }</textarea> </td>
  				</tr>
  				<tr>
					<td>Current State</td>
					<td>
						<input type="hidden" value="${bean.cstate}" id="cst">
						<select name="cstate" id="state" class="form-control">
                            <option  value="">---Select State---</option>
						</select>
					</td>
					<td>Permanent State</td>
					<td>
						<input type="hidden" value="${bean.pstate}" id="pst">
						<select name="pstate" id="pstate" class="form-control">
                             <option  value="">---Select State---</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Current City</td>
					<td>
						<input type="hidden" value="${bean.ccity}" id="cct">
						<select name="ccity" id="city" class="form-control">
                        	<option  value="">---Select City---</option>
						</select>
					</td>
					<td>Permanent City</td>
					<td>
						<input type="hidden" value="${bean.pcity}" id="pct">
						<select name="pcity" id="pcity" class="form-control">
                            <option  value="">---Select City---</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Pincode</td>
					<td>
						<input type="text" name="cpincode" id="pincode" pattern="[0-9]{6}" title="Please enter valid Pincode number" maxlength="6" placeholder="" class="form-control" value="${bean.cpincode }">
					</td>
					<td>Pincode</td>
					<td>
						<input type="text" name="ppincode" id="ppincode" pattern="[0-9]{6}" title="Please enter valid Pincode number" maxlength="6" placeholder="" class="form-control" value="${bean.ppincode }">
					</td>
				</tr>
				<tr>
  					<td colspan="4" style="text-align: center;font-weight: bold;background: #eee">Appointment Details</td>
  				</tr>
  				<tr>
  					<td width="15%">Appointment for department <span class="req">*</span></td>
  					<td width="35%">
  						<select class="form-control" required name="appdept">
  							<option value="1">English</option>
								<option value="2">Marathi</option>
								<option value="7">Economics</option>
								<option value="8">Political Science</option>
								<option value="10">Geography</option>
								<option value="80">History</option>
								<option value="81">Physical Education</option>
								<option value="14">Commerce</option>
								<option value="16">BBA(CA)</option>
								<option value="20">Computer Science</option>
								<option value="21">Electronics</option>
								<option value="22">Statistic</option>
								<option value="23">Mathematics</option>
								<option value="24">Physics</option>
								<option value="25">Chemistry</option>
								<option value="26">Botany</option>
								<option value="27">Zoology</option>
								<option value="48">S/w Development</option>
								<option value="76">Fashion Technology</option>
								<option value="77">Retail Management</option>
								<option value="78">Travel and Tourism Management</option>
								<option value="79">Beauty and Wellness</option>
								<option value="90">Fashion Technology(MVoc)</option>
								<option value="91">Software Development and Management(MVoc)</option>
								<option value="92">Biomedical  Instrumentation</option>
								<option value="93">Goods and  Service Tax</option>
								<option value="94">Laboratory Chemist-Rubber</option>
								<option value="95">Animation and  Multimedia</option>
								<option value="96">Agro Tourism</option>
								<option value="97">Massage Therapy</option>
  						</select>
  					</td>
  					<td width="15%">Designation <span class="req">*</span></td>
  					<td width="35%">
						<select class="form-control" required name="designation">
  							<option value="" selected="selected">~~Choose~~</option>
  								<c:forEach var="rec" items="${desig }">
									<option value="${rec.key}">${rec.value}</option>
  								</c:forEach>
  						</select>
  					</td>
  				</tr>
  				<tr>
  					<td>Additional Designations(if any)</td>
  					<td><input type="text" name="extrapost" id="extrapost" placeholder="e.g. Dean, Asso. Professor, TPO" class="form-control" value="${bean.extrapost }"></td>
  					<td>Date Of Joining</td>
  					<td><input type="text" class="form-control" name="doj" id="doj" value="${bean.doj }"/> </td>
  				</tr>
  				<tr>
  					<td>Nature of Appointment</td>
  					<td>
  						<select class="form-control" name="noa">
  							<option value="" selected="selected">~~Choose~~</option>
  							<option>Temporary</option>
							<option>Permanent</option>
							<option>Probation</option>
  						</select>
  					</td>
  					<td>Nature of Job <span class="req">*</span></td>
  					<td>
  						<select class="form-control" required name="noj">
  							<option value="" selected="selected">~~Choose~~</option>
  							<option value="Teaching">Teaching</option>
<!-- 							<option value="Non-Teaching">Non-Teaching</option> -->
  						</select>
  					</td>
  				</tr>
  				<tr>
  					<td>Short Qualification <span class="req">*</span></td>
  					<td><input type="text" class="form-control" name="squal" required placeholder="e.g. Ph.D, M.E. Mechanical" value="${bean.squal }"/></td>
  					<td>Teaching Experience(Years) <span class="req">*</span></td>
  					<td><input type="number" min="0" step="0.1" class="form-control" name="texp" required value="${bean.texp }"/></td>
  				</tr>
  				<tr>
  					<td>Industrial/Other Experience(Years) <span class="req">*</span></td>
  					<td><input type="number" min="0" step="0.1" class="form-control" name="iexp" required value="${bean.iexp }"/></td>
  					<td>Expert Area <span class="req">*</span></td>
  					<td><input type="text" class="form-control" name="aoi" required  value="${bean.aoi }"/></td>
  				</tr>
  				<tr>
  					<td>Subjects Taught <span class="req">*</span></td>
  					<td><input type="text" class="form-control" name="sub" required value="${bean.sub }"/></td>
  					<td>Journal Publications </td>
  					<td><input type="text" class="form-control" name="jpub"  value="${bean.jpub }"/></td>
  				</tr>
  				<tr>
  					<td>Books Published</td>
  					<td><input type="text" class="form-control" name="bpub"  value="${bean.bpub }"/></td>
  					<td>Research Project Undertaken </td>
  					<td><input type="text" class="form-control" name="research"  value="${bean.research }"/></td>
  				</tr>
  				<tr>
  					<td>Memberships</td>
  					<td><input type="text" class="form-control" name="memberships" placeholder="Memberships if any" value="${bean.memberships }"/></td>
  					<td>Patents </td>
  					<td><input type="text" class="form-control" name="petants"  value="${bean.petants }"/></td>
  				</tr>
  				<tr>
  					<td>Research Guide subject</td>
  					<td><input type="text" class="form-control" name="researchguidesub" value="${bean.researchguidesub}"/></td>
  					<td>University </td>
  					<td><input type="text" class="form-control" name="university" value="${bean.university }"/></td>
  				</tr>
  				<tr>
  					<td>Update Resume</td>
  					<td>

  						<c:choose>
  							<c:when test="${bean.resume == null}">
  								You haven`t added resume. Add it.
  							</c:when>
  							<c:otherwise>
  								<a href="https://s3.us-east-2.amazonaws.com/rmmoreone/emp/${bean.EID}/resume/${bean.resume }">Downlaod Resume</a>
  							</c:otherwise>
  						</c:choose>
  						<br/>
  						<input type="file" name="resume" class="form-control" style="line-height: 2"/>

  					</td>
					<td></td>
					<td>
					</td>
  				</tr>

  				<tr>
  					<td></td>
  					<td>
  						<input type="hidden" value="${param.eid}" name="EID"/>
  						<input type="submit" value="Submit" class="btn">
  					</td>
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
