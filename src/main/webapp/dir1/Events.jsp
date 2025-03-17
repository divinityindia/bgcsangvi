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
			url:"../GetAllEvents",
			success:function(data){
				$("#myTable tbody").text("");
				for (var key in data.hm) {
					var arr=new Array(data.hm[key]);
					($('#myTable tbody')).append('<tr >'
						+'<td>'+ key +'</td>'
						+'<td>'+data.hm[key][1]+'</td>'
						+'<td>'+data.hm[key][3]+'</td>'
						+'<td><a href="'+s3path+'events/'+key+'/'+data.hm[key][4]+'" target="_blank">'+data.hm[key][4]+'</a></td>'
						+'<td>'+data.hm[key][13]+'</td>'
						+'<td>'+data.hm[key][15]+'</td>'
						+'<td>'+data.hm[key][17]+'</td>'
						+'<td>'+data.hm[key][18]+'</td>'
						+'<td> <input type="checkbox" class="delChkBox" name="chkBox" value="'+key+'" onchange="chkDisableDelBtn()"/> </td>'
// 						+'<td> <input type="button" onclick="puValsInModel(\''+key+'\',\''+arr+'\')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/> </td>'
						
						+'</tr>');

		        }
			},
			error:function(data){

			}
		});
	}
 	</script>

	<script>
		function puValsInModel(EID, arr){ alert(arr+" -> "+arr[0]+" -> "+arr[1]+" -> "+arr[2]+" -> "+arr[3])
			$("#EID-modal").val(EID);
			$("#dept-modal").val(arr[0]);
			$("#cat-modal").val(arr[2]);
			$("#date-modal").val(date);
			$("#details-modal").val(details);
			$("#status-modal").val(status);
			$("#link-modal").val(link);
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

  <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">

  <script>
  $( function() {
    $( "#sDate" ).datepicker(
    		{ dateFormat: 'dd/mm/yy' }
    );
    $( "#eDate" ).datepicker(
    		{ dateFormat: 'dd/mm/yy' }
    );

    $( "#sTime" ).timepicker(
    		{
    			timeFormat: 'h:mm p',
    		    interval: 15,
    		    dynamic: false,
    		    dropdown: true,
    		    scrollbar: true
    		}
    );
    $( "#eTime" ).timepicker(
    		{
    			timeFormat: 'h:mm p',
    		    interval: 15,
    		    dynamic: false,
    		    dropdown: true,
    		    scrollbar: true
    		}
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
		span.req{
			color:red;

		}
	</style>

  		<div style="border:1px solid #aaa;padding:10px;border-radius:5px;text-align: center">
  		<h3 style="line-height: 0px;">Event Manager</h3>
  		<br/>
  			<form action="" method="post" enctype="multipart/form-data" >

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
  					<td width="15%">Category <span class="req">*</span></td>
  					<td width="35%">
  						<select name="category"  class="form-control" required>
  							<option value="" selected="selected">~~ Choose~~</option>
  							<option value="Academic">Academic</option>
  							<option value="Cultural">Cultural</option>
  							<option value="Sports">Sports</option>
  							<option value="Social">Social</option>
  						</select>
  					</td>
  				</tr>
  				<tr>
  					<td>Event Title <span class="req">*</span></td>
  					<td><input type="text" class="form-control" name="eventtitle" required/></td>
  					<td>Organized By</td>
  					<td><input type="text" class="form-control" name="organizedby"/></td>
  				</tr>
  				<tr>
  					<td>Organized For</td>
  					<td><input type="text" class="form-control" name="organizedfor"/></td>
  					<td>Venue</td>
  					<td><input type="text" class="form-control" name="venue" /></td>
  				</tr>
  				<tr>
  					<td >Details</td>
  					<td ><textarea rows="" cols="" class="form-control" style="resize:none" name="details"></textarea> </td>
  					<td >Instructions</td>
  					<td ><textarea rows="" cols="" class="form-control" style="resize:none" name="instructions"></textarea> </td>
  				</tr>
  				<tr>
  					<td>Start Date <span class="req">*</span></td>
  					<td><input type="text" class="form-control" autocomplete="off" id="sDate" name="startdate" required/></td>
  					<td>Link if ant</td>
  					<td><input type="text" class="form-control"  name="url" /></td>

  				</tr>
  				<tr>
  					<td>Start Time</td>
  					<td><input type="text" class="form-control"  id="sTime" name="starttime" /></td>
					<td>Upload Document</td>
  					<td>
  						<input type="file"  name="file"/>
  					</td>
  				</tr>
  				<tr>
  					<td>End Date  <span class="req">*</span></td>
  					<td><input type="text" class="form-control" autocomplete="off"  id="eDate" name="enddate" required/></td>
  					<td>Contact Person <span class="req">*</span></td>
  					<td><input type="text" class="form-control"  name="contactperson" required/></td>
  				</tr>
  				<tr>
  					<td>End Time</td>
  					<td><input type="text" class="form-control"  id="eTime" name="endtime" /></td>
  					<td>Status  <span style="font-size: 0.8em">(To view online)</span>  <span class="req">*</span></td>
  					<td>
  						<select class="form-control" required name="status">
								<option value="Yes">Yes</option>
								<option value="No">No</option>
  						</select>
  					</td>

  				</tr>
  				<tr>
  					<td>Event Blink<span style="font-size: 0.8em">(To view Blinking online)</span>  <span class="req">*</span></td>
  					<td>
  						<select class="form-control" name="active" required="required">
  							<option value="">Choose</option>
  							<option value="Yes">Yes</option>
  							<option value="No">No</option>
  						</select>
  					</td>
  					<td colspan="2" ><input type="hidden" id="s3path" value="${s3path}">
  					<input type="submit" value="Submit" class="btn" style="margin-left: 20%;"></td>
  				</tr>

  			</table>



  			</form>
  		</div>

  		<br/>
  		<b>Already created Events:</b>
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
  		<form action="DeleteEvents" method="post">
  		<table id="myTable" class="Vscroll">
  			<thead>
  				<tr>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Event ID</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Department </th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Title</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Document</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Start Date</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">End Date</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Status</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Active</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
  				</tr>
  			</thead>
  			<tbody>

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
		          <h4 class="modal-title">Edit Event</h4>
		        </div>
		        <div class="modal-body" style="text-align: center">
					<form action="" method="post" enctype="multipart/form-data" >

  			<table class="planeTbl" style="width:100%">
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
  					<td width="15%">Category <span class="req">*</span></td>
  					<td width="35%">
  						<select name="category"  class="form-control" required id="cat-modal">
  							<option value="" selected="selected">~~ Choose~~</option>
  							<option value="Academic">Academic</option>
  							<option value="Cultural">Cultural</option>
  							<option value="Sports">Sports</option>
  							<option value="Social">Social</option>
  						</select>
  					</td>
  				</tr>
  				<tr>
  					<td>Event Title <span class="req">*</span></td>
  					<td><input type="text" class="form-control" name="eventtitle" required/></td>
  					<td>Organized By</td>
  					<td><input type="text" class="form-control" name="organizedby"/></td>
  				</tr>
  				<tr>
  					<td>Organized For</td>
  					<td><input type="text" class="form-control" name="organizedfor"/></td>
  					<td>Venue</td>
  					<td><input type="text" class="form-control" name="venue" /></td>
  				</tr>
  				<tr>
  					<td >Details</td>
  					<td ><textarea rows="" cols="" class="form-control" style="resize:none" name="details"></textarea> </td>
  					<td >Instructions</td>
  					<td ><textarea rows="" cols="" class="form-control" style="resize:none" name="instructions"></textarea> </td>
  				</tr>
  				<tr>
  					<td>Start Date <span class="req">*</span></td>
  					<td><input type="text" class="form-control"  id="sDate" name="startdate" required/></td>
  					<td>Link if ant</td>
  					<td><input type="text" class="form-control"  name="url" /></td>

  				</tr>
  				<tr>
  					<td>Start Time</td>
  					<td><input type="text" class="form-control"  id="sTime" name="starttime" /></td>
					<td>Upload Document</td>
  					<td>
  						<input type="file"  name="file"/>
  					</td>
  				</tr>
  				<tr>
  					<td>End Date  <span class="req">*</span></td>
  					<td><input type="text" class="form-control"  id="eDate" name="enddate" required/></td>
  					<td>Contact Person <span class="req">*</span></td>
  					<td><input type="text" class="form-control"  name="contactperson" required/></td>
  				</tr>
  				<tr>
  					<td>End Time</td>
  					<td><input type="text" class="form-control"  id="eTime" name="endtime" /></td>
  					<td>Status  <span style="font-size: 0.8em">(To view online)</span>  <span class="req">*</span></td>
  					<td>
  						<select class="form-control" required name="status">
								<option value="Yes">Yes</option>
								<option value="No">No</option>
  						</select>
  					</td>

  				</tr>
  				<tr>
  					<td></td>
  					<td>
						<input type="text" name="EID" id="EID-modal"/>
  						<input type="submit" value="Submit" class="btn">
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

		          	<h3 style="color:green">Event created successfully</h3>

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

		          	<h3 style="color:green">Event updated successfully</h3>

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

		          	<h3 style="color:green">Event deleted successfully</h3>

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
