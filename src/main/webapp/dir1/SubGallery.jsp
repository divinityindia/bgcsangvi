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

		tableLoad();
	});


	function tableLoad(){
		$.ajax({
			type:"GET",
			url:"../GetAllSubGallerys",
			success:function(data){
				var sno = +0;
				$("#myTable tbody").text("");
				for (var key in data.hm) {
					($('#myTable tbody')).append('<tr >'
						+'<td>'+ ++sno+'</td>'
						+'<td>'+data.hm[key][1]+'</td>'
						+'<td>'+data.hm[key][2]+'</td>'
						+'<td>'+data.hm[key][3]+'</td>'
						+'<td>'+data.hm[key][4]+'</td>'
						+'<td>'+data.hm[key][5]+'</td>'
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
  			<div style="margin: auto">
	  		<h3>Sub Gallery Master</h3>
	  		<br/>
	  			<form action="" method="post">
	  			<table  class="planeTbl" style="width:100%">
	  				<tr>
	  					<td>Gallery <span class="req">*</span></td>
	  					<td>
	  						<select name="gal" required class="form-control">
	  							<option value="" selected="selected">~~ Choose ~~</option>
	  							<c:forEach var="rec" items="${gal}">
	  								<option value="${rec.key}">${rec.value}</option>
	  							</c:forEach>
	  						</select>
	  					</td>
	  					<td>Caption <span class="req">*</span></td>
	  					<td><input type="text" name="caption" required class="form-control" /></td>
	  				</tr>
	  				<tr>
	  					<td>Details <span class="req">*</span></td>
	  					<td><input type="text" name="details" required class="form-control" /></td>
	  					<td>Venue <span class="req">*</span></td>
	  					<td><input type="text" name="venue" required class="form-control" /></td>
	  				</tr>
	  				<tr>
	  					<td>Date <span class="req">*</span></td>
	  					<td><input type="text" name="dt" id="date" required class="form-control" /></td>

	  				</tr>
	  				<tr>
	  					<td></td>
	  					<td>
	  						<input type="hidden" value="0" name="ID"/>
	  						<input type="submit" value=" ADD " class="btn" />
	  					</td>
	  				</tr>
	  			</table>
	  			</form>
	  		</div>
  		</div>
  		<br/>
  		<b>Already created Sub galleries:</b>
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
  		<form action="DeleteSubGallery" method="post">
  		<table id="myTable" class="Vscroll">
  			<thead>
  				<tr>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr. No</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Main Gallery</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sub gallery Caption </th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Detail</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Venue</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Date</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
  				</tr>
  			</thead>
  			<tbody>
  				<tr>
  					<td colspan="4">
  							<br/><br/><br/>
  							<h4>Loading...</h4>
  							<br/><br/><br/>
  					</td>
  				</tr>

  			</tbody>
  			<thead id="bottonTh">
  				<tr>
  					<th colspan="5"></th>
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

		          	<h3 style="color:green">Operation Performed Successfully</h3>

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

		          	<h3 style="color:green">Sub gallery deleted successfully</h3>

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
