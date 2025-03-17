<!--
Author: WebThemez
Author URL: http://webthemez.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
		<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="Baburaoji Gholap College , Sangvi ,Pune" />
	<meta name="description" content="Baburaoji Gholap College , Sangvi ,Pune">
	<meta name="author" content="Baburaoji Gholap College , Sangvi ,Pune">
	<jsp:include page="title.jsp"></jsp:include>
	<link rel="favicon" href="assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="assets/css/style.css">
    <link rel='stylesheet' id='camera-css'  href='assets/css/camera.css' type='text/css' media='all'>
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->

	 <link rel="stylesheet" href="style/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script>
	$( document ).ready(function() {

		tableLoad();
	});


	function tableLoad(){
		var s3pat=$('#s3pat').val();
		$.ajax({
			type:"GET",
			url:"GetAllExamCirculars",
			success:function(data){
				$("#myTable tbody").text("");
				var sno= +0;
				for (var key in data.hm) {
					($('#myTable tbody')).append('<tr >'
							+'<td>'+ ++sno+'</td>'
							+'<td>'+data.hm[key][0]+'</td>'
							+'<td><a href="'+s3pat+'exam_circular/'+key+'/'+data.hm[key][1]+'" target="_blank">'+data.hm[key][1]+'</a></td>'

						+'</tr>');

		        }
			},
			error:function(data){

			}
		});
	}
 	</script>


</head>
<body>

	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse" style="padding-top:0px">
		<div class="container" style="width: 100%;margin: 0px;padding-left: 0px;padding-right: 0px;">

			<jsp:include page="header.jsp"></jsp:include>
			<jsp:include page="menu.jsp"></jsp:include>
			<input type="hidden" value="${s3pat}" id="s3pat">

			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->




	<br/>
	<div class="tg-innerbanner">
	
			<div class="container">
			
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<br>
						<ol class="tg-breadcrumb">
							<li style="display: inline-block;" ><a href="index.jsp" >Home</a></li>->
							
							<li class="tg-active" style="display: inline-block;">Exam Circular</li>
						</ol>
					</div>
				</div>
				
			</div>
			
	</div>
  <div class="container">

		<h3 style="color: #43577B; font-weight: bold;">Exam Circular</h3>
		<table id="myTable" class="Vscroll">
  			<thead>
  				<tr>
  					<th>Sr. No</th><th>Title </th><th>Document</th>

  				</tr>
  			</thead>
  			<tbody>

  			</tbody>
  		</table>

	<br/>


  </div>


	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="assets/js/modernizr-latest.js"></script>
	<script type='text/javascript' src='assets/js/jquery.min.js'></script>
    <script type='text/javascript' src='assets/js/fancybox/jquery.fancybox.pack.js'></script>

    <script type='text/javascript' src='assets/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='assets/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='assets/js/camera.min.js'></script>
    <script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>


</body>
</html>
