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


			<script type="text/javascript" src="../tcal/tcal.js"></script>
			<link rel="stylesheet" href="../tcal/tcal.css" type="text/css" media="screen" />



	
	


  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
		function puValsInModel(sdid,doctype,title)
		{ 
			
			$("#sdid").val(sdid);
			$("#type").val(doctype);
			 $("#title").val(title);
			
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

  		<div style="border:1px solid #aaa;padding:10px;border-radius:5px;text-align: center">
  		<h3 style="line-height: 0px;">Student Welfare Manager</h3>
  		<br/>
  			<form action="SDDoc" method="post" enctype="multipart/form-data">

  			<table class="planeTbl" style="width:100%">

  				<tr>
  					<td>Document Type <span class="req">*</span></td>
  					<td><select   name="type" required="required" style="width: 100%; height: 40px;"  >
  						<option value="" selected="selected">~~ Choose Document Type~~</option>
								<option>Anti Ragging</option>
								<option>Anti Harassment</option>
								<option>Scholarship</option>
								<option>Placement</option>
								<option>Mentor System</option>
								<option>Student Welfare</option>
								<option>NSS</option>
								<option>NCC</option>
								<option>Sports</option>
								<option>Cultural Activity</option>
  					    </select>
  					</td>
  					<td>Document Title <span class="req">*</span></td>
  					<td>
  					    <input type="text" name="title" class="">
  					</td>
  					<td>Upload Document <span class="req">*</span></td>
  					<td>
  						<input type="file"  name="file" required="required"/>
  					</td>
  				</tr>

  				<tr>
  					<td></td><td></td><td></td>
  					<td><input type="submit" class="btn" value="Submit"> </td>
  				</tr>
  			</table>



  			</form>
  		</div>

  		<br/>
  		<b>Already added documents:</b>
  		<style>
  			#bottonTh th{
   				background-color: rgba(61,132,230,0.2);
  				border:1px solid #bbb;
  			}
  			#bottonTh tr:HOVER {
				background-color: transparent;
			}
			input[type="submit"]:disabled{background-color:gray;pointer-events: none;}
  		</style>
  		
  		<table id="myTable" class="Vscroll">
  			<thead>
  				<tr>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr. No.</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Document Type</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Title</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Document</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
  				</tr>
  			</thead>
  			<tbody>
  			   <c:forEach var="dtl" items="${cat}" varStatus="row">
  				<tr>
  					<td>${row.count}</td>
                    <td>${dtl.doctype}</td>
                    <td>${dtl.doctitle}</td>
                    <td><a href="${s3path}AddSDDoc/${dtl.sdid}_${dtl.document}" target="_blank">${dtl.document}</a></td>
  				    
  				    <td><a href="SDdocDelete?id=${dtl.sdid}">Delete</a></td>
  				    <td><input type="button" onclick="puValsInModel('${dtl.sdid}','${dtl.doctype}','${dtl.doctitle}')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/></td>
  				    
  				</tr>
  				</c:forEach>

  			</tbody>
  			
  		</table>
  	





  </div>
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog modal-lg ">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Edit Student Welfare Document</h4>
		        </div>
		        <div class="modal-body" style="text-align: center">
					<form action="UpdateSddoc" method="post" enctype="multipart/form-data">

  			<table class="planeTbl" style="width:100%">

  				<tr>
  					<td>Document Type <span class="req">*</span></td>
  					<td><select   name="type" required="required" id="type" style="width: 100%; height: 40px;"  >
  						<option value="" selected="selected">~~ Choose Document Type~~</option>
								<option>Anti Ragging</option>
								<option>Anti Harassment</option>
								<option>Scholarship</option>
								<option>Placement</option>
								<option>Mentor System</option>
								<option>Student Welfare</option>
								<option>NSS</option>
								<option>NCC</option>
								<option>Sports</option>
								<option>Cultural Activity</option>
  					    </select>
  					</td>
  					<td>Document Title <span class="req">*</span></td>
  					<td>
  					    <input type="text" name="title" id="title" >
  					</td>
  					
  				</tr>

  				<tr>
  					<td>Upload Document </td>
  					<td>
  						<input type="file"  name="file" />
  					</td><td> <input type="hidden" name="sdid" id="sdid" ></td>
  					<td><input type="submit" class="btn" value="Submit"> </td>
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



		<button type="button" id="CrSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">Welfare document added successfully</h3>

					<br/><br/>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn" data-dismiss="modal">   Close  </button>
		        </div>
		      </div>
		    </div>
		  </div>


		  <button type="button" id="UpdateSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success-update">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success-update" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">Welfare document updated successfully</h3>

					<br/><br/>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn" data-dismiss="modal">   Close  </button>
		        </div>
		      </div>
		    </div>
		  </div>

		  <button type="button" id="DeleteSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success-delete">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success-delete" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">Welfare document(s) deleted successfully</h3>

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

<input type="hidden" value="${resultUpdate}" id="resultUpdate"/>
<c:remove var="resultUpdate"/>

<input type="hidden" value="${resultDelete}" id="resultDelete"/>
<c:remove var="resultDelete"/>






	<jsp:include page="footer.jsp"></jsp:include>




</body>
</html>
