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
		if($('#result').val() == ''){

		}
		else if($('#result').val() == '0'){
			alert("Something went wrong. Try again");
		}
		else if($('#result').val() != '0'){
			$("#CrSucc").click();
		}


		if($('#resultDelete').val() == '1'){
			$("#DeleteSucc").click();
		}
		else if($('#resultDelete').val() == '0'){
			alert("Something went wrong. Try again");
		}


	});


	function tableLoad(){
		var galID=$("#gal").val();
				$.ajax({
			type:"GET",
			url:"../GetNaacDoc",
			data:{"galid":galID},
			success:function(data){
				var sno = +0;
				$("#myTable tbody").text("");
				for (var key in data.hm) {
					($('#myTable tbody')).append('<tr >'
						+'<td>'+ ++sno+'</td>'
						/* +'<td style="padding:5px"> <img src="https://s3.us-east-2.amazonaws.com/rmc-bucket/gallery/'+galID+'/'+subgalID+'/'+data.hm[key]+'" style="max-width:100px"/> </td>' */
						+'<td>'+data.hm[key]+'</td>'
						+'<td> <input type="checkbox" class="delChkBox" name="chkBox" value="'+key+'" onchange="chkDisableDelBtn()"/> </td>'
						+'</tr>');

		        }
			},
			error:function(data){

			}
		});



	}

	function loadSubGallery(){
		var galID=$("#gal").val();
		($('#subgal')).text("");
		$.ajax({
			type:"GET",
			url:"../GetAllNaacSsr",
			/* data:{"galid":galID}, */
			success:function(data){
				($('#subgal')).append('<option value="" selected="selected">~~ Choose ~~</option>');
				for (var key in data.hm) {
					($('#subgal')).append('<option value="'+key+'">'+data.hm[key]+'</option>');
		        }
			},
			error:function(data){

			}
		});
	}

	function loadPicsTable(){
// 		$('#imgDiv').show();
		$('#imgDiv').hide();
		$('#subGalID').val($('#subgal').val()); 
		$('#galID').val($('#gal').val());
		if($('#subgal').val() != "" && $('#gal').val() !=""){
			$('#imgDiv').show();
			tableLoad();
		}
		else{
			alert("Select gallery and Enter Document Name.");
		}

	}

	</script>

	<script>
		function puValsInModel(id, galleryID, caption,details,venu,date){
			$("#ID-modal").val(id);
			$("#gal-modal").val(galleryID);
			$("#caption-modal").val(caption);
			$("#details-modal").val(details);
			$("#venue-modal").val(venu);
			$("#date-modal").val(date);
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

  		<div  style="border:0px solid #aaa;padding:10px;border-radius:5px;text-align: center">
  			<div style="margin: auto">
	  		<h3>Add Documents</h3>
	  		<br/>
	  			<table  class="planeTbl" style="width:100%">
	  				<tr>
	  					<td style="width:10%">Gallery <span class="req">*</span></td>
	  					<td style="width:40%">
	  						<select name="gal" id="gal" required class="form-control" onchange="loadSubGallery()">
	  							<option value="" selected="selected">~~ Choose ~~</option>
	  							<c:forEach var="rec" items="${gal}">
	  								<option value="${rec.key}">${rec.value}</option>
	  							</c:forEach>
	  						</select>
	  					</td>
	  					<td style="width:10%;text-align: right">Document Name <span class="req">*</span></td>
	  					<td style="width:100%">
	  						
  						<input type="text"  name="fname" id="subgal" required class="form-control"/>
  					</td>
	  					
	  				</tr>

	  				<tr>
	  					<td></td>
	  					<td></td>
	  					<td>
	  						<input type="hidden" value="0" name="ID"/>
	  						<input type="submit" value=" Proceed " class="btn" onclick="loadPicsTable()"/>
	  					</td>
	  				</tr>
	  			</table>
<!-- 	  			<br/> -->
	  				<hr/>
<!-- 	  			<br/> -->
	  		</div>

	  		<div id="imgDiv" style="display:none">
	  			<style>
	  				.bgcolor td{
	  					background-color:#eaecee
	  				}
	  			</style>
	  			<form action="" method="post" enctype="multipart/form-data" onsubmit="return chkPDF()">
		  			<table class="planeTbl bgcolor" style="width:60%;margin:auto;border:0px solid red">
		  				<tr>
		  					<td>Upload Files</td>
		  					<td><input type="file"  name="file" id="f1" required multiple="multiple"> </td>
		  				</tr>
		  				<tr>
		  					<td colspan="2" style="text-align: center;">
		  						<input type="hidden" value="" name="galID" id="galID">
		  						<input type="hidden" value="" name="subGalID" id="subGalID">
		  						<input type="submit" class="btn" value=" Upload ">
		  					</td>
		  				</tr>
		  			</table>
	  			</form>
				<br/>


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
	  		<form action="DeleteNaacDoc" method="post">
	  		<table id="myTable" class="Vscroll">
	  			<thead>
	  				<tr>
	  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr. No</th>
	  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Document Name </th>
	  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
	  				</tr>
	  			</thead>
	  			<tbody>
	  				<tr>
	  					<td colspan="3">
	  							<br/><br/><br/>
	  							<h4>Loading...</h4>
	  							<br/><br/><br/>
	  					</td>
	  				</tr>

	  			</tbody>
	  			<thead id="bottonTh">
	  				<tr>
	  					<th colspan="3"></th>
	  					<th colspan="1"><input type="submit" value=" Delete Selected " class="btn-danger" disabled="disabled" id="deleteButton"> </th>
	<!--   					<th></th> -->
	  				</tr>
	  			</thead>
	  		</table>
	  		</form>

  			</div>

  		</div>





  </div>
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog modal-lg ">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Edit Sub Gallery</h4>
		        </div>
		        <div class="modal-body" style="text-align: center">
					<br/><br/>
					<form action="" method="post">
		  			<table  class="planeTbl" style="width:100%">
		  				<tr>
		  					<td>Gallery <span class="req">*</span></td>
		  					<td>
		  						<select name="gal" id="gal-modal" required class="form-control">
		  							<option value="" selected="selected">~~ Choose ~~</option>
		  							<c:forEach var="rec" items="${gal}">
		  								<option value="${rec.key}">${rec.value}</option>
		  							</c:forEach>
		  						</select>
		  					</td>
		  					<td>Caption <span class="req">*</span></td>
		  					<td><input type="text" name="caption" id="caption-modal" required class="form-control" /></td>
		  				</tr>
		  				<tr>
		  					<td>Details <span class="req">*</span></td>
		  					<td><input type="text" name="details" id="details-modal" required class="form-control" /></td>
		  					<td>Venue <span class="req">*</span></td>
		  					<td><input type="text" name="venue" id="venue-modal" required class="form-control" /></td>
		  				</tr>
		  				<tr>
		  					<td>Date <span class="req">*</span></td>
		  					<td><input type="text" name="dt" id="date-modal" required class="form-control" /></td>

		  				</tr>
		  				<tr>
		  					<td></td>
		  					<td>
		  						<input type="hidden" value="0" name="ID" id="ID-modal"/>
		  						<input type="submit" value=" Update " class="btn" />
		  					</td>
		  				</tr>
		  			</table>
		  			</form>
					<br/>
					<span id="modelResult"></span>

					<br/>
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
<!-- 		        <div class="modal-header"> -->
<!-- 		          <button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!-- 		          <h4 class="modal-title">Edit Department</h4> -->
<!-- 		        </div> -->
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">Image(s) Uploaded Successfully</h3>

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

		          	<h3 style="color:green">Gallery Picture(s) deleted successfully</h3>

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
<input type="hidden" value="${resultDelete}" id="resultDelete"/>
<c:remove var="resultDelete"/>


	<jsp:include page="footer.jsp"></jsp:include>




</body>
</html>
