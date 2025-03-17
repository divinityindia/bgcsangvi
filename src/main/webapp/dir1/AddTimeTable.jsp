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



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script>
	$( document ).ready(function() {




		if($('#result').val() == '1'){
			$("#CrSucc").click();
		}
		if($('#resultUpdate').val() == '1'){
			$("#UpdateSucc").click();
		}
		if($('#resultDelete').val() == '1'){
			$("#DeleteSucc").click();
		}
		if($('#result').val() == '0' || $('#resultUpdate').val() == '0' || $('#resultDelete').val() == '0'){
			alert("Something went wrong. Try again");
		}



		tableLoad();
	});


	/* function tableLoad(){
		$.ajax({
			type:"GET",
			url:"../GetAllAcademicCalenders",
			success:function(data){
				var sno = +0;
				$("#myTable tbody").text("");
				for (var key in data.hm) {
					($('#myTable tbody')).append('<tr >'
						+'<td>'+ ++sno+'</td>'
						+'<td>'+data.hm[key][0]+'</td>'
						+'<td><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/academic_calender/'+key+'/'+data.hm[key][1]+'">'+data.hm[key][1]+'</a></td>'
						+'<td> <input type="checkbox" class="delChkBox" name="chkBox" value="'+key+'" onchange="chkDisableDelBtn()"/> </td>'
						+'</tr>');

		        }
			},
			error:function(data){

			}
		});
	} */
	
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

	<script>
		function puValsInModel(ttid,clss,tlt,year,sem)
		{ 
			alert(ttid+" "+clss+" "+tlt+" "+year+" "+sem);
			$("#ttid").val(ttid);
			$("#clss").val(clss);
			/* $("#dept-modal").val(deptname); */
			$("#tlt").val(tlt);
			$("#yr").val(year);
			$("#sem").val(sem);
		
			
			
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
  		<h3 style="line-height: 0px;">Add Time Table</h3>
  		<br/>
  		<c:if test="${erMsg != null }">
				<input type="text" value="${erMsg}"  class="input-field" disabled="disabled" style="width:100%;text-align: center;font-weight: bold;color: red;background:#ffecec;border:3px solid red"/>
			</c:if>
		<c:remove var="erMsg"/>
  			<form action="AddTimeTable" method="post" enctype="multipart/form-data" onsubmit="return chkPDF()">

  			<table class="planeTbl" style="width:100%">
  				<tr>

  					<td width="10%">Title:- <span class="req">*</span></td>
  					<td width="40%"><input type="text" class="form-control" name="tlt" required>
  					</td>
  					<td width="10%">Class Name:- <span class="req">*</span></td>
  					<td width="40%"><input type="text" class="form-control" name="clss" required>
  					</td>
  				</tr>
  				<tr>
  				<td width="10%">Year:- <span class="req">*</span></td>
  					<td width="40%"><input type="text" class="form-control" name="yr" required>
  					</td>
  					<td width="10%">Semester:- <span class="req">*</span></td>
  					<td width="40%"><input type="text" class="form-control" name="sem" required>
  					</td>
  					
  				</tr>
  				<tr>
  					<td width="15%">Upload Document <span class="req">*</span></td>
  					<td width="35%">
  						<input type="file"  name="file" id="f1" required/>
  					</td>
  					<td colspan="2">
  						<input type="submit" class="btn" value="Submit"/>
  					</td>
  				</tr>

  			</table>



  			</form>
  		</div>

  		<br/>
  		<b>Already Added Time Table:</b>
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
  					<th width="7%" style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr. No</th>
  					<th width="20%" style="color: #fff; background: #002e3b;border:1px solid #003135; ">Title </th>
  					<th width="20%" style="color: #fff; background: #002e3b;border:1px solid #003135; ">Class Name </th>
  					<th width="10%" style="color: #fff; background: #002e3b;border:1px solid #003135; ">Year </th>
  					<th width="10%" style="color: #fff; background: #002e3b;border:1px solid #003135; ">Semester</th>
  					<th width="20%" style="color: #fff; background: #002e3b;border:1px solid #003135; ">Documents</th>
  					<th width="7%" style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
  					<th width="7%" style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
  				</tr>
  			</thead>
  			<tbody>
  			<c:forEach var="cat" items="${ttdtls}" varStatus="row">
  				<tr>
  				     <td  width="7%">${row.count}</td>
  				     <td width="20%" style="text-align: left;">${cat.title}</td>
  				     <td width="20%" style="text-align: left;">${cat.clsname}</td>
  				     <td width="10%" style="text-align: left;">${cat.year}</td>
  				     <td width="10%" style="text-align: left;">${cat.sem}</td>
  				     <td width="20%" style="text-align: left;"><a href="${s3path}AddTimeTable/${cat.ttid}_${cat.document}" target="_blank">${cat.document}</a></td>
  				     <td width="7%"><input type="button" onclick="puValsInModel('${cat.ttid}','${cat.clsname}','${cat.title}','${cat.year}','${cat.sem}')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/></td>
  				     <td width="7%"><a href="UpdateTimeTable?ttid=${cat.ttid}">Delete</a></td>
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
		          <h4 class="modal-title">Edit Time Table</h4>
		        </div>
		        <div class="modal-body" style="text-align: center">
				<form action="UpdateTimeTable" method="post" enctype="multipart/form-data" >

  			<table class="planeTbl" style="width:100%">
  				<tr>

  					<td width="10%">Title:- <span class="req">*</span></td>
  					<td width="40%"><input type="text" class="form-control" name="tlt" required id="tlt">
  					</td>
  					<td width="10%">Class Name:- <span class="req">*</span></td>
  					<td width="40%"><input type="text" class="form-control" name="clss" required id="clss">
  					</td>
  				</tr>
  				<tr>
  				<td width="10%">Year:- <span class="req">*</span></td>
  					<td width="40%"><input type="text" class="form-control" name="yr" required id="yr">
  					</td>
  					<td width="10%">Semester:- <span class="req">*</span></td>
  					<td width="40%"><input type="text" class="form-control" name="sem" required id="sem">
  					</td>
  					
  				</tr>
  				<tr>
  					<td width="15%">Upload Document <span class="req">*</span></td>
  					<td width="35%">
  						<input type="file"  name="file" id="f1" />
  					</td>
  					<td colspan="2">
  					    <input type="hidden" name="ttid" id="ttid">
  						<input type="submit" class="btn" value="Submit"/>
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


		<button type="button" id="CrSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">New Academic Calender Created successfully</h3>

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

		          	<h3 style="color:green">Academic Calender updated successfully</h3>

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

		          	<h3 style="color:green">Academic Calender(s) deleted successfully</h3>

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
