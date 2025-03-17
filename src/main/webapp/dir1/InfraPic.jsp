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
	  		<h3>Add Infra Image</h3>
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
	  		<c:if test="${erMsg != null }">
				<input type="text" value="${erMsg}"  class="input-field" disabled="disabled" style="width:100%;text-align: center;font-weight: bold;color: red;background:#ffecec;border:3px solid red"/>
			</c:if>
		<c:remove var="erMsg"/>
	  		<form action="InfraPic" method="post"  enctype="multipart/form-data" onsubmit="return chkImg()">
	  			<table  class="planeTbl" style="width:100%">
	  				<tr>
	  					<td>Infra Type:- <span class="req">*</span></td>
	  					<td><select class="form-control" required name="type">
  							<option value="" selected="selected">~~ Choose~~</option>
  							<option>Photo Of Labs</option>
  								<option>Library</option>
  									<option>Water Harvesting</option>
  										<option>Sports</option>
  										<option>ICT Facilities</option>
  										<option>Common Facilities</option>
  										<option>Other Facilities</option>
  											
  						</select></td>
  						
	  				</tr>
	  				<tr>
	  				    <td>Image Title:- <span class="req">*</span></td>
	  					<td><input type="text" name="title" required="required" class="form-control"></td>
	  					<td>Image:- <span class="req">*</span></td>
	  					<td><input type="file" name="adnm" id="f1" required="required"></td>
  						
	  				</tr>
	  			
	  			</table>
	  			
	  			
	  			<input type="submit" name="submit">
	  			</form>
	  			<br>
	  			<br>
	  			<div style="width: 100%;height: 700px; overflow: scroll;">
	  			<table id="td1" style="width: 100%;">
					        <thead>
					            <tr>
					                 <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr.No</th>
					                <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Infra Type</th>
					                <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Title</th>
					                <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Image</th>
					                <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
					              
					            </tr>
					        </thead>
					        <c:forEach items="${dtl}" var="imgs" varStatus="row" >
					        <tr>
					             <td>${row.count}</td>
					             <td>${imgs.imgtype}</td>
					             <td>${imgs.title}</td>
					             <td><img src="${s3path}Infrapic/${imgs.imgid}_${imgs.image}"style="height: 100px; width: 100px;"/></td>
					             <td><a href="DeleteInfraPic?id=${imgs.imgid}">Delete</a></td>
					        </tr>
					        </c:forEach>
					        <tbody>
					            
					        </tbody>
					    </table>
                 </div>

	  			
	  		</div>
  		</div>
  		<br/>
  		


  </div>
		
				

	




	<jsp:include page="footer.jsp"></jsp:include>




</body>
</html>
