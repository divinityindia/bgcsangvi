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
		function puValsInModel(nrid,tlt,msterid)
		{ 
			
			$("#master").val(msterid);
			$("#tlt").val(tlt);
		    $("#nrid").val(nrid);
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
	  		<h3>Add NIRF Report</h3>
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
	  		<form action="AddNIRFReport" method="post"  enctype="multipart/form-data" onsubmit="return chkPDF()">
	  			<table  class="planeTbl" style="width:100%">
	  				<tr>
	  					<td>NIRF Master:- <span class="req">*</span></td>
	  					<td><select class="form-control" required name="master">
  							<option value="" selected="selected">~~ Choose Master~~</option>
  							<c:forEach items="${dtl1}" var="cat" varStatus="row" >
								<option value="${cat.nmid}" >${cat.nmtitle}</option>
							</c:forEach>
  						</select></td>
  						<td>Report Title:-<span class="req">*</span></td>
	  				    <td><input type="text" name="title"  required="required" placeholder="Report Title"></td>
  						
	  				</tr>
	  				
	  				<tr>
	  				    <td>Upload File:-<span class="req">*</span></td>
	  				    <td><input type="file" name="document" id="f1" required="required"></td>
	  					<td ><input type="submit" value=" ADD " class="btn" /></td>
	  				</tr>
	  			</table>
<!-- 					<b>Department Name </b> : <input type="text" name="dept" required /> -->
<!-- 					<br/><br/> -->
<!-- 					<input type="submit" value=" ADD " class="btn" /> -->
	  			</form>
	  		</div>
  		</div>
  		<br/>
  		<b>Already Added NIRF Reports</b>
  		<table id="myTable" class="Vscroll" >
  			<thead>
  				<tr>
  				    <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr.No.</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">NIRF Master</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">NIRF Title</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">NIRF Document</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
  				</tr>
  				<c:forEach var="cat" varStatus="row" items="${det}">
  				 <tr>
  				     <td>${row.count}</td>
  				     <td>${cat.nmtitle}</td>
  				      <td>${cat.nrtitle}</td>
  				     <td><a href="${s3path}NirfReport/${cat.nrid}_${cat.document}" target="_blank">${cat.document}</a></td>
  				     <td><a href="DeleteNirfReport?id=${cat.nrid}">Delete</a></td>
  				      <td><input type="button" onclick="puValsInModel('${cat.nrid}','${cat.nrtitle}','${cat.nmid}')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/></td> 
  				 </tr>
  				</c:forEach>
  			</thead>
  			<tbody>

  			</tbody>
  		</table>





  </div>
		

<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog modal-lg ">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Edit NIRF Reports</h4>
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
					<form action="DeleteNirfReport" method="post"  enctype="multipart/form-data" onsubmit="return chkPDF()">
	  			<table  class="planeTbl" style="width:100%">
	  				<tr>
	  					<td>NIRF Master:- <span class="req">*</span></td>
	  					<td><select class="form-control" required name="master" id="master">
  							<option value="" selected="selected">~~ Choose Master~~</option>
  							<c:forEach items="${dtl1}" var="cat" varStatus="row" >
								<option value="${cat.nmid}" >${cat.nmtitle}</option>
							</c:forEach>
  						</select></td>
  						<td>Report Title:-<span class="req">*</span></td>
	  				    <td><input type="text" name="title"  required="required" placeholder="Report Title" id="tlt"></td>
  						
	  				</tr>
	  				
	  				<tr>
	  				    <td>Upload File:-</td>
	  				    <td><input type="file" name="document" id="f1" ></td>
	  					<td ><input type="hidden" name="nrid" id="nrid">
	  					<input type="submit" value=" ADD " class="btn" /></td>
	  				</tr>
	  			</table>
<!-- 					<b>Department Name </b> : <input type="text" name="dept" required /> -->
<!-- 					<br/><br/> -->
<!-- 					<input type="submit" value=" ADD " class="btn" /> -->
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
