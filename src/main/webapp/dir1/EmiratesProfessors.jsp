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
		if($('#result').val() == '1'){
			$("#deptCrSucc").click();
		}
		if($('#resultUpdate').val() == '1'){
			$("#deptUpdateSucc").click();
		}
		if($('#resultDelete').val() == '1'){
			$("#deptDeleteSucc").click();
		}
		if($('#result').val() == '0' || $('#resultUpdate').val() == '0' || $('#resultDelete').val() == '0'){
			alert("Something went wrong. Try again");
		}



// 		tableLoad();
	});


	function tableLoad(){
		$.ajax({
			type:"GET",
			url:"../GetAllUsers",
			success:function(data){
				$("#myTable tbody").text("");
				for (var key in data.hm) {
					($('#myTable tbody')).append('<tr >'
						+'<td>'+ key +'</td>'
						+'<td>'+data.hm[key][1]+'</td>'
						+'<td>'+data.hm[key][2]+'</td>'
						+'<td> <input type="checkbox" class="delChkBox" name="chkBox" value="'+key+'" onchange="chkDisableDelBtn()"/> </td>'
						+'<td> <input type="button" onclick="puValsInModel(\''+key+'\',\''+data.hm[key][0]+'\',\''+data.hm[key][2]+'\')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/> </td>'
						+'</tr>');

		        }
			},
			error:function(data){

			}
		});
	}
 	</script>

	<script>
		function puValsInModel(ID, name, username, phno, email){
			$("#ID-modal").val(ID);
			$("#name-modal").val(name);
			$("#username-modal").val(username);
			$("#phno-modal").val(phno);
			$("#email-modal").val(email);
		}


		function chkDisableDelBtn(){
			if ($('.delChkBox:checked').length) {
				$('#deleteButton').removeAttr('disabled');
			} else {
				$('#deleteButton').attr('disabled', 'disabled');
			}

		}
	</script>

	<script>
		function ChkDuplicateUser(box) {
			var val=$(box).val().toUpperCase();

			$("#myTable tbody").find("tr").each(function(index) {
		        var id = $(this).find("td:eq(2) ").text().toUpperCase();
		        if(id == val){
		        	alert('Username '+$(box).val()+' is already present. Please choose different username');
		        	$(box).val('');
		        }
		    });
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
  		<h3 style="line-height: 0px;">Add Emitares Professor</h3>
  		<br/>
  			<form action="" method="post">

  			<table class="planeTbl" style="width:100%">
  				<tr>
  					<td>Name <span class="req">*</span></td>
  					<td>
  						<input type="text" required name="name" class="form-control" id="name" placeholder="Name" autocomplete="off"/>
  					</td>
  				</tr>
  				<tr>
  					<td width="10%">User Name <span class="req">*</span></td>
  					<td width="40%"><input type="text" required name="username" class="form-control" id="username" onblur="ChkDuplicateUser(this)" placeholder="User Name" autocomplete="off"/> </td>
  					<td width="10%">Password <span class="req">*</span></td>
  					<td width="40%">
  						<input type="password" required name="password" class="form-control" id="password" placeholder="Passward" autocomplete="new-password"/>
  					</td>
  				</tr>
  				<tr>
  					<td width="10%">Contact No.</td>
  					<td width="40%"><input type="text" name="phno" class="form-control" id="phno" placeholder="Contact no." /> </td>
  					<td width="10%">E-Mail </td>
  					<td width="40%">
  						<input type="email"  name="email" class="form-control" id="email" placeholder="Email" />
  					</td>
  				</tr>
  				<tr>
  					<td></td>
  					<td>
  						<input type="hidden" value="0" name="ID" />
  						<input type="hidden" value="result" name="type" />
  						<input type="submit" value=" ADD " class="btn" />
  					</td>
  				</tr>
  			</table>



  			</form>
  		</div>

  		<br/>
  		<b>Already created Professors:</b>
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
  		<form action="DeleteEmirateProfessor" method="post">
  		<table id="myTable" class="Vscroll">
  			<thead>
  				<tr>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr. No.</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Name </th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">User Name</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Contact No </th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Email </th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
  				</tr>
  			</thead>
  			<tbody>
  				<c:forEach var="rec" items="${hm}" varStatus="i">
					<tr>
						<td>${i.count}</td>
						<td>${rec.value.name}</td>
						<td>${rec.value.userName}</td>
						<td>${rec.value.phno}</td>
						<td>${rec.value.email}</td>
						<td><input type="checkbox" class="delChkBox" name="chkBox" value="${rec.key}" onchange="chkDisableDelBtn()"/> </td>
						<td><input type="button" onclick="puValsInModel('${rec.key}','${rec.value.name}','${rec.value.userName}','${rec.value.phno}','${rec.value.email}')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/> </td>
					</tr>
  				</c:forEach>

  			</tbody>
  			<thead id="bottonTh">
  				<tr>
  					<th colspan="5"></th>
  					<th><input type="submit" value=" Delete Selected " class="btn-danger" disabled="disabled" id="deleteButton"> </th>
  					<th></th>
  				</tr>
  			</thead>
  		</table>
  		</form>





  </div>
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog modal-lg">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Edit </h4>
		        </div>
		        <div class="modal-body" style="text-align: center">
					<form action="" method="post">
			  			<table class="planeTbl" style="width:100%">
			  				<tr>
			  					<td>Name <span class="req">*</span></td>
			  					<td>
			  						<input type="text" required name="name" class="form-control" id="name-modal" placeholder="Name" autocomplete="off"/>
			  					</td>
			  				</tr>
			  				<tr>
			  					<td >User Name <span class="req">*</span></td>
			  					<td ><input type="text" required name="username" class="form-control" onblur="ChkDuplicateUser(this)" id="username-modal" placeholder="User Name" autocomplete="off"/> </td>
			  					<td >Password <span class="req">*</span></td>
			  					<td >
			  						<input type="password" required name="password" class="form-control" id="password"  autocomplete="new-password"/>
			  					</td>
			  				</tr>
			  				<tr>
			  					<td>Contact No.</td>
			  					<td><input type="text" name="phno" class="form-control" id="phno-modal"  /> </td>
			  					<td >E-Mail </td>
			  					<td >
			  						<input type="email"  name="email" class="form-control" id="email-modal"  />
			  					</td>
			  				</tr>
			  				<tr>
			  					<td></td>
			  					<td>
			  						<input type="hidden"  name="ID" id="ID-modal" />
			  						<input type="hidden" value="resultUpdate" name="type" />
			  						<input type="submit" value=" Update " class="btn" />
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



		<button type="button" id="deptCrSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">New user created successfully</h3>

					<br/><br/>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn" data-dismiss="modal">   Close  </button>
		        </div>
		      </div>
		    </div>
		  </div>


		  <button type="button" id="deptUpdateSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success-update">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success-update" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">User updated successfully</h3>

					<br/><br/>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn" data-dismiss="modal">   Close  </button>
		        </div>
		      </div>
		    </div>
		  </div>

		  <button type="button" id="deptDeleteSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success-delete">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success-delete" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">User(s) deleted successfully</h3>

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
