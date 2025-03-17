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

	<link rel="stylesheet" href="../style/style.css">


<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
        $(function() {
            $( "#datepicker-1" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#datepicker-2" ).datepicker({
            	dateFormat:"dd/MM/yyyy",
            	changeMonth: true,
      	      changeYear: true,
    	      yearRange: "1942:2050",
    		  dateFormat:"dd/mm/yy"
            });
            $( "#fromdate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#todate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
            $( "#krdate" ).datepicker({
            	changeMonth: true,
      	      changeYear: true,
      	      yearRange: "1942:2050",
      		  dateFormat:"dd/mm/yy"
            });
         });
        </script>
<script src="../js/updateemployeekr.js"></script>

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


  <div class="container" style="padding:10px;">

  <jsp:include page="UpdateEmpNav.jsp"></jsp:include>


			<style>
				.required{
					color:red;
				}
				.tb2 tr:HOVER{
					background: transparent;
				}
				.tb2 td,.tb2:last-child td{
					border:none;
					padding:5px;
				}
				.tb2{
					border:1px solid #aaa;
				}
			</style>

			<h2>Update Employee Knowledge Repository</h2>
       				<div id="krsuccess" class="success"></div>

  						<c:forEach var="cat" items="${krList}">
						<table class="employeeprofile" id="k${cat.krid}" style="margin-top: 15px;width: 100%">

								<tr>
									<th colspan="2" style="font-weight: bold;">Knowledge Repository (Author: ${cat.sal} ${cat.fname} ${cat.lname})</th>
								</tr>
								<tr>
									<td class="krheading">Headline</td><td>${cat.headline}</td>
								</tr>
								<tr>
									<td class="krheading">Category</td><td>${cat.krcategory}</td>
								</tr>
								<tr>
									<td class="krheading">Publication</td><td>${cat.publication}</td>
								</tr>
								<tr>
									<td class="krheading">Author</td><td>${cat.author}</td>
								</tr>
								<tr>
									<td class="krheading">Date of Publication</td><td>${cat.krdate}</td>
								</tr>
								<tr>
									<td class="krheading">URL</td><td>${cat.krurl}</td>
								</tr>
								<c:if test = "${not empty cat.documentName}"><tr>
									<td class="krheading">Download Article</td><td><a href="getkrarticle?krid=${cat.krid}">Article Document(Click to Download)</a></td>
								</tr></c:if>
								<tr>
									<td class="krheading">Keywords</td><td>${cat.keywords}</td>
								</tr>
								<tr>
									<td class="krheading">Content</td><td>${cat.content}</td>
								</tr>
								<tr>
									<td class="krheading">Notes</td><td>${cat.notes}</td>
								</tr>
								<tr>
									<td class="krheading">Priority</td><td>${cat.priority}</td>
								</tr>
								<tr>
									<td class="krheading">Guide</td><td>${cat.guide}</td>
								</tr>
								<tr>
									<td class="krheading">Co-Guide</td><td>${cat.coguide}</td>
								</tr>
								<tr>
									<td class="krheading">Teamsize</td><td>${cat.teamsize}</td>
								</tr>
								<tr>
									<td colspan="2" style="text-align: right;"><a href="javascript:;" data-p1="${cat.krid}" class="deletelinkKr">Delete</a></td>
								</tr>

						</table>
						</c:forEach>
						<img src="../icons/loading3.gif" id="load1" width="18" height="18" alt="loading3" style="margin: 0px;display: none;left: 50%"/>

						<div id="block4">
  							<form action="" method="post" id="form4"  enctype="multipart/form-data">
  							<table class="employeeprofile tb2" id="usertable" style="margin-top: 15px;width: 100%">
								<tr><th colspan="4">
									Add more Knowledge Repository
									<input type="hidden" class="fid form-control" value="${kfid}" name="fid"></input>
								</th></tr>
								<tr>
									<td class="exlabel">Headline:<span class="required">*</span></td>
									<td>
										<input type="text" name="headline" id="headline"  placeholder="Headline" class="simpletext form-control" required="required">
									</td>
									<td class="exlabel">Category</td>
									<td>
										<select name="krcategory" id="krcategory" class="form-control">
												<option selected="selected" value="">Select</option>
												<option>Publication</option>
												<option>Presentation</option>
												<option>Workshop/Seminar Attended</option>
												<option>Book Published</option>
												<option>Guest Lecture Delivered</option>
												<option>Patent</option>
												<option>Project</option>
												<option>Seminar</option>
												<option>Conference Attended</option>
												<option>International Conference / Seminar</option>
												<option>National Conference / Seminar</option>
												<option>State Level  Conference / Seminar</option>
												<option>University Level Conference / Seminar</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="exlabel">Publication:</td>
									<td>
										<input type="text" name="publication" id="publication"  placeholder="Publication" class="simpletext form-control">
									</td>
									<td class="exlabel">Author:</td>
									<td>
										<input type="text" name="author" id="author"  placeholder="Author" class="simpletext form-control">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Date:</td>
									<td>
										<input type="text" class="simpletext form-control" placeholder="mm/dd/yyyy" name="krdate" id="krdate" readonly="readonly">
									</td>
									<td class="exlabel">URL:</td>
									<td>
										<input type="text" name="kurl" id="kurl"  placeholder="URL" class="simpletext form-control">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Article Upload:</td>
									<td>
										<input type="file" name="articlefile" id="articlefile" class="simpletext form-control" style="line-height: 2">
									</td>
									<td class="exlabel">Keywords:</td>
									<td>
										<input type="text" name="keywords" id="keywords"  placeholder="Keywords" class="simpletext form-control">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Content:</td>
									<td>
										<input type="text" name="content" id="content1"  placeholder="Content" class="simpletext form-control">
									</td>
									<td class="exlabel">Notes:</td>
									<td>
										<input type="text" name="notes" id="notes"  placeholder="Notes" class="simpletext form-control">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Priority:</td>
									<td>
										<select name="priority" id="priority" class=" form-control">
												<option selected="selected" value="">Select</option>
												<option>Business</option>
												<option>Urjent</option>
												<option>High</option>
												<option>Low</option>
										</select>
									</td>
									<td class="exlabel">Guide(For Seminar/Project):</td>
									<td>
										<input type="text" name="guide" id="guide"  placeholder="Guide" class="simpletext form-control">
									</td>
								</tr>
								<tr>
									<td class="exlabel">Co-Guide:</td>
									<td>
										<input type="text" name="coguide" id="coguide"  placeholder="Co - Guide" class="simpletext form-control">
									</td>
									<td class="exlabel">Team Size:</td>
									<td>
										<input type="text" name="tsize" id="tsize"  placeholder="Team Size" class="simpletext form-control">
									</td>
								</tr>
								<tr>
									<td colspan="4" style="text-align: center;"><button type="submit" id="save3" class="btn">Save Details</button></td>
								</tr>
								<tr>
									<td  class="exlabel" colspan="4" >* Fields are compulsory</td>
								</tr>
							</table>
							</form>
						</div>




  </div>

<button type="button" id="CrSucc" style="display:none" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal-success">Open Large Modal</button>

		  <div class="modal fade" id="myModal-success" role="dialog">
		    <div class="modal-dialog ">
		      <div class="modal-content">
		        <div class="modal-body" style="text-align: center">
					<br/><br/>

		          	<h3 style="color:green">Profile updated successfully</h3>

					<br/><br/>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn" data-dismiss="modal">   Close  </button>
		        </div>
		      </div>
		    </div>
		  </div>

<input type="hidden" value="${result}" id="result"/>
<c:remove var="result"/>



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
