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

		tableLoad();
	});


	function tableLoad(){
		$.ajax({
			type:"GET",
			url:"../GetAllUsers",
			success:function(data){
				$("#myTable tbody").text("");
				for (var key in data.hm) {
					($('#myTable tbody')).append('<tr>'
						+'<td>'+ key +'</td>'
						+'<td>'+data.hm[key][1]+'</td>'
						+'<td>'+data.hm[key][2]+'</td>'
						+'<td> <a href="UpdateAccessRight?UID='+key+'" onclick="document.getElementById(\'modal1\').style.display=\'block\'" target="iframe_modal"> <input type="button"  value="  Edit Access Rights  " class="green-btn"/> </a></td>'
						+'</tr>');

		        }
			},
			error:function(data){

			}
		});
	}
 	</script>

	<script>
		function selectDeptRecords(){
			var dept=$("#dept option:selected").text();

			$('#myTable tbody tr').each(function () {
				$(this).addClass('hide');
			});

			$('#myTable tbody tr').each(function () {
				if(dept == $(this).find('td').eq(1).text()){
					$(this).removeClass('hide');
				}

		    });
		}
	</script>

	<style>
		.hide{
			display:none;
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
  		<div style="width:400px;margin: auto">
  		<h3 style="line-height: 0px;">Access Rights</h3>
  		<br/>


  			<table class="planeTbl" style="width:100%">
  				<tr>
  					<td>Depatrment</td>
  					<td>
  						<select class="form-control" required id="dept" onchange="selectDeptRecords()">
  							<option value="" selected="selected">~~ Choose~~</option>
  							<c:forEach var="dept" items="${depts}" >
									<option value="${dept.key}">${dept.value}</option>
  							</c:forEach>
  						</select>
  					</td>
  				</tr>


  			</table>
		</div>
  		</div>

  		<br/>
  		<b>Users:</b>


  		<table id="myTable" class="Vscroll">
  			<thead>
  				<tr>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">User ID</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Department </th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">User Name</th>
  					<th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
  				</tr>
  			</thead>
  			<tbody>

  			</tbody>

  		</table>


<style>
.modal {
//    z-index:3;
//    display:none;
//    padding-top:0px;
//    position:fixed;
//    left:0;
 //   top:auto;
//    bottom:0;
//    width:100%;
//   height:100%;
 //   overflow:auto;
 /*   background-color:rgb(0,0,0); */
    background-color:rgba(0,0,0,0.4);
}
</style>




<!-- <div id="modal1" class="modal" style="margin: auto;height:600px; width:95%;border:2px solid gray"> -->

<div id="modal1" class="modal" style="height:">
	<div style="margin: auto;height:590px; width:95%;margin-top:50px;">
		<div style="width: 100%;text-align: right">
		  <span onclick="document.getElementById('modal1').style.display='none'; document.getElementById('iframe1').src =''" class=""><b style="color:#fff;font-size: 3em;cursor: pointer;">&times;</b></span>
	  	</div>
	  	<iframe id="iframe1" height="565px" width="100%" src="" name="iframe_modal" ></iframe>
  	</div>
</div>



  </div>



	<jsp:include page="footer.jsp"></jsp:include>




</body>
</html>
