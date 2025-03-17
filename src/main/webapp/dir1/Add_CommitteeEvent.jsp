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
	
	 <!-- App css Editor -->
<!--         <link href="../assets2/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
<!--         <link href="../assets2/css/icons.css" rel="stylesheet" type="text/css" /> -->
<!--         <link href="../assets2/css/style.css" rel="stylesheet" type="text/css" /> -->

        <script src="../assets2/js/modernizr.min.js"></script>
	
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script> -->
<script>
		function puValsInModel(evid,cmid,evnm){
// 			alert(cmid+' '+name);
			$("#evid").val(evid);
			$("#cmid").val(cmid);
			$("#evnm").val(evnm);
		}
	</script>
<style>
	#mceu_13,#mceu_37{
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
			width: 100%
		}
		.planeTbl tr:HOVER {
			background: transparent;
		}
	</style>

  		<div  style="border:1px solid #aaa;padding:10px;border-radius:5px;text-align: center">
  			<div style="width:100%;margin: auto">
	  		<h3>Add Committee</h3>
	  		<br/>
	  		<c:if test="${erMsg != null }">
				<input type="text" value="${erMsg}"  class="input-field" disabled="disabled" style="width:100%;text-align: center;font-weight: bold;color: red;background:#ffecec;border:3px solid red"/>
			</c:if>
		<c:remove var="erMsg"/>
	  		<div class="row">
	  		<form action="Add_CommitteeEventController" method="post"  id="frm" >
	  		  <div class="col-sm-12" style="border: 1px solid; margin-left: 15px;width: 95%;" align="center" >
	  			<table   style="width:100%; border: none; padding: 10px;">
	  			
	  				<tr style="border: none!important;">
	  					<td style="border: none!important;">Committee Name:- <span class="req">*</span></td>
	  					<td style="border: none;">
  						 <select required name="cmid"  required="required" style="width: 80%; height: 40px;"  >
  						   <option selected="selected">-- Select Committee --</option>
  						   <c:forEach items="${cmtdtl}" var="ct">
  						           <option value="${ct.cmid}">${ct.comtname}</option>
  						   </c:forEach>
  						   
  						 </select>
  						</td>
  						<td style="border: none!important;">Event Name:- <span class="req">*</span></td>
	  					<td style="border: none;">
  						 <input type="text"  required name="evnm" required="required" style="width: 80%; height: 40px;"  >
  						</td>
  					</tr>
	  			
	  			</table>
	  			<br>
    	               <input type="submit"  value="Submit">
    	               <br>
    	  	</div>    
			
            </form>
            </div>
            <br><br>
                        
                       <h3>Already  Added Committee Events</h3>   
				<div style="width: 100%;height: 400px;overflow: scroll;">
						<table style="width: 100%;" >
					        <thead>
					            <tr>
					                 <th width="7%" style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr.No</th>
					                 <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Committee Name</th>
					                 <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Event Name</th>
					                <th width="7%" style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
					              <th width="7%" style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
					            </tr>
					        </thead>
					        <tbody>
					              <c:forEach var="dtls" items="${evdtls}" varStatus="row">
					              <tr> 
					                  <td>${row.count}</td>
					                  <td style="text-align: left">${dtls.comtname}</td>
					                  <td style="text-align: left">${dtls.evntname}</td>
					                  <td style="text-align: left"><a href="Edit_CommitteeEventController?evid=${dtls.evid}">Delete</a></td>
					                  <td style="text-align: left"><input type="button" onclick="puValsInModel(${dtls.evid},'${dtls.cmid}','${dtls.evntname}')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/></td>
					              </tr>
					            </c:forEach>
					        </tbody>
					    </table>
					</div>	
						

	  			
	  		</div>
  		</div>
  		<br/>
  		
<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog"  >
		    <div class="modal-dialog modal-lg " >
		      <div class="modal-content"  style="height: 200px;;">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Edit Committee</h4>
		        </div>
		        <div class="modal-body" style="text-align: center;height: auto;">
					<form action="Edit_CommitteeEventController" method="post"  id="frm" >
			  		  <div class="col-sm-12" style="border: 1px solid; margin-left: 15px;width: 95%;" align="center" >
			  			<table   style="width:100%; border: none; padding: 10px;">
			  			
			  				<tr style="border: none!important;">
			  					<td style="border: none!important;">Committee Name:- <span class="req">*</span></td>
			  					<td style="border: none;">
		  						 <select required name="cmid" id="cmid" required="required" style="width: 80%; height: 40px;"  >
		  						   <option selected="selected">-- Select Committee --</option>
		  						   <c:forEach items="${cmtdtl}" var="ct">
		  						           <option value="${ct.cmid}">${ct.comtname}</option>
		  						   </c:forEach>
		  						   
		  						 </select>
		  						</td>
		  						<td style="border: none!important;">Event Name:- <span class="req">*</span></td>
			  					<td style="border: none;">
		  						 <input type="text"  required name="evnm" id="evnm" required="required" style="width: 80%; height: 40px;"  >
		  						 <input type="hidden" name="evid" id="evid">
		  						 </td>
		  					</tr>
			  			
			  			</table>
			  			<br>
			  			     
		    	               <input type="submit"  value="Submit">
		    	               <br>
		    	  	</div>    
			
            </form>
					<br/><br/>
		        </div>
<!-- 		        <div class="modal-footer"> -->
<!-- 		          <button type="button" class="red-btn" data-dismiss="modal">   Close  </button> -->
<!-- 		        </div> -->
		      </div>
		    </div>
		  </div>

  </div>
		



	<jsp:include page="footer.jsp"></jsp:include>

<!-- ---------Editor Files --------- -->
 <!-- jQuery  -->
        <script src="../assets2/js/jquery.min.js"></script>
        <script src="../assets2/js/popper.min.js"></script><!-- Popper for Bootstrap -->
        <script src="../assets2/js/bootstrap.min.js"></script>
        <script src="../assets2/js/waves.js"></script>
        <script src="../assets2/js/jquery.slimscroll.js"></script>
        <script src="../assets2/js/jquery.scrollTo.min.js"></script>

        <!-- App js -->
        <script src="../assets2/js/jquery.core.js"></script>
        <script src="../assets2/js/jquery.app.js"></script>

</body>
</html>
