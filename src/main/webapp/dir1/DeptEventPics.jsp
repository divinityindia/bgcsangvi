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

<!-- 
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
			url:"../GetAllGalleryMasters",
			success:function(data){
				var sno = +0;
				$("#myTable tbody").text("");
				for (var key in data.hm) {
					($('#myTable tbody')).append('<tr >'
						+'<td>'+ ++sno+'</td>'
						+'<td>'+data.hm[key]+'</td>'
						+'<td> <input type="checkbox" class="delChkBox" name="chkBox" value="'+key+'" onchange="chkDisableDelBtn()"/> </td>'
						+'<td> <input type="button" onclick="puValsInModel(\''+key+'\',\''+data.hm[key]+'\')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/> </td>'
						+'</tr>');

		        }
			},
			error:function(data){

			}
		});
	}
	</script>

	<script>
		function puValsInModel(id, caption){
			$("#ID-modal").val(id);
			$("#caption-modal").val(caption);
		}

		function chkDisableDelBtn(){
			if ($('.delChkBox:checked').length) {
				$('#deleteButton').removeAttr('disabled');
			} else {
				$('#deleteButton').attr('disabled', 'disabled');
			}

		}

	</script>
 -->
 
 								
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
			

			<script>
				 function getDetails(){
					 var orID=$('#ornm').val();
					 
					
					 $.ajax({
							type:"get",
							url : "../GetAllMaster",
							data : {"did":orID},
							success:function(data){
								$.each(data, function (i, item) { 
									
									
					    		 	 $('#clss').append('<option value="'+item.eid+'">'+item.caption+'</option>')
					    		
					    		});
							},
							error:function(){
								
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

  		<div  style="border:1px solid #aaa;padding:10px;border-radius:5px;text-align: center">
  			<div style="width:70%;margin: auto">
	  		<h3>Add Images</h3>
	  		<br/>
	  		 <script>
	  		function chkImg(){
  				var f=$('#f1').val();
  				if(f != "")
  				{
  						
  					var ext = f.substr( (f.lastIndexOf('.') +1) );
  				
	  				if(ext.toLowerCase() == 'png' || ext.toLowerCase() == 'jpg' ||ext.toLowerCase() == 'jpeg')
  					{
  						return true;
  					}
	  				else{
	  					alert("Please Select Png/Jpg/Jpeg File Only");
	  					return false;	
	  				}
  				}
  				
  				
  				
  			}
	  		</script>
	  			<form action="DeptEventPics" method="post" enctype="multipart/form-data" onsubmit="return chkImg()">
	  			<table   style="width:100%">
	  				<tr>
	  				    <td>Dept Name:-</td>
	  				    <td><%-- <select class="form-control" required="required" name="did" id="ornm" onchange="getDetails()">
  							<option value="" selected="selected">~~ Choose~~</option>
  							<c:forEach var="dept" items="${dep}" >
								<option value="${dept.key}">${dept.value}</option>
  							</c:forEach>
  						</select> --%>
  						<select class="form-control" required="required" name="did" id="ornm" onchange="getDetails()">
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
  						<td>Master Name:-</td>
	  				    <td><select class="form-control" required="required" name="mid" id="clss">
  							
  						</select></td>
	  					
	  				</tr>
	  				<tr>
	  					<td>Image<span class="req">*</span></td>
	  					<td><input type="file" name="img" required="required" class="form-control" id="f1" /></td>
	  					<td>
	  						
	  						<input type="submit" value=" ADD " class="btn" />
	  					</td>
	  				</tr>
	  			</table>
<!-- 					<b>Department Name </b> : <input type="text" name="dept" required /> -->
<!-- 					<br/><br/> -->
<!-- 					<input type="submit" value=" ADD " class="btn" /> -->
	  			</form>
	  		</div>
  		</div>
  		<br/>
  		<b>Already created Masters:</b>
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
  		<form action="" method="post">
  		<table id="myTable" class="Vscroll">
  			<thead>
  				<tr>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr. No</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Master id</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Deptid</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Caption </th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
  					
  				</tr>
  			</thead>
  			<tbody>
  			   <c:forEach var="cp" items="${cat}" varStatus="row">
  				<tr>
  					<td>${row.count}</td>
  					<td>${cp.caption}</td>
  					<td>${cp.deptname}</td>
  					<td><img src="${s3path}DeptEventpics/${cp.mid}_${cp.image}" style="height: 100px; width: 100px;"/></td>
  					<td><a href="DeptDeletePic?id=${cp.sid}">Delete</a></td>
  					
  				</tr>
            </c:forEach>
  			</tbody>
  			
  		</table>
  		</form>





  </div>
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Edit Gallery</h4>
		        </div>
		        <div class="modal-body" style="text-align: center">
					<br/><br/>
					<form action="" method="post">
					<table  class="planeTbl" style="width:100%">
		  				<tr>
		  					<td>Caption <span class="req">*</span></td>
		  					<td><input type="text" name="caption" id="caption-modal" required class="form-control" /></td>
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

		          	<h3 style="color:green">Gallery deleted successfully</h3>

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
