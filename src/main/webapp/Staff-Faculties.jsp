<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix ="fn"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script>
		function loadSearcheTable(dept, deptName){
			var s3pat=$('#s3pat').val();
// 			var dept=$("#dept").val();
			$("#tblWrapperDiv").show();
			$('#DeptName').text(deptName);
			$(".outerTbl").text("");
			($('.outerTbl')).append('<tr >'
					+'<td style="text-align:center"><h3>Loading...</h3></td>'
					+'</tr>');

			$.ajax({
				type:"GET",
				url:"GetDeptWiseEmployee?id="+dept,
				success:function(data){
					$(".outerTbl").text("");
						if(data.al.length != 0){
							for (var key in data.al) {
// 								var photoString='<div style="width:100px;height:100px;border:1px solid #888"></div>'
								var photoString='<img src="images/user.png" style="width:100px;" />';
								var photo = printVal(data.al[key].photo);
								if(photo !=""){
									photoString='<img src="'+s3pat+'emp/'+data.al[key].EID+'/photo/'+photo+'"/> ';
								}

								($('.outerTbl')).append('<tr >'
									+'<td style="width:200px">'
										+' '+photoString+' '
									+'</td>'
									+'<td>'
										+'<b>Name : </b><b class="EnameB">'+ printVal(data.al[key].sal) +' '+ printVal(data.al[key].fname) +' '+ printVal(data.al[key].mname) +' '+ printVal(data.al[key].lname) +'</b><br/>'
// 										+'<b>Branch: </b> '+printVal(data.al[key].deptname)+' <br/>'
										+'<b>Designation: </b> '+printVal(data.al[key].designame)+' <br/>'
										+'<b>Qualification: </b> '+printVal(data.al[key].quali)+' <br/>'
										+'<b>Email ID: </b> '+printVal(data.al[key].mail)+' <br/>'
										+'<b>Contact No.: </b> '+printVal(data.al[key].contact1)+' <br/>'
									+'</td>'
									+'</tr>'
									+'<tr>'
									+'<td class="btmRw" colspan="2">'
										+'<div class="row">'   //1
											+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
												+'<b>Experience in Years:</b>'
											+'</div>'
											+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
												+' '+printVal(data.al[key].texp)+' Years '
											+'</div>'
											+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
											+'<b>Expert Area:</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+''+printVal(data.al[key].aoi)+''
										+'</div>'
										+'</div>'
										+'<div class="row">'	//4
										/* +'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
											+'<b>Journal Publications:</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+''+printVal(data.al[key].jpub)+''
										+'</div>' */
										+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
											+'<b>Academic Profile:</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+'<a href="'+s3pat+'emp/'+printVal(data.al[key].EID)+'/resume/'+printVal(data.al[key].resume)+'" target="_blank">'+printVal(data.al[key].resume)+'</a>'
										+'</div>'
									+'</div>'
										/* +'<div class="row">'	//3
											+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
												+'<b>Subjects Taught:</b>'
											+'</div>'
											+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
												+''+printVal(data.al[key].sub)+''
											+'</div>'
											+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
												+'<b>Memberships:</b>'
											+'</div>'
											+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
												+''+printVal(data.al[key].memberships)+''
											+'</div>'
										+'</div>' */
										/* +'<div class="row">'	//4
											+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
												+'<b>Journal Publications:</b>'
											+'</div>'
											+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
												+''+printVal(data.al[key].jpub)+''
											+'</div>'
											+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
												+'<b>Academic Profile:</b>'
											+'</div>'
											+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
												+'<a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/emp/'+printVal(data.al[key].EID)+'/resume/'+printVal(data.al[key].resume)+'" target="_blank">'+printVal(data.al[key].resume)+'</a>'
											+'</div>'
										+'</div>' */
										/* +'<div class="row">'//5
											+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
												+'<b>Patents:</b>'
											+'</div>'
											+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
												+''+printVal(data.al[key].petants)+''
											+'</div>'
											+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
												+'<b>-</b>'
											+'</div>'
											+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
												+'-'
											+'</div>'
										+'</div>' */
										+'<div class="row blankDV">'//blank
										+'</div>'
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


	<style>
	.left-Pan a {

/* 	    background: #008080;
	    width: 100%;
	    display: inline-block;
	    color: #fff;
	    padding: 5px;
	    margin-bottom: 5px;
	    border-radius: 5px;
 */
		background: #008080;
		display:inline-block;
		color:#fff;
		padding:2px;
		//margin-bottom: 2px;
		border-radius:3px;
		font-weight:bold;

		line-height: 1em;
		width:calc(100% - 2px);
		//width:100%;
		height:auto;

	}
	.left-Pan a:HOVER {
		background: maroon;//#009E9E;
		text-decoration: none;
	}

	.left-Pan h4{
		background: #428bca;
		color:#fff;
		border-radius:5px;
		text-align: center;
	}
	.left-Pan h4{
		padding:10px;
	}
	#DeptContDiv{
		//background: #428bca11;
		//padding: 5px 2px;
	}
</style>
	<style>

			.outerTbl img{
				max-width: 100px;
				max-height: 100px;
			}
			.outerTbl td{
				border:0px solid #aaa;
				vertical-align: top;
				padding:10px;
/*  				border-bottom: 1px dashed #aaa; */
				background: #00808033;

			}
			.outerTbl td.btmRw{
/* 				border-bottom: 2px solid #aaa; */
				background: #428bca33;
				padding-bottom: 0px;
			}
			.outerTbl tr td div.col-lg-2,.outerTbl tr td div.col-lg-4{
				font-size: 0.9em;
			}
			.outerTbl tr td div.row{
/* 				border-bottom:1px dotted #ccc; */
				padding: 5px 0px;
			}
			.outerTbl tr td div.blankDV{
				background: #fff;
				height: 5px;
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



	<br/>
	<div class="tg-innerbanner">
	
			<div class="container">
			
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<br>
						<ol class="tg-breadcrumb">
							<li style="display: inline-block;" ><a href="index.jsp" >Home</a></li>->
							<li class="tg-active li" style="display: inline-block;">Faculties</li>
							
						</ol>
					</div>
				</div>
			</div>
	</div>
	<center><h1 style="color:#09919c!important;padding:5px;border:0px solid brown; font-weight: bold;">Department Faculties</h1></center>
	
  <div class="container">

		<div class="row">

		<div class="col-xs-12 col-sm-4 col-md-3 col-lg-3 left-Pan">
			<span><h4  style="background: #003135;">Departments</h4></span>
			<div id="DeptContDiv">
			<a onclick="loadSearcheTable(1,'English(Arts)')" style="cursor: pointer;background: #003135;" >English(Arts)</a> 
			<a onclick="loadSearcheTable(2,'Marathi(Arts)')" style="cursor: pointer;background: #003135;" >Marathi(Arts)</a> 
			<a onclick="loadSearcheTable(80,'History(Arts)')" style="cursor: pointer;background: #003135;" >History(Arts)</a> 
			<a onclick="loadSearcheTable(7,'Economics(Arts)')" style="cursor: pointer;background: #003135;" >Economics(Arts)</a> 
			<a onclick="loadSearcheTable(8,'Politics(Arts)')" style="cursor: pointer;background: #003135;" >Politics(Arts)</a> 
			<a onclick="loadSearcheTable(10,'Geography(Arts)')" style="cursor: pointer;background: #003135;" >Geography(Arts)</a> 
			<a onclick="loadSearcheTable(81,'Physical Education')" style="cursor: pointer;background: #003135;" >Physical Education</a> 
<!-- 			<a onclick="loadSearcheTable(9,'Psychology(Arts)')" style="cursor: pointer;background: #003135;" >Psychology(Arts)</a>  -->
			<a onclick="loadSearcheTable(14,'BCOM(Commerce)')" style="cursor: pointer;background: #003135;" >BCOM(Commerce)</a> 
<!-- 			<a onclick="loadSearcheTable(15,'BCA(Commerce)')" style="cursor: pointer;background: blue;" >BCA(Commerce)</a>  -->
			<a onclick="loadSearcheTable(16,'BBA(Commerce)')" style="cursor: pointer;background: #003135;" >BBA / BBA(CA)</a> 
<!-- 			<a onclick="loadSearcheTable(17,'MCA(Commerce)')" style="cursor: pointer;background: blue;" >MCA(Commerce)</a> 
			<a onclick="loadSearcheTable(18,'MCOM(Commerce)')" style="cursor: pointer;background: blue;" >MCOM(Commerce)</a> 
			<a onclick="loadSearcheTable(19,'DTL(Commerce)')" style="cursor: pointer;background: blue;" >DTL(Commerce)</a> --> 
			<a onclick="loadSearcheTable(20,'Computer Science(Sci. & Tech.)')" style="cursor: pointer;background: #003135;" >Computer Science(Sci. & Tech.)</a> 
			<a onclick="loadSearcheTable(21,'Electronics(Sci. & Tech.)')" style="cursor: pointer;background: #003135;" >Electronics(Sci. & Tech.)</a> 
			<a onclick="loadSearcheTable(22,'Statistic(Sci. & Tech.)')" style="cursor: pointer;background: #003135;" >Statistics(Sci. & Tech.)</a> 
			<a onclick="loadSearcheTable(23,'Mathematics(Sci. & Tech.)')" style="cursor: pointer;background: #003135;" >Mathematics(Sci. & Tech.)</a> 
			<a onclick="loadSearcheTable(24,'Physics(Sci. & Tech.)')" style="cursor: pointer;background: #003135;" >Physics(Sci. & Tech.)</a> 
			<a onclick="loadSearcheTable(25,'Chemistry(Sci. & Tech.)')" style="cursor: pointer;background: #003135;" >Chemistry(Sci. & Tech.)</a> 
			<a onclick="loadSearcheTable(26,'Botany(Sci. & Tech.)')" style="cursor: pointer;background: #003135;" >Botany(Sci. & Tech.)</a> 
			<a onclick="loadSearcheTable(27,'Zoology(Sci. & Tech.)')" style="cursor: pointer;background: #003135;" >Zoology(Sci. & Tech.)</a> 
			<!-- <a onclick="loadSearcheTable(31,'Geography(Sci. & Tech.)')" style="cursor: pointer;background: blue;" >Geography(Sci. & Tech.)</a>  -->
<!-- 			<a onclick="loadSearcheTable(34,'MCA(Sci. & Tech.)')" style="cursor: pointer;background: #003135;" >BCA(Sci. & Tech.)</a>  -->
<!-- 			<a onclick="loadSearcheTable(45,'Botany(Research Program)')" style="cursor: pointer;background: blue;" >Botany(Research Program)</a> 
			<a onclick="loadSearcheTable(38,'Chemistry(Research Program)')" style="cursor: pointer;background: blue;" >Chemistry(Research Program)</a> 
			<a onclick="loadSearcheTable(42,'Commerce(Research Program)')" style="cursor: pointer;background: blue;" >Commerce(Research Program)</a> 
			<a onclick="loadSearcheTable(35,'Economics(Research Program)')" style="cursor: pointer;background: blue;" >Economics(Research Program)</a> 
			<a onclick="loadSearcheTable(40,'English(Research Program)')" style="cursor: pointer;background: blue;" >English(Research Program)</a> 
			<a onclick="loadSearcheTable(36,'Geography(Research Program)')" style="cursor: pointer;background: blue;" >Geography(Research Program)</a> 
			<a onclick="loadSearcheTable(39,'Botany(Research Program)')" style="cursor: pointer;background: blue;" >Botany(Research Program)</a>  -->
<!-- 			<a onclick="loadSearcheTable(47,'MBA')" style="cursor: pointer;background: #003135;" >MBA</a>  -->
<!-- 			<a onclick="loadSearcheTable(64,'B.Lib')" style="cursor: pointer;background: #003135;" >B.Lib</a>  -->
			<a onclick="loadSearcheTable(48,'S/w Development(B.Voc.)')" style="cursor: pointer;background: #003135;" >S/w Development(B.Voc.)</a> 
			<a onclick="loadSearcheTable(76,'Fashion Technology(B.Voc.)')" style="cursor: pointer;background: #003135;" >Fashion Technology(B.Voc.)</a> 
			<a onclick="loadSearcheTable(77,'Retail Management(B.Voc)')" style="cursor: pointer;background: #003135;" >Retail Management(B.Voc)</a> 
			<a onclick="loadSearcheTable(78,'Travel and Tourism Management(B.Voc)')" style="cursor: pointer;background: #003135;" >Travel and Tourism Management(B.Voc)</a> 
			<a onclick="loadSearcheTable(79,'Beauty Therapy and Aesthetic(B.Voc)')" style="cursor: pointer;background: #003135;" >Beauty Therapy and Aesthetic(B.Voc)</a> 
			
<%-- 			<c:forEach var="dept" items="${depts}"> --%>
<%-- 				<a onclick="loadSearcheTable(${dept.key},'${dept.value}')" style="cursor: pointer;" >${dept.value}</a> --%>
<%-- 			</c:forEach> --%>
			</div>
		</div>

		<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">

			<div id="tblWrapperDiv">
				<h4 style="text-align: center;" id="DeptName"></h4>
<!-- 				<input type="text" id="searchBox" onkeyup="searchEmpRecord()"  class="form-control" style="width:250px" placeholder="Enter Text To search"/> -->
				<p style="margin: 3px;"></p>
	  		<div id="tblWrapedDiv2">
				<table  id="outerTbl" class="outerTbl" style="width:100%;">

				</table>
	  		</div>
	  		</div>

		</div>


		</div>

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
