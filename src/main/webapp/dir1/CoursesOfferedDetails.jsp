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
	  		<h3>Add Course Offered</h3>
	  		<br/>
	  		
	  		<div class="row">
	  		<form action="CoursesOfferedDetails" method="post"  id="frm" >
	  		  <div class="col-sm-12" style="border: 1px solid; margin-left: 15px;width: 95%;" align="center" >
	  		  <input type="hidden" name="id" value="${cat.coid}">
	  			<table   style="width:100%; border: none; padding: 10px;">
	  				 <tr>  
	  				   
                      <td>Details:-</td><td><textarea id="elm1" name="area" >${cat.codtls}</textarea> <!-- <textarea id="uprice" rows="5" cols="30" placeholder=" Details"></textarea> -->
                      </td>
	  				</tr>
	  				
	  			
	  			</table>
	  		
	  			<br><br>
                       
    	               <input type="submit"  value="Submit">
    	               <br>
    	  	</div>    
    	              
    	        
    	        
			
            </form>
            </div>
            <br><br>
                        
                      <%--  <h3>Already  Added Details</h3>   
				<div style="width: 100%;height: 800px;overflow: scroll;">
						<table style="width: 100%;" >
					        <thead>
					            <tr>
					                 <th>Sr.No</th>
					                 <th>Dept Name</th>
					                
					                <th>Description</th>
					                <th>Delete</th>
					                <th>Edit</th>
					              
					            </tr>
					        </thead>
					        <tbody>
					              <c:forEach var="dtls" items="${dtl}" varStatus="row">
					              <tr> 
					                  <td>${row.count}</td>
					                  <td>${dtls.deptname}</td>
					                 
					                  <td>${dtls.details}</td>
					                   <td><a href="ResearchDtlDelete?id=${dtls.rdid}">Delete</a></td>
					                  <c:set var = "string2" value = "${fn:replace(dtls.details, '\\'', '`')}" />
					                  <c:set var = "string2" value = "${fn:replace(string2, '\"', '``')}" />
					                  <td><a href="UpdateResearchDtl?id=${dtls.rdid}">Edit</a></td>
					                  <td><input type="button" onclick="puValsInModel('${dtls.did}','${dtls.deptid}','${dtls.deptname}','${dtls.heading}','${string2}')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/></td>
					              </tr>
					            </c:forEach>
					        </tbody>
					    </table>
					</div>	
						 --%>

	  			
	  		</div>
  		</div>
  		<br/>
  		


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
<!-- Wysiwig js-->
        <script src="../plugins/tinymce/tinymce.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                if($("#elm1").length > 0){
                    tinymce.init({
                        selector: "textarea#elm1",
                        theme: "modern",
                        height:300,
                        plugins: [
                            "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
                            "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
                            "save table contextmenu directionality emoticons template paste textcolor"
                        ],
                        toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | l      ink image | print preview media fullpage | forecolor backcolor emoticons",
                        style_formats: [
                            {title: 'Bold text', inline: 'b'},
                            {title: 'Red text', inline: 'span', styles: {color: '#ff0000'}},
                            {title: 'Red header', block: 'h1', styles: {color: '#ff0000'}},
                            {title: 'Example 1', inline: 'span', classes: 'example1'},
                            {title: 'Example 2', inline: 'span', classes: 'example2'},
                            {title: 'Table styles'},
                            {title: 'Table row 1', selector: 'tr', classes: 'tablerow1'}
                        ]
                    });
                }
            });
        </script>

</body>
</html>
