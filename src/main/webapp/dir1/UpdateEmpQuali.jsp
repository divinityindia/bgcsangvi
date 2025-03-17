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
<script src="../js/updateemployeequal.js"></script>

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
						table tr:HOVER {
							background: transparent;
						}
						table td{
							padding: 5px;
						}
						.tb3 td,.tb3 tr:last-child td, .tb4 td, .tb4 tr:last-child td{
							border:none;
						}
						.tb3 th, .tb4 th{
/* 							background: #ddd; */
/* 							color:#000; */
						}

					</style>
       				<h2>Update Employee Qualification</h2>
       				<div id="qualsuccess" class="success"></div>
  					<div id="certsuccess" class="success"></div>

       			<div id="block2">
       				<form action="" method="post" id="form2">
       				<input type="hidden" class="fid" value="${qfid}" name="fid"></input>
       					<table class="employeeprofile tb1" id="usertable" style="margin-top: 15px;width: 100%">
       						<tr>
								<th class="clabel" style="font-weight: bold;">Qualification</th>
								<th class="clabel" style="font-weight: bold;">Degree</th>
								<th class="qlabel" style="font-weight: bold;">Specialization</th>
								<th class="qlabel" style="font-weight: bold;">Institute</th>
								<th class="qlabel" style="font-weight: bold;">University</th>
								<th class="qlabel" style="font-weight: bold;">Passout Yr</th>
								<th class="qlabel" style="font-weight: bold;">%/Grade</th>
								<th class="qlabel" style="font-weight: bold;">Delete</th>
							</tr>
							<c:forEach var="cat" items="${qualList}">
								<tr id="q${cat.qid}">
									<td>${cat.qname}</td><td>${cat.qdegree}</td><td>${cat.qspecialization}</td><td>${cat.qinstitute}</td><td>${cat.quniversity}</td><td>${cat.qpassyr}</td><td>${cat.qper}</td><td><a href="javascript:;" data-p1="${cat.qid}" class="deletelinkQual">Delete</a></td>
								</tr>
							</c:forEach>
       					</table>
       					<img src="../icons/loading3.gif" id="load1" width="18" height="18" alt="loading3" style="margin: 0px;display: none;left: 50%"/>

       					<table class="employeeprofile  tb2" id="usertable" style="margin-top: 15px;width: 100%">
	       					<tr>
								<th class="cerlabel" style="font-weight: bold;">Course Name</th>
								<th class="cerlabel" style="font-weight: bold;">Institute/University</th>
								<th class="cerlabel" style="font-weight: bold;">Duration in months</th>
								<th class="cerlabel" style="font-weight: bold;">Course Content</th>
								<th class="cerlabel" style="font-weight: bold;">Delete</th>
							</tr>
							<c:forEach var="cat" items="${certList}">
								<tr id="c${cat.cid}">
									<td>${cat.ccoursename}</td><td>${cat.cinstitute}</td><td>${cat.cduration}</td><td>${cat.ccontent}</td><td><a href="javascript:;" data-p1="${cat.cid}" class="deletelinkCert">Delete</a></td>
								</tr>
							</c:forEach>
						</table>
						<img src="../icons/loading3.gif" id="load2" width="18" height="18" alt="loading3" style="margin: 0px;display: none;left: 50%"/>
       				</form>
       				<form action="" method="post" id="form2">
       					<table class="employeeprofile  tb3" id="usertable" style="margin-top: 15px;width: 100%">
								<tr><th colspan="7" style="background-color: transparent;border:none;text-align: left">
									<font style="font-weight: bold;color:#000;">
										<h4>Add Qualification Details</h4>
										</font>
									</th>
								</tr>
								<tr><th colspan="7">Educational Details</th></tr>
								<tr>
									<td class="clabel" style="font-weight: bold;">Check</td>
									<td class="clabel" style="font-weight: bold;">Degree</td>
									<td class="qlabel" style="font-weight: bold;">Specialization</td>
									<td class="qlabel" style="font-weight: bold;">Institute</td>
									<td class="qlabel" style="font-weight: bold;">University</td>
									<td class="qlabel" style="font-weight: bold;">Passout Yr</td>
									<td class="qlabel" style="font-weight: bold;">%/Grade</td>
								</tr>
								<tr>
									<td class="clabel">
										<input type="checkbox" name="qual1" id="qual1" value="ug"><br>UG
										<input type="hidden" class="fid" value="${qfid}" name="fid"></input>
									</td>
									<td class="qlabel">
										<select name="udegree" id="udegree" disabled="disabled" class="sqtext form-control">
											<option selected="selected" value="">Select</option>
											<option value="B.E.">B.E.</option>
											<option value="B.Tech.">B.Tech.</option>
											<option value="B.Sc.">B.Sc.</option>
											<option value="B.C.A.">B.C.A.</option>
											<option value="B.C.S.">B.C.S.</option>
											<option value="B.Lib.">B.Lib.</option>
											<option value="B.A">B.A</option>
											<option value="B.Com">B.Com</option>
											<option value="Diploma">Diploma</option>
											<option value="H.S.C.">H.S.C.</option>
											<option value="S.S.C.">S.S.C.</option>
											<option value="I.T.I">I.T.I</option>
											<option value="Other">Other</option>
										</select>
									</td>
									<td class="qlabel">
										<input type="text" name="uspl" id="uspl" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="uinst" id="uinst" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="uuniv" id="uuniv" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="upyr" id="upyr" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="uper" id="uper" disabled="disabled" class="qtext form-control">
									</td>
								</tr>
								<tr>
									<td class="clabel"><input type="checkbox" name="qual2" id="qual2" value="pg"><br>PG</td>
									<td class="qlabel">
										<select name="pdegree" id="pdegree" disabled="disabled" class="sqtext  form-control">
											<option selected="selected" value="">Select</option>
											<option value="M.E.">M.E.</option>
											<option value="M.Tech">M.Tech.</option>
											<option value="M.Sc.">M.Sc.</option>
											<option value="M.Lib.">M.Lib.</option>
											<option value="M.A">M.A</option>
											<option value="M.B.A">M.B.A</option>
											<option value="M.Com">M.Com</option>
											<option value="Other">Other</option>
										</select>
									</td>
									<td class="qlabel">
										<input type="text" name="pspl" id="pspl" disabled="disabled" class="qtext  form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="pinst" id="pinst" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="puniv" id="puniv" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="ppyr" id="ppyr" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="pper" id="pper" disabled="disabled" class="qtext form-control">
									</td>
								</tr>
								<tr>
									<td class="clabel"><input type="checkbox" name="qual3" id="qual3" value="doctorate"><br>doctorate</td>
									<td class="qlabel">
										<select name="ppdegree" id="ppdegree" disabled="disabled" class="sqtext form-control">
											<option selected="selected" value="">Select</option>
											<option value="Ph.D.">Ph.D.</option>
											<option value="M.Phil">M.Phil</option>
										</select>
									</td>
									<td class="qlabel">
										<input type="text" name="ppspl" id="ppspl" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="ppinst" id="ppinst" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="ppuniv" id="ppuniv" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="pppyr" id="pppyr" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="ppper" id="ppper" disabled="disabled" class="qtext form-control">
									</td>
								</tr>
								<tr id="otq">
									<td></td>
									<td class="qlabel">
										<select name="odegree" id="odegree" disabled="disabled" class="sqtext form-control">
											<option selected="selected" value="">Select</option>
												<c:forEach var="rec" items="${otherQuali}">
													<option>${rec.value[0]}</option>
												</c:forEach>
<!-- 											<option value="Diploma">Diploma</option> -->
<!-- 											<option value="H.S.C.">H.S.C.</option> -->
<!-- 											<option value="S.S.C.">S.S.C.</option> -->
<!-- 											<option value="I.T.I">I.T.I</option> -->
<!-- 											<option value="Illiterate">Illiterate</option> -->
										</select>
									</td>
									<td class="qlabel">
										<input type="text" name="ospl" id="ospl" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="oinst" id="oinst" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="ouniv" id="ouniv" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="opyr" id="opyr" disabled="disabled" class="qtext form-control">
									</td>
									<td class="qlabel">
										<input type="text" name="oper" id="oper" disabled="disabled" class="qtext form-control">
									</td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td class="qlabel">
										<button type="button" name="otherqual" id="otherqual" class="qtext">Other Qualification</button>
									</td>
								</tr>
								</table>
								<table class="employeeprofile  tb4" id="usertable" style="margin-top: 15px;width: 100%" >
								<tr><th colspan="8">Certification Details</th></tr>
								<tr>
									<td  colspan="8" style="padding:0px;border:none;	">
										<table style="width:100%" class="tb5">
											<tr>
												<td class="clabel" style="font-weight: bold;">Check</td>
												<td class="cerlabel" style="font-weight: bold;">Course Name</td>
												<td class="cerlabel" style="font-weight: bold;">Institute/University</td>
												<td class="cerlabel" style="font-weight: bold;">Duration in months</td>
												<td class="cerlabel" style="font-weight: bold;">Course Content</td>
											</tr>
											<tr>
												<td class="clabel">
													<input type="checkbox" name="cert1" id="cert1" value="1">
												</td>
												<td class="cerlabel">
													<input type="text" name="crsname1" id="crsname1" disabled="disabled" class="form-control">
												</td>
												<td class="cerlabel">
													<input type="text" name="cinst1" id="cinst1" disabled="disabled"  class="form-control">
												</td>
												<td class="cerlabel">
													<input type="text" name="cduration1" id="cduration1" disabled="disabled" class="form-control">
												</td>
												<td class="cerlabel">
													<input type="text" name="ccontent1" id="ccontent1" disabled="disabled" class="form-control">
												</td>
											</tr>
											<tr>
												<td class="clabel">
													<input type="checkbox" name="cert2" id="cert2" value="2">
												</td>
												<td class="cerlabel">
													<input type="text" name="crsname2" id="crsname2" disabled="disabled" class="form-control">
												</td>
												<td class="cerlabel">
													<input type="text" name="cinst2" id="cinst2" disabled="disabled" class="form-control">
												</td>
												<td class="cerlabel">
													<input type="text" name="cduration2" id="cduration2" disabled="disabled" class="form-control">
												</td>
												<td class="cerlabel">
													<input type="text" name="ccontent2" id="ccontent2" disabled="disabled" class="form-control">
												</td>
											</tr>
											<tr>
												<td class="clabel">
													<input type="checkbox" name="cert3" id="cert3" value="3">
												</td>
												<td class="cerlabel">
													<input type="text" name="crsname3" id="crsname3" disabled="disabled" class="form-control">
												</td>
												<td class="cerlabel">
													<input type="text" name="cinst3" id="cinst3" disabled="disabled" class="form-control">
												</td>
												<td class="cerlabel">
													<input type="text" name="cduration3" id="cduration3" disabled="disabled" class="form-control">
												</td>
												<td class="cerlabel">
													<input type="text" name="ccontent3" id="ccontent3" disabled="disabled" class="form-control">
												</td>
											</tr>
											<tr>
												<td class="clabel">
													<input type="checkbox" name="cert4" id="cert4" value="4">
												</td>
												<td class="cerlabel">
													<input type="text" name="crsname4" id="crsname4" disabled="disabled" class="form-control">
												</td>
												<td class="cerlabel">
													<input type="text" name="cinst4" id="cinst4" disabled="disabled" class="form-control">
												</td>
												<td class="cerlabel">
													<input type="text" name="cduration4" id="cduration4" disabled="disabled" class="form-control">
												</td>
												<td class="cerlabel">
													<input type="text" name="ccontent4" id="ccontent4" disabled="disabled" class="form-control">
												</td>
											</tr>
										</table>
									</td>
								</tr>

								<tr class="noHover">
									<td colspan="8" style="text-align: center;padding:10px;border:none;"><button type="submit" id="save2" class="btn">Save Details</button></td>
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
