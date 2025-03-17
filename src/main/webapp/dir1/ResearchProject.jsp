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
		tableLoad2();
	});


	function tableLoad(){
		var s3path=$('#s3path').val();
		$.ajax({
			type:"GET",
			url:"../GetResearchProject?type=Major",
			success:function(data){
				$("#myTable1 tbody").text("");
				var sno= +0;
				for (var key in data.hm) {
					($('#myTable1 tbody')).append('<tr >'
						+'<td>'+ ++sno +'</td>'
						+'<td>'+data.hm[key][1]+'</td>'
						+'<td>'+data.hm[key][2]+'</td>'
						+'<td><a href="'+s3path+'research_project/'+key+'/'+data.hm[key][3]+'" target="_blank">'+data.hm[key][3]+'</a></td>'
						+'<td> <input type="checkbox" class="delChkBox1" name="chkBox" value="'+key+'" onchange="chkDisableDelBtn1()"/> </td>'
						+'<td> <input type="button" onclick="puValsInModel(\''+key+'\',\''+data.hm[key][0]+'\',\''+data.hm[key][1]+'\',\''+data.hm[key][2]+'\')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/> </td>'
						+'</tr>');

		        }
			},
			error:function(data){

			}
		});
	}

	function tableLoad2(){
		var s3path=$('#s3path').val();
		$.ajax({
			type:"GET",
			url:"../GetResearchProject?type=Minor",
			success:function(data){
				$("#myTable2 tbody").text("");
				var sno= +0;
				for (var key in data.hm) {
					($('#myTable2 tbody')).append('<tr >'
						+'<td>'+ ++sno +'</td>'
						+'<td>'+data.hm[key][1]+'</td>'
						+'<td>'+data.hm[key][2]+'</td>'
						+'<td><a href="'+s3path+'research_project/'+key+'/'+data.hm[key][3]+'" target="_blank">'+data.hm[key][3]+'</a></td>'
						+'<td> <input type="checkbox" class="delChkBox2" name="chkBox" value="'+key+'" onchange="chkDisableDelBtn2()"/> </td>'
						+'<td> <input type="button" onclick="puValsInModel(\''+key+'\',\''+data.hm[key][0]+'\',\''+data.hm[key][1]+'\',\''+data.hm[key][2]+'\')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/> </td>'
						+'</tr>');

		        }
			},
			error:function(data){

			}
		});
	}


 	</script>

	<script>
		function puValsInModel(ID, proType, title, details){
			$("#ID-modal").val(ID);
			$("#proType-modal").val(proType);
			$("#title-modal").val(title);
			$("#details-modal").val(details);
		}

		function chkDisableDelBtn1(){
			if ($('.delChkBox1:checked').length) {
				$('#deleteButton1').removeAttr('disabled');
			}
			else
			{
				$('#deleteButton1').attr('disabled', 'disabled');
			}
		}
		function chkDisableDelBtn2(){
			if ($('.delChkBox2:checked').length) {
				$('#deleteButton2').removeAttr('disabled');
			}
			else
			{
				$('#deleteButton2').attr('disabled', 'disabled');
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
  <style>
		#myTable1, #myTable2{
			font-size: 0.85em;
		}
		#myTable1 th:nth-child(1),#myTable1 td:nth-child(1),#myTable2 th:nth-child(1),#myTable2 td:nth-child(1),
		#myTable1 th:nth-child(5),#myTable1 td:nth-child(5),#myTable2 th:nth-child(5),#myTable2 td:nth-child(5)
		{
			width: 50px;
		}

		#myTable1 th:nth-child(6),#myTable1 td:nth-child(6),#myTable2 th:nth-child(6),#myTable2 td:nth-child(6){
 			width: 50px;
 		}

		#myTable1 thead,#myTable2 thead{
			width: calc(100% - 1.4em);
		}
		.innerDiv{
			//border:1px solid #aaa;
		}
		#myTable1,#myTable2{
			border:1px solid #aaa;//#008080;
			background: #eeeeee88;
		}

  </style>


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
  		<h3 style="line-height: 0px;">Research Project</h3>
  		<br/>
  			<form action="ResearchProject" method="post" enctype="multipart/form-data" onsubmit="return chkPDF()">

  			<table class="planeTbl" style="width:100%">
  				<tr>
  					<td width="15%">Type <span class="req">*</span></td>
  					<td width="35%">
  						<select class="form-control" required name="proType">
  							<option value="" selected="selected">~~ Choose~~</option>
  							<option>Major</option>
  							<option>Minor</option>
  						</select>
  					</td>
  					<td width="10%">Title <span class="req">*</span></td>
  					<td width="40%"><input type="text" class="form-control" name="title" required/></td>
  				</tr>
  				<tr>
  					<td>Upload Document</td>
  					<td>
  						<input type="file"  name="file" id="f1"/>
  					</td>
  					<td rowspan="2">Datails</td>
  					<td rowspan="2"><textarea rows="" cols="" class="form-control" style="resize:none" name="details"></textarea> </td>
  				</tr>


  				<tr>
  					<td><input type="hidden" id="s3path" value="${s3path}"></td>
  					<td>
  						<input type="hidden" name="ID" value="0"/>
  						<input type="hidden" name="type" value="result"/>
  						<input type="submit" class="btn" value="Submit"/>
  					</td>
  				</tr>
  			</table>



  			</form>
  		</div>

  		<br/>
  		<b>Already created Research Project:</b>
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

  		<div class="row">
			<div class="col-lg-6 col-md-6 .col-sm-12">
				<div class="innerDiv">
				<h4>Major Project</h4>
				<form action="DeleteResearchProject" method="post">
		  		<table id="myTable1" class="Vscroll">
		  			<thead>
		  				<tr>
		  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sno.</th>
		  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Title</th>
		  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Details</th>
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
		  					<th></th>
		  					<th colspan="3"></th>
		  					<th colspan="2"><input type="submit" value=" Delete Selected " class="btn-danger" disabled="disabled" id="deleteButton1"> </th>
		  				</tr>
		  			</thead>
		  		</table>
		  		</form>
		  		</div>
			</div>

			<div class="col-lg-6 col-md-6 .col-sm-12">
				<h4>Minor Project</h4>
				<form action="DeleteResearchProject" method="post">
		  		<table id="myTable2" class="Vscroll">
		  			<thead>
		  				<tr>
		  					<th>Sno.</th><th>Title</th><th>Details</th><th>Document</th>
		  					<th>Delete</th><th>Edit</th>
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
		  					<th></th>
		  					<th colspan="3"></th>
		  					<th colspan="2"><input type="submit" value=" Delete Selected " class="btn-danger" disabled="disabled" id="deleteButton2"> </th>
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
		          <h4 class="modal-title">Edit</h4>
		        </div>
		        <div class="modal-body" style="text-align: center">
					<form action="" method="post" enctype="multipart/form-data" onsubmit="return chkPDF1()">

			  			<table class="planeTbl" style="width:100%">
			  				<tr>
			  					<td width="15%">Type <span class="req">*</span></td>
			  					<td width="35%">
			  						<select class="form-control" required name="proType" id="proType-modal">
			  							<option value="" selected="selected">~~ Choose~~</option>
			  							<option>Major</option>
			  							<option>Minor</option>
			  						</select>
			  					</td>
			  					<td width="10%">Title <span class="req">*</span></td>
			  					<td width="40%"><input type="text" class="form-control" name="title" id="title-modal" required/></td>
			  				</tr>
			  				<tr>
			  					<td>Upload Document</td>
			  					<td>
			  						<input type="file"  name="file" id="f2"/>
			  					</td>
			  					<td rowspan="2">Datails</td>
			  					<td rowspan="2"><textarea rows="" cols="" class="form-control" style="resize:none" name="details" id="details-modal"></textarea> </td>
			  				</tr>

			  				<tr>
			  					<td></td>
			  					<td>
			  						<input type="hidden" name="ID" id="ID-modal"/>
			  						<input type="hidden" name="type" value="resultUpdate"/>
			  						<input type="submit" class="btn" value="Update"/>
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

		          	<h3 style="color:green">Research Project created successfully</h3>

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

		          	<h3 style="color:green">Research Project updated successfully</h3>

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

		          	<h3 style="color:green">Research Project(s) deleted successfully</h3>

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
