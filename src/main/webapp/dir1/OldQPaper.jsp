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


	function tableLoad(){
		var s3path=$('#s3path').val();
		$.ajax({
			type:"GET",
			url:"../GetAllQPapers",
			success:function(data){
				var sno= +0;
				$("#myTable tbody").text("");
				for (var key in data.hm) {
					($('#myTable tbody')).append('<tr >'
						+'<td>'+ ++sno +'</td>'
						+'<td>'+data.hm[key][1]+'</td>'
						+'<td>'+data.hm[key][2]+'</td>'
						+'<td>'+data.hm[key][3]+'</td>'
						+'<td>'+data.hm[key][4]+'</td>'
						+'<td>'+data.hm[key][5]+'</td>'
						+'<td><a href="'+s3path+'qpapers/'+key+'/'+data.hm[key][6]+'" target="_blank">'+data.hm[key][6]+'</a></td>'
// 						+'<td>'+data.hm[key][5]+'</td>'
// 						+'<td>'+data.hm[key][6]+'</td>'
// 						+'<td></td>'
// 						+'<td></td>'
						+'<td> <input type="checkbox" class="delChkBox" name="chkBox" value="'+key+'" onchange="chkDisableDelBtn()"/> </td>'
						+'<td> <input type="button" onclick="puValsInModel(\''+key+'\',\''+data.hm[key][0]+'\',\''+data.hm[key][2]+'\',\''+data.hm[key][3]+'\',\''+data.hm[key][4]+'\',\''+data.hm[key][5]+'\')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/> </td>'
						+'</tr>');

		        }
			},
			error:function(data){

			}
		});
	}
 	</script>

	<script>
		function puValsInModel(QPID, DID, year, pattern, sub, exam){
			$("#qpid-modal").val(QPID);
			$("#dept-modal").val(DID);
			$("#year-modal").val(year);
			$("#pattern-modal").val(pattern);
			$("#sub-modal").val(sub);
			$("#exam-modal").val(exam);
		}


		function chkDisableDelBtn(){
			if ($('.delChkBox:checked').length) {
				$('#deleteButton').removeAttr('disabled');
			} else {
				$('#deleteButton').attr('disabled', 'disabled');
			}

		}
	</script>


  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#date" ).datepicker(
    		{ dateFormat: 'dd/mm/yy' }
    );
    $( "#date-modal" ).datepicker(
    		{ dateFormat: 'dd/mm/yy' }
    );
  } );
  </script>
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
	  			function chkPDF1(){
	  				var f=$('#f2').val();
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
  		<h3 style="line-height: 0px;">Old Question Papers</h3>
  		<br/>
  			<form action="" method="post" enctype="multipart/form-data" onsubmit="return chkPDF()">

  			<table class="planeTbl" style="width:100%">
  				<tr>
  					<td width="15%">Department <span class="req">*</span></td>
  					<td width="35%">
  						<select class="form-control" required name="dept">
  							<option value="" selected="selected">~~ Choose~~</option>
  							<c:forEach var="dept" items="${depts}" >
									<option value="${dept.key}">${dept.value}</option>
  							</c:forEach>
  						</select>
  					</td>
  					<td width="10%">Year <span class="req">*</span></td>
  					<td width="40%"><input type="text" class="form-control" name="year" required placeholder="E.g. F. Y."/></td>
  				</tr>
  				<tr>
  					<td>Pattern <span class="req">*</span></td>
  					<td><input type="text" class="form-control" name="pattern" required placeholder="E.g. 2012 Pattern"/></td>
  					<td>Question  Paper Sub.<span class="req">*</span></td>
  					<td><input type="text" class="form-control" name="sub" required placeholder="Subject"/></td>
  				</tr>
  				<tr>
  					<td>Examination <span class="req">*</span></td>
  					<td><input type="text" class="form-control" name="exam" required placeholder="E.g. Nov-dec 2015"/></td>
  					<td>Upload Document <span class="req">*</span></td>
  					<td>
  						<input type="file"  name="file" id="f1" required/>
  					</td>
  				</tr>

  				<tr>
  					<td><input type="hidden" id="s3path" value="${s3path}"></td>
  					<td><input type="submit" class="btn" value="Submit"> </td>
  				</tr>
  			</table>



  			</form>
  		</div>

  		<br/>
  		<b>Already Saved Question Papers:</b>
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
  		<form action="DeleteQpapers" method="post">
  		<table id="myTable" class="Vscroll">
  			<thead>
  				<tr>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr. No.</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Department </th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Year</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Pattern</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Subject</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Exam</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Document</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
  				</tr>
  			</thead>
  			<tbody>
  				<tr>
  					<td>
	  					<br/><br/><br/>
  							<h4>Loading...</h4>
  						<br/><br/><br/>
  					</td>
  				</tr>

  			</tbody>
  			<thead id="bottonTh">
  				<tr>
  					<th colspan="6"></th>
  					<th colspan="3"><input type="submit" value=" Delete Selected " class="btn-danger" disabled="disabled" id="deleteButton"> </th>
<!--   					<th></th> -->
  				</tr>
  			</thead>
  		</table>
  		</form>





  </div>
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog modal-lg ">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Edit Question Paper</h4>
		        </div>
		        <div class="modal-body" style="text-align: center">
					<form action="UpdateQpaper" method="post"  enctype="multipart/form-data" onsubmit="return chkPDF1()">
		        	<table  class="planeTbl" style="width:100%">
		        		<tr>
		  					<td width="15%">Department <span class="req">*</span></td>
		  					<td width="35%">
		  						<select class="form-control" required name="dept" id="dept-modal">
		  							<option value="" selected="selected">~~ Choose~~</option>
		  							<c:forEach var="dept" items="${depts}" >
											<option value="${dept.key}">${dept.value}</option>
		  							</c:forEach>
		  						</select>
		  					</td>
		  					<td width="10%">Year <span class="req">*</span></td>
		  					<td width="40%"><input type="text" class="form-control" name="year" id="year-modal" required placeholder="E.g. F. Y."/></td>
		  				</tr>
		  				<tr>
		  					<td>Pattern <span class="req">*</span></td>
		  					<td><input type="text" class="form-control" name="pattern" id="pattern-modal" required placeholder="E.g. 2012 Pattern"/></td>
		  					<td>Question  Paper Sub.<span class="req">*</span></td>
		  					<td><input type="text" class="form-control" name="sub" required id="sub-modal" placeholder="Subject"/></td>
		  				</tr>
		  				<tr>
		  					<td>Examination <span class="req">*</span></td>
		  					<td><input type="text" class="form-control" name="exam" id="exam-modal" required placeholder="E.g. Nov-dec 2015"/></td>
		  					<td>Upload Document <span class="req">*</span></td>
		  					<td>
		  						<input type="file"  name="file" id="f2" required/>
		  					</td>
		  				</tr>
		  				<tr>
		  					<td></td>
		  					<td>
		  						<input type="hidden" name="QPID" id="qpid-modal"/>
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



		<button type="button" id="CrSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">Question paper created successfully</h3>

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

		          	<h3 style="color:green">Question paper updated successfully</h3>

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

		          	<h3 style="color:green">Question paper(s) deleted successfully</h3>

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
