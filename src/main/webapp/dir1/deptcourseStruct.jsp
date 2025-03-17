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
		function puValsInModel(dsid,did,corsename,details,year)
		{ 
			alert(dsid+" "+did+" "+corsename+" "+year+" "+details);
			$("#dsid-modal").val(dsid);
			$("#did-modal").val(did);
			/* $("#dept-modal").val(deptname); */
			$("#name-modal").val(corsename);
			$("#dtl-modal").val(details);
			$("#yr-modal").val(year);
		
			
			
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



  <div class="container" style="padding:10px">

	<style>
		.planeTbl td, .planeTbl tr:LAST-CHILD td{
  			border:none;
			text-align: left;
			padding:5px 10px;
		}
		.planeTbl tr:HOVER {
			background: transparent;
		}
	</style>

  		<div  style="border:1px solid #aaa;padding:10px;border-radius:5px;text-align: center">
  			<div style="width:70%;margin: auto">
	  		<h3>Add Department Course Structure</h3>
	  		<br/>
	  		<script>
	  			function chkPDF(){
	  				var f=$('#f1').val();
	  				if(f != "")
	  				{
	  						
	  					var ext = f.substr( (f.lastIndexOf('.') +1) );
	  				
		  				if(ext.toLowerCase() == 'pdf')
	  					{
	  						return true;
	  					}
		  				else{
		  					alert("Please Select PDF File Only");
		  					return false;	
		  				}
	  				}
	  				
	  				
	  				
	  			}
	  		</script>
	  		<form action="DepCourseStruct" method="post"  enctype="multipart/form-data" onsubmit="return chkPDF()">
	  			<table  class="planeTbl" style="width:100%">
	  				<tr>
	  					<td>Department Name:- <span class="req">*</span></td>
	  					<td>
	  					<%-- <select class="form-control" required="required" name="did">
  							<option value="" selected="selected">~~ Choose~~</option>
  							<c:forEach var="dept" items="${dep}" >
								<option value="${dept.key}">${dept.value}</option>
  							</c:forEach>
  						</select> --%>
  						  <select class="form-control" required="required" name="did">
  						<option value="" selected="selected">~~ Choose Department~~</option>
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
  					
  						<td>Course Name:- <span class="req">*</span></td>
	  					<td><input type="text" name="cname" class="form-control" required="required"/></td>
	  				</tr>
	  				<tr>
	  					
  					
  						<td>Course Details:- <span class="req">*</span></td>
	  					<td><input type="text" name="cdetl" class="form-control" required="required" /></td>
	  					<td>Year:-<span class="req">*</span></td>
	  					<td><input type="text" name="year" class="form-control" required="required" /></td>
	  				</tr>
	  				
	  				<tr>
	  				    <td>Upload File:-</td>
	  				    <td><input type="file" name="document" id="f1"/></td>
	  					<td></td>
	  					<td><input type="submit" value=" ADD " class="btn" /></td>
	  				</tr>
	  			</table>
<!-- 					<b>Department Name </b> : <input type="text" name="dept" required /> -->
<!-- 					<br/><br/> -->
<!-- 					<input type="submit" value=" ADD " class="btn" /> -->
	  			</form>
	  		</div>
  		</div>
  		<br/>
  		<b>Already created department Structure:</b>
  		<div style="width: 100%;height: 800px; overflow: scroll;">
  		<table id="myTable" class="Vscroll">
  			<thead>
  				<tr>
  				    <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr.No.</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Department ID</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Course Name</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Course Details</th>
  				    <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">year</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Document</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
  				</tr>
  				<c:forEach var="cat" varStatus="row" items="${det}">
  				 <tr>
  				     <td>${row.count}</td>
  				     <td>${cat.deptname }</td>
  				     <td>${cat.corsname}</td>
  				      <td>${cat.corsedetl}</td>
  				     <td>${cat.year}</td>
  				     <td><a href="${s3path}AddDepCourseStr/${cat.deptid}_${cat.document}" target="_blank">${cat.document}</a></td>
  				     <td><a href="DeptCourseStructDelete?id=${cat.dsid}">Delete</a></td>
  				      <td><input type="button" onclick="puValsInModel('${cat.dsid}','${cat.deptid}','${cat.corsname}','${cat.corsedetl}','${cat.year}','${cat.document}')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/></td>
  				 </tr>
  				</c:forEach>
  			</thead>
  			<tbody>

  			</tbody>
  		</table>

</div>
<br><br>


  </div>
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog modal-lg ">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Edit  Department Course Structure</h4>
		        </div>
		        <div class="modal-body" style="text-align: center">
					  <script>
	  			function chkPDF2(){
	  				var f=$('#file-modal').val();
	  				if(f != "")
	  				{
	  						
	  					var ext = f.substr( (f.lastIndexOf('.') +1) );
	  				
		  				if(ext.toLowerCase() == 'pdf')
	  					{
	  						return true;
	  					}
		  				else{
		  					alert("Please Select PDF File Only");
		  					return false;	
		  				}
	  				}
	  				
	  				
	  				
	  			}
	  		</script>
					
					<form action="DepCourseStructUpdate" method="post"  enctype="multipart/form-data" onsubmit="return chkPDF2()">
		        	<table  class="planeTbl" style="width:100%">
		        	    
		        		<tr>
		  					<td width="18%">Department <span class="req">*</span></td>
		        			<td width="32%">
		        				<select class="form-control" required="required" name="didname" id="did-modal">
  							<option value="" selected="selected">~~ Choose~~</option>
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
		  					<td>Course Name:-<span class="req">*</span></td>
		  					<td><input type="text" class="form-control" required="required" style="resize:none" name="title" id="name-modal"> </td>
		  				</tr>
		  				<tr>
		  				<td>year:-<span class="req">*</span></td>
		  					<td>
		  						<input type="text" class="form-control" required="required" id="yr-modal" name="yr" />
		  					</td>
		  					<td>Course Details:- <span class="req">*</span></td>
		  					<td><input type="text" class="form-control" required="required"  id="dtl-modal" name="dtl" /></td>
		  					
		  				</tr>
		  				<tr>
		  					
		  					<td>Upload Document</td>
		  					<td>
		  						<input type="file"  name="file" id="file-modal"/>
		  					</td>
		  				</tr>
		  				<tr>
		  					<td></td>
		  					<td>
		  						<input type="hidden" name="srid" id="dsid-modal"/>
		  						
		  						<input type="submit" class="btn" value="Submit">
		  					</td>
		  				</tr>
		        	</table>
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




</body>
</html>
