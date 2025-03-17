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
	

<!-- --------Auto Row Adding in table code -------- -->
<!-- <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".add-row").click(function(){
        	var did = $("#did").val();
        	if(did != "")
        		{
            var heading = $("#decription").val();
            /* var details = $("#mceu_39").html(); */
             var details=$('#elm1_ifr').contents().find("html").find('#tinymce').html();
           
            var markup = "<tr><td><input type='checkbox' name='record'><input type='hidden' name='did' value="+did+"></td><td><textarea  name='heading'>"+heading+"</textarea></td><td><textarea  name='details' style='display:none'>"+details+"</textarea>"+details+" </td></tr>";
            $("#td1").append(markup);
            
          //Empty the box
            var heading = $("#decription").val("");
            /* var details = $("#mceu_39").html(); */
             var details=$('#elm1_ifr').contents().find("html").find('#tinymce').html("");
        		}
        	else
        	{
			 alert("Please Select Department")	
			}
           
        });
        
        // Find and remove selected table rows
        $(".delete-row").click(function(){
            $("table tbody").find('input[name="record"]').each(function(){
            	if($(this).is(":checked")){
                    $(this).parents("tr").remove();
                }
            });
        });
        // submit button disbled & row lenth chking
        $("#frm").submit(function(){
           
        	var lr=$('#td1').find('tr').length;
        	if(lr != 1)
        		{
        		 $('#btn').prop('disabled',true);
        		 return true;
        		}
        	else
        	{
        		alert("Please Enter At list One Entry");
        		 return false;
        	}
          
          
        });
    });    
</script> -->

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
	  		<h3>Add Research Publication Details</h3>
	  		<br/>
	  		
	  		<div class="row">
	  		<form action="ResearchPubDetails" method="post"  id="frm" >
	  		  <div class="col-sm-12" style="border: 1px solid; margin-left: 15px;width: 95%;" align="center" >
	  			<table   style="width:100%; border: none; padding: 10px;">
	  			
	  				<tr style="border: none!important;">
	  					<td>Department Name:- <span class="req">*</span></td>
	  					<td style="border: none;">
	  					<%-- <select  required name="deptid" id="did" required="required" style="width: 80%; height: 40px;"  >
  							<option value="" selected="selected">~~ Choose~~</option>
  							<c:forEach var="dept" items="${dep}" >
								<option value="${dept.key}">${dept.value}</option>
  							</c:forEach>
  						</select> --%>
  						 <select  required name="deptid" id="did" required="required" style="width: 80%; height: 40px;"  >
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
	  				   
                      <td>Details:-</td><td><textarea id="elm1" name="area" ></textarea> <!-- <textarea id="uprice" rows="5" cols="30" placeholder=" Details"></textarea> -->
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
                        
                       <h3>Already  Added Details</h3>   
				<div style="width: 100%;height: 800px;overflow: scroll;">
						<table style="width: 100%;" >
					        <thead>
					            <tr>
					                 <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Sr.No</th>
					                 <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Dept Name</th>
					                
					                <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Description</th>
					                <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Delete</th>
					                <th style="color: #fff; background: #002e3b;border:1px solid #003135; ">Edit</th>
					              
					            </tr>
					        </thead>
					        <tbody>
					              <c:forEach var="dtls" items="${dtl}" varStatus="row">
					              <tr> 
					                  <td>${row.count}</td>
					                  <td>${dtls.deptname}</td>
					                 
					                  <td>${dtls.details}</td>
					                   <td><a href="ResearchPubDtlDelete?id=${dtls.rdid}">Delete</a></td>
					                  <c:set var = "string2" value = "${fn:replace(dtls.details, '\\'', '`')}" />
					                  <c:set var = "string2" value = "${fn:replace(string2, '\"', '``')}" />
					                  <td><a href="UpdateResearchPubDtl?id=${dtls.rdid}">Edit</a></td>
					                  <%-- <td><input type="button" onclick="puValsInModel('${dtls.did}','${dtls.deptid}','${dtls.deptname}','${dtls.heading}','${string2}')" value="  Edit  " class="green-btn" data-toggle="modal" data-target="#myModal"/></td> --%>
					              </tr>
					            </c:forEach>
					        </tbody>
					    </table>
					</div>	
						

	  			
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
