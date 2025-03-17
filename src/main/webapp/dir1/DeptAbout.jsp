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
		function puValsInModel(daid,did,deptname,imagename)
		{ 
			//alert(daid+" "+did+" "+deptname+" "+imagename);
			$("#daid-modal").val(daid);
			$("#did-modal").val(did);
			$("#dept-modal").val(deptname);
			$("#imgname-modal").val(imagename);
			
		}


		
	</script>
	<style>
	/* ---------Blink--------------------- */

.quadrat {

 -webkit-animation: NAME-YOUR-ANIMATION 1s infinite; /* Safari 4+ */
  -moz-animation:    NAME-YOUR-ANIMATION 1s infinite; /* Fx 5+ */
  -o-animation:      NAME-YOUR-ANIMATION 1s infinite; /* Opera 12+ */
  animation:         NAME-YOUR-ANIMATION 1s infinite; /* IE 10+, Fx 29+ */
}

@-webkit-keyframes NAME-YOUR-ANIMATION {
0%, 49% {
    color: 	rgb(128,0,0);
    
}
50%, 100% {
    color:  	#00BFFF;
   
}
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

  		<div  style="border:1px solid #aaa;padding:10px;border-radius:5px;text-align: center">
  			<div style="width:70%;margin: auto">
	  		<h3>Add Department Image</h3>
	  		<br/>
	  		<h4 class="quadrat" style="color: Red; font-weight: bold;">Add At Least Two Images of Each Department </h4>
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
	  		<form action="DeptAboutController" method="post"  enctype="multipart/form-data" onsubmit="return chkImg()">
	  			<table  class="planeTbl" style="width:100%">
	  				<tr>
	  					<td>Department Name:- <span class="req">*</span></td>
	  					<%-- <td><select class="form-control" required name="did">
  							<option value="" selected="selected">~~ Choose~~</option>
  							<c:forEach var="dept" items="${dep}" >
								<option value="${dept.key}">${dept.value}</option>
  							</c:forEach>
  						</select></td> --%>
  						<td><select class="form-control" required name="did">
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
  						</select></td>
  						
	  				</tr>
	  				<tr>
	  				    <td>Image Name:- <span class="req">*</span></td>
	  					<td><input type="text" name="imgnm" required="required" class="form-control"></td>
	  					<td>Image:- <span class="req">*</span></td>
	  					<td><input type="file" name="adnm" id="f1" ></td>
  						
	  				</tr>
	  			<!-- 	<tr> 
	  				<td>
	  				 Heading:-
	  				 </td>
	  				 <td>
	  				  <input type="text" id="decription" placeholder="Description">
	  				  </td>
	  				  <td>
                      Details:-
                      </td>
                      <td> <textarea id="uprice" placeholder=" Unit Price">
                      
                      </textarea></td>
	  				   
	  				</tr> -->
	  			</table>
	  			
	  			
	  			<input type="submit" name="submit">
	  			<br>
	  			<br>
	  			<div style="width: 100%;height: 700px; overflow: scroll;">
	  			<table id="td1" style="width: 100%;">
					        <thead>
					            <tr>
					                 <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr.No</th>
					                <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">DepId</th>
					                <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Image Name</th>
					                <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Image</th>
					                <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
					                <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
					              
					            </tr>
					        </thead>
					        <c:forEach items="${img}" var="imgs" varStatus="row" >
					        <tr>
					             <td>${row.count}</td>
					             <td>${imgs.deptname}</td>
					             <td>${imgs.imgname}</td>
					             <td><img src="${s3path}AddDepAboutImg/${imgs.deptid}_${imgs.image}"style="height: 100px; width: 100px;"/></td>
					             <td><a href="DeptAboutDelete?id=${imgs.daid}">Delete</a></td>
					             <td><input type="button" onclick="puValsInModel('${imgs.daid}','${imgs.deptid}','${imgs.deptname}','${imgs.imgname}')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/> </td>
					        </tr>
					        </c:forEach>
					        <tbody>
					            
					        </tbody>
					    </table>
                 </div>

	  			</form>
	  		</div>
  		</div>
  		<br/>
  		


  </div>
		
				

	<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog modal-lg ">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Edit Department Image</h4>
		        </div>
		        <div class="modal-body" style="text-align: center">
		          <script>
	  		function chkImg1(){
  				var f=$('#file-modal').val();
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
		        
					<form action="DeptAboutUpdate" method="post"  enctype="multipart/form-data" onsubmit="return chkImg1()">
		        	<table  class="planeTbl" style="width:100%">
		        		
		        		<tr>
		  					<td>Dept Name:- <span class="req">*</span></td>
		  					<td><input type="text" class="form-control"  id="dept-modal" name="deptname" readonly="readonly"/></td>
		  					<td rowspan="2">Image Name:-</td>
		  					<td rowspan="2"><input type="text" required="required" class="form-control" style="resize:none" name="imgname" id="imgname-modal"> </td>
		  				</tr>
		  				<tr>
		  					<td>Upload Document</td>
		  					<td>
		  						<input type="file"  name="file" id="file-modal"/>
		  					</td>
		  				</tr>
		  			
		  				<tr>
		  					<td></td>
		  					<td>
		  						<input type="hidden" name="daid" id="daid-modal"/>
		  						<input type="hidden" name="did" id="did-modal"/>
		  						<input type="submit" class="btn" value="Submit">
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





	<jsp:include page="footer.jsp"></jsp:include>




</body>
</html>
