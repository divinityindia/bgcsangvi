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


    	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="../assets/js/modernizr-latest.js"></script>
	<script type='text/javascript' src='../assets/js/jquery.min.js'></script>
    <script type='text/javascript' src='../assets/js/fancybox/jquery.fancybox.pack.js'></script>

    <script type='text/javascript' src='../assets/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='../assets/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='../assets/js/camera.min.js'></script>
    <script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/custom.js"></script>

    <link rel="stylesheet" href="../style/style.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script>
	$( document ).ready(function() {
		if($('#result-update').val() == '2'){
			$("#accessUpdateSucc").click();
		}
		if($('#result-update').val() == '0'){
			alert("Something went wrong. Try again");
		}


// 		$('#myTable').find('tr').each(function(){
// // 	        $(this).find('td').eq(n).after('<td>new cell added</td>');
// 	   });

// 		$('#myTable tr').each(function()
// 				{	alert(1);
// 				    $(this).append('<td></td>');
// 				});


		addClmn();
// 		tableLoad();
	});


	function addClmn(){

// 		$('#myTable tr').each(function()
// 				{
// 				    $(this).append('<td>1</td>');
// 				});


		$('#myTable').find('tr').each(function(){
	        $(this).find('td').eq(0).before('<td>'+ (+($(this).index()) + +1) +'</td>');
	   });

	}

// 	function tableLoad(){
// 		$.ajax({
// 			type:"GET",
// 			url:"../GetAllUsers",
// 			success:function(data){
// 				$("#myTable tbody").text("");
// 				for (var key in data.hm) {
// 					($('#myTable tbody')).append('<tr>'
// 						+'<td>'+ key +'</td>'
// 						+'<td>'+data.hm[key][1]+'</td>'
// 						+'<td>'+data.hm[key][2]+'</td>'
// 						+'<td> <a href="UpdateAccessRight?UID='+key+'"> <input type="button"  value="  Edit Access Rights  " class="green-btn" data-toggle="modal" data-target="#myModal"/> </a></td>'
// 						+'</tr>');

// 		        }
// 			},
// 			error:function(data){

// 			}
// 		});
// 	}
 	</script>



</head>
<body>

	<!-- Fixed navbar -->
<!-- 	<div class="navbar navbar-inverse" style="padding-top:0px"> -->
<!-- 		<div class="container" style="width: 100%;margin: 0px;padding-left: 0px;padding-right: 0px;"> -->

<%-- 			<jsp:include page="header.jsp"></jsp:include> --%>

<%-- 			<c:import url="header.jsp"></c:import> --%>
<%-- 			<c:if test="${sessionScope.sToken==null}"> --%>
<%-- 				<c:redirect url="../error.jsp"></c:redirect> --%>
<%-- 			</c:if> --%>
<%-- 			<jsp:include page="menu.jsp"></jsp:include> --%>

			<!--/.nav-collapse -->
<!-- 		</div> -->
<!-- 	</div> -->
	<!-- /.navbar -->

	<!-- Header -->



  <div class="container" style="padding:10px">

	<div style="width:60%;margin: auto auto">
	<br/>

	<style>
		.table{
			border:1px solid #999;
		}
		.table td:nth-child(1), .table td:nth-child(3){
			width:70px;

		}
	</style>


<%-- 	<c:set var="object" value="${bean}" /> --%>
<%-- 	<c:if test="${not empty object['class'].declaredFields}"> --%>
<!-- 	    <h2>Declared fields <em>&dollar;{object.name}</em></h2> -->
<!-- 	    <ul> -->
<%-- 	        <c:forEach var="field" items="${object['class'].declaredFields}"> --%>
<%-- 	            <c:catch><li><span>${field.name}</span>${object[field.name]}</li></c:catch> --%>
<%-- 	        </c:forEach> --%>
<!-- 	    </ul> -->
<%-- 	</c:if> --%>


	<form action="" method="post">
	<table class="table Vscroll" id="myTable" style="height:450px;">
		<thead>

		</thead>
		<tbody >

			<tr >
				<td>Add Employee</td><td><input type="checkbox" id="addemployee" value="${bean.addemployee}" name="addemployee" <c:if test="${bean.addemployee == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Search Employee</td><td><input type="checkbox" id="searchemployee" value="${bean.searchemployee}" name="searchemployee" <c:if test="${bean.searchemployee == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Update Employee</td><td><input type="checkbox" id="updateemployee" value="${bean.updateemployee}" name="updateemployee" <c:if test="${bean.updateemployee == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Event</td><td><input type="checkbox" id="event" value="${bean.event}" name="event" <c:if test="${bean.event == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>News</td><td><input type="checkbox" id="news" value="${bean.news}" name="news" <c:if test="${bean.news == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Routine</td><td><input type="checkbox" id="routine" value="${bean.routine}" name="routine" <c:if test="${bean.routine == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Gallery</td><td><input type="checkbox" id="gallery" value="${bean.gallery}" name="gallery" <c:if test="${bean.gallery == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>User / E-Resources Uploading</td><td><input type="checkbox" id="user" value="${bean.user}" name="user" <c:if test="${bean.user == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Access</td><td><input type="checkbox" id="access" value="${bean.access}" name="access" <c:if test="${bean.access == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Mandatory Disclosure</td><td><input type="checkbox" id="manddis" value="${bean.manddis}" name="manddis" <c:if test="${bean.manddis == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Academic Calender</td><td><input type="checkbox" id="academiccalender" value="${bean.academiccalender}" name="academiccalender" <c:if test="${bean.academiccalender == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Research &amp; Development</td><td><input type="checkbox" id="research" value="${bean.research}" name="research" <c:if test="${bean.research == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Students Welfare</td><td><input type="checkbox" id="welfare" value="${bean.welfare}" name="welfare" <c:if test="${bean.welfare == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Fee Structure</td><td><input type="checkbox" id="feestructure" value="${bean.feestructure}" name="feestructure" <c:if test="${bean.feestructure == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Examination Circulars</td><td><input type="checkbox" id="examc" value="${bean.examc}" name="examc" <c:if test="${bean.examc == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Alumini Notifications</td><td><input type="checkbox" id="aluminintf" value="${bean.aluminintf}" name="aluminintf" <c:if test="${bean.aluminintf == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Alumini Registration List</td><td><input type="checkbox" id="aluminiregistration" value="${bean.aluminiregistration}" name="aluminiregistration" <c:if test="${bean.aluminiregistration == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Alumini Forum Discussions</td><td><input type="checkbox" id="aluminiforum" value="${bean.aluminiforum}" name="aluminiforum" <c:if test="${bean.aluminiforum == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Student Association</td><td><input type="checkbox" id="studentassociation" value="${bean.studentassociation}" name="studentassociation" <c:if test="${bean.studentassociation == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Research &amp; Consultancy</td><td><input type="checkbox" id="researchcons" value="${bean.researchcons}" name="researchcons" <c:if test="${bean.researchcons == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Laboratories Photos</td><td><input type="checkbox" id="labphotos" value="${bean.labphotos}" name="labphotos" <c:if test="${bean.labphotos == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Results</td><td><input type="checkbox" id="result" value="${bean.result}" name="result" <c:if test="${bean.result == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Toppers</td><td><input type="checkbox" id="topper" value="${bean.topper}" name="topper" <c:if test="${bean.topper == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Miscellaneous Photo Upload</td><td><input type="checkbox" id="miscphoto" value="${bean.miscphoto}" name="miscphoto" <c:if test="${bean.miscphoto == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Eligibility No./NAAC Document/Home Links</td><td><input type="checkbox" id="hd" value="${bean.hd}" name="hd" <c:if test="${bean.hd == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>News Paper Gallery</td><td><input type="checkbox" id="newspapergallery" value="${bean.newspapergallery}" name="newspapergallery" <c:if test="${bean.newspapergallery == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Training &amp; Placement</td><td><input type="checkbox" id="tandp" value="${bean.tandp}" name="tandp" <c:if test="${bean.tandp == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Question Paper</td><td><input type="checkbox" id="qpaper" value="${bean.qpaper}" name="qpaper" <c:if test="${bean.qpaper == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Admission Brochure</td><td><input type="checkbox" id="brochure" value="${bean.brochure}" name="brochure" <c:if test="${bean.brochure == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Course</td><td><input type="checkbox" id="course" value="${bean.course}" name="course" <c:if test="${bean.course == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Branch</td><td><input type="checkbox" id="branch" value="${bean.branch}" name="branch" <c:if test="${bean.branch == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Class</td><td><input type="checkbox" id="class" value="${bean.class1}" name="class" <c:if test="${bean.class1 == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Section</td><td><input type="checkbox" id="section" value="${bean.section}" name="section" <c:if test="${bean.section == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Subject</td><td><input type="checkbox" id="subject" value="${bean.subject}" name="subject" <c:if test="${bean.subject == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Exam Attendance</td><td><input type="checkbox" id="examattendance" value="${bean.examattendance}" name="examattendance" <c:if test="${bean.examattendance == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Exam Master</td><td><input type="checkbox" id="exam" value="${bean.exam}" name="exam" <c:if test="${bean.exam == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Exam Schedule Master</td><td><input type="checkbox" id="examschedule" value="${bean.examschedule}" name="examschedule" <c:if test="${bean.examschedule == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Exam Marks</td><td><input type="checkbox" id="mark" value="${bean.mark}" name="mark" <c:if test="${bean.mark == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Members</td><td><input type="checkbox" id="lmember" value="${bean.lmember}" name="lmember" <c:if test="${bean.lmember == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Books</td><td><input type="checkbox" id="lbook" value="${bean.lbook}" name="lbook" <c:if test="${bean.lbook == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Book Issue</td><td><input type="checkbox" id="lissue" value="${bean.lissue}" name="lissue" <c:if test="${bean.lissue == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Library Fine</td><td><input type="checkbox" id="lfine" value="${bean.lfine}" name="lfine" <c:if test="${bean.lfine == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Mail / SMS</td><td><input type="checkbox" id="mailsms" value="${bean.mailsms}" name="mailsms" <c:if test="${bean.mailsms == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>


			<tr>
				<td>Assignment</td><td><input type="checkbox" id="assignment" value="${bean.assignment}" name="assignment" <c:if test="${bean.assignment == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Eligibility No.</td><td><input type="checkbox" id="eligibilityno" value="${bean.eligibilityno}" name="eligibilityno" <c:if test="${bean.eligibilityno == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Placement</td><td><input type="checkbox" id="placement" value="${bean.placement}" name="placement" <c:if test="${bean.placement == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Library</td><td><input type="checkbox" id="library" value="${bean.library}" name="library" <c:if test="${bean.library == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Infrastructure</td><td><input type="checkbox" id="infrastructure" value="${bean.infrastructure}" name="infrastructure" <c:if test="${bean.infrastructure == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>IQAC_Committee</td><td><input type="checkbox" id="IQAC_Committee" value="${bean.IQAC_Committee}" name="IQAC_Committee" <c:if test="${bean.IQAC_Committee == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>AQAR_Reports / NIRF_Reports</td><td><input type="checkbox" id="AQAR_Reports" value="${bean.AQAR_Reports}" name="AQAR_Reports" <c:if test="${bean.AQAR_Reports == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>IQAC_Minutes_and_Action</td><td><input type="checkbox" id="IQAC_Minutes_and_Action" value="${bean.IQAC_Minutes_and_Action}" name="IQAC_Minutes_and_Action" <c:if test="${bean.IQAC_Minutes_and_Action == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>UGC_CPE</td><td><input type="checkbox" id="UGC_CPE" value="${bean.UGC_CPE}" name="UGC_CPE" <c:if test="${bean.UGC_CPE == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>DBT_STAR</td><td><input type="checkbox" id="DBT_STAR" value="${bean.DBT_STAR}" name="DBT_STAR" <c:if test="${bean.DBT_STAR == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>DST_FIST</td><td><input type="checkbox" id="DST_FIST" value="${bean.DST_FIST}" name="DST_FIST" <c:if test="${bean.DST_FIST == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>DEPARTMENT_UPLOAD</td><td><input type="checkbox" id="UGC_BSR" value="${bean.UGC_BSR}" name="UGC_BSR" <c:if test="${bean.UGC_BSR == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Academic & Infra Uploding</td><td><input type="checkbox" id="UGC_Community_College" value="${bean.UGC_Community_College}" name="UGC_Community_College" <c:if test="${bean.UGC_Community_College == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>
			<tr>
				<td>Daily_Report / Feedback /Feedback Report</td><td><input type="checkbox" id="Daily_Report" value="${bean.daily_Report}" name="Daily_Report" <c:if test="${bean.daily_Report == 'true'}">checked="checked"</c:if> class="chk"></td>
			</tr>


		</tbody>
	</table>
		<div style="text-align: center;">
		<input type="hidden" name="UID" value="${param.UID}"/>
		<button type="submit" id="update" class="btn">Update Rights</button>
		</div>

	</form>

	</div>


  </div>


	<button type="button" id="accessUpdateSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">Access Rights Updated Successfully</h3>

					<br/><br/>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn" data-dismiss="modal">   Close  </button>
		        </div>
		      </div>
		    </div>
		  </div>

<input type="hidden" value="${result}" id="result-update"/>
<c:remove var="result"/>

<%-- 	<jsp:include page="footer.jsp"></jsp:include> --%>




</body>
</html>
