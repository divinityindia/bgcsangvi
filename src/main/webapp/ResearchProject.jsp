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

	<link rel="stylesheet" type="text/css" href="style/style.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<link rel="stylesheet" href="css/mycss.css">
	<script>
		$(document ).ready(function() {
			tableLoad();
		});


		function tableLoad(){
			var s3pat=$('#s3pat').val();
			
			$.ajax({
				type:"GET",
				url:"GetResearchProject?type=${param.t}",
				success:function(data){
					$("#myTable1 tbody").text("");
					var sno= +0;
					for (var key in data.hm) {
						($('#myTable1 tbody')).append('<tr >'
							+'<td>'+ ++sno +'</td>'
							+'<td>'+data.hm[key][1]+'</td>'
							+'<td>'+data.hm[key][2]+'</td>'
							+'<td><a href="'+s3pat+'research_project/'+key+'/'+data.hm[key][3]+'" target="_blank">'+data.hm[key][3]+'</a></td>'
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
            <input type="hidden" id="s3pat" value="${s3pat}">
		</div>
	</div>
	<!-- /.navbar -->




	<br/>
  <div class="container">


		<h2>${param.t} Research Projects</h2>

		<table id="myTable1" class="Vscroll">
  			<thead>
  				<tr>
  					<th style="color: #003135; background: #fdd991;border:1px solid #003135; ">Sno.</th>
  					<th style="color: #003135; background: #fdd991;border:1px solid #003135; ">Title</th>
  					<th style="color: #003135; background: #fdd991;border:1px solid #003135; ">Details</th>
  					<th style="color: #003135; background: #fdd991;border:1px solid #003135; ">Document</th>
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

  		</table>




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
