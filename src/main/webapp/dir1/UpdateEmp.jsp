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
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->




	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script>
		function loadSearcheTable(){
			var s3path=$('#s3path').val();
			var dept=$("#dept").val();
			$("#tblWrapperDiv").show();
			$(".outerTbl").text("");
			($('.outerTbl')).append('<tr >'
					+'<td style="text-align:center"><h3>Loading...</h3></td>'
					+'</tr>');

			$.ajax({
				type:"GET",
				url:"../GetDepWiseEmp1?id="+dept,
				success:function(data){
					$(".outerTbl").text("");
						if(data.al.length != 0){
							for (var key in data.al) {
								var photoString='<div style="width:100px;height:100px;border:1px solid #888"></div>'
								var photo = printVal(data.al[key].photo);
								if(photo !=""){
									photoString='<img src="'+s3path+'emp/'+data.al[key].EID+'/photo/'+photo+'"/> ';
								}

								($('.outerTbl')).append('<tr >'
									+'<td style="width:200px">'
										+' '+photoString+' '
									+'</td>'
									+'<td>'
										+'<b>Name : </b><b class="EnameB">'+ printVal(data.al[key].sal) +' '+ printVal(data.al[key].fname) +' '+ printVal(data.al[key].mname) +' '+ printVal(data.al[key].lname) +'</b><br/>'
											+'&emsp;&emsp;  <a href="UpdateEmpProfile?eid='+data.al[key].EID+'" target="_blank">Profile</a> | '
											+' <a href="UpdateEmpQuali?eid='+data.al[key].EID+'" target="_blank">Qualification</a> | '
											+' <a href="UpdateEmpExp?eid='+data.al[key].EID+'" target="_blank"> Experience </a> | '
											+' <a href="UpdateEmpKr?eid='+data.al[key].EID+'" target="_blank"> Knowledge Repository </a> | '
											+' <a style="cursor:pointer" onclick="deleteEmp('+data.al[key].EID+',this)"> Delete Employee</a> '
											+'<br/>'
										+'<b>Branch: </b> '+printVal(data.al[key].deptname)+' <br/>'
										+'<b>Designation: </b> '+printVal(data.al[key].designame)+' <br/>'
										+'<b>Date of Joining: </b> '+printVal(data.al[key].doj)+' <br/>'
										+'<b>Nature of Job: </b> '+printVal(data.al[key].noj)+' <br/>'
										+'<b>Nature of Appintment: </b> '+printVal(data.al[key].noa)+' <br/>'
									+'</td>'
								+'</tr>');

				        	}
						}
						else{
							($('.outerTbl')).append('<tr >'
									+'<td style="text-align:center"><b style="color:red">No records present for selected criteria.</b></td>'
									+'</tr>');
						}
				},
				error:function(data){

				}
			});

		}

		function printVal(val){
			if(typeof val == 'undefined' || val == 'null')
					return "";
			else
				return val;
		}

		function searchEmpRecord(){
			var value=$('#searchBox').val().toUpperCase();

			$(".outerTbl").find("tr").each(function(index) {
		        var id = $(this).find("td:eq(1) .EnameB").text().toUpperCase();
		        $(this).toggle(id.indexOf(value) !== -1);
		    });
		}

		function deleteEmp(EID,e){

			var r = confirm("Do you really want to delete employee ??");
			if (r == true) {
				$.blockUI({ message: '<h4> Please Wait...</h4>' });
				$.ajax({
					type:"GET",
					url:"../DetleteEmp?id="+EID,
					success:function(data){
			 			e.closest('tr').remove();
						alert("Emplyoee Deleted successfully");
						$.unblockUI();
					},
					error:function(data){
						alert("Something went wrong, try again");
						$.unblockUI();
					}
				});
			} else {
				alert("Opration cancelled.");
		    }
		}
	</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.blockUI/2.70/jquery.blockUI.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.blockUI/2.70/jquery.blockUI.min.js"></script>

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


<script src="../js/AddEmployee.js"></script>
  <div class="container" style="padding:10px;">

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

  		<div style="border:0px solid #aaa;padding:0px;border-radius:5px;text-align: center">
  		<div style="width:400px;margin: auto">
  		<h3 style="line-height: 0px;">Search Employee</h3>
  		<br/>

  			<table class="planeTbl" style="width:100%">
  				<tr>
  					<td>Department</td>
  					<td>
  						<%-- <select class="form-control" required name="dept" id="dept">
  							<option value="" selected="selected">~~ Choose~~</option>
  							<c:forEach var="dept" items="${depts}" >
								<option value="${dept.key}">${dept.value}</option>
  							</c:forEach>
  						</select> --%>
  						 <select class="form-control" required name="dept" id="dept">
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
  				</tr>
  				<tr>
  					<td><input type="hidden" id="s3path" value="${s3path}"></td>
  					<td><input type="button" value="Search" class="btn" onclick="loadSearcheTable()"> </td>
  				</tr>

  			</table>
  			</div>

  		</div>
<!-- 		<br/><br/><br/> -->

		<style>

			.outerTbl img{
				max-width: 100px;
				max-height: 100px;
			}
			.outerTbl td{
				border:0px solid #aaa;
				vertical-align: top;
				padding:10px;
				border-bottom: 1px dotted #aaa;
			}
			.EnameB{
				color:blue;
				font-size: 1.2em;
			}
			#tblWrapperDiv{
				display:none;
			}
			#tblWrapedDiv2{
				border:1px solid #aaa;padding:10px;border-radius:5px;
			}
		</style>
		<div id="tblWrapperDiv">
			<input type="text" id="searchBox" onkeyup="searchEmpRecord()"  class="form-control" style="width:250px" placeholder="Enter Text To search"/>

			<p style="margin: 3px;"></p>
  		<div id="tblWrapedDiv2">
			<table  id="outerTbl" class="outerTbl" style="width:100%;">


			</table>

  		</div>
  		</div>

	<br/><br/><br/><br/><br/><br/><br/><br/><br/>
  </div>





	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="../assets/js/modernizr-latest.js"></script>
	<script type='text/javascript' src='../assets/js/jquery.min.js'></script>
    <script type='text/javascript' src='../assets/js/fancybox/jquery.fancybox.pack.js'></script>

    <script type='text/javascript' src='../assets/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='../assets/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='../assets/js/camera.min.js'></script>
    <script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/custom.js"></script>


</body>
</html>
