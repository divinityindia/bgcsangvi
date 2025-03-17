<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="Baburaoji Gholap College , Sangvi ,Pune" />
	<meta name="description" content="Baburaoji Gholap College , Sangvi ,Pune">
	<meta name="author" content="Baburaoji Gholap College , Sangvi ,Pune">
	<jsp:include page="title.jsp"></jsp:include>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  
  <script>
            $(document).ready(function(){
                 $("#btn1").click(function()
                		 {
                	      $("#block1").css('display','block');
                	      $("#block2").css('display','none');
                	      $("#block3").css('display','none');
                	      
                         });
                 $("#btn2").click(function()
                 		 {
		                  $("#block1").css('display','none');
		           	      $("#block2").css('display','block');
			           	   $("#block3").css('display','none');
	             	     
                          });
                 $("#btn3").click(function()
                 		 {
		                  $("#block1").css('display','none');
		           	      $("#block2").css('display','none');
		           	      $("#block3").css('display','block');
	             	      
                                 
                          });
                
                
   		                
                       });
                    	
                      
              
        </script>
	
</head>
<body>
         
              <!-- Fixed navbar -->
	<div class="navbar navbar-inverse" style="padding-top:0px">
		<div class="container" style="width: 100%;margin: 0px;padding-left: 0px;padding-right: 0px; ">

			<jsp:include page="header.jsp"></jsp:include>
			<jsp:include page="menu.jsp"></jsp:include>
             <input type="hidden" id="s3pat" value="${s3pat}">
		</div>
	</div>
	 <h1 style="color:#09919c; font-weight: bold;font-family: sans-serif;font-size: 25px;text-align: center;">
		  <u><b>Code of Conduct </b></u>
    </h1>
	<!-- /.navbar -->
   <div style="padding: 20px;margin: 12px;">
         <a href="https://pdeabgcollege.s3.us-east-2.amazonaws.com/CodeOFConduct.pdf" target="_blank" style="color: #834a82;float: right;font-weight: bold;"> <img src="pcell_img/pdficon.jpg" style="height: 40px;">Code of Conduct Document</a><br>
		<br><br>
		<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;font-weight: bold;">
		The Student Code of Conduct applies to any student admitted to the college for any program, including co-op and exchange students. This code of conduct is binding to the student on campus and also off campus, if representing the college in official capacity.
		</p>	
		 <ol style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
			  <li>Student must attend lectures, practical, tutorials, examination, etc. Defaulter will not be sent up for University Examination. </li>
			  <li>Employed students will not be given any concession in matters of attendance or rules regarding appearance at college Examinations. </li>
			  <li>Use of identity card mandatory on campus and while representing college off campus.</li>
			  <li>The conduct of the students in the classes and in the premises of the college shall be such as it should cause no disturbance to teachers, fellow students or other classes.</li>
			  <li>No Society or Association shall be formed in the college and no person should be invited in the college campus nor should any Notice Circular/Poster/Banner in the college premises be displayed without the specific permission of the principal. </li>
		      <li>No student will be allowed to conduct any political activity in the college.</li>
		      <li>All programs organized on the college premises must be held in presence of teaching staff members and with the prior permission of the Principal. </li>
		      <li>Stealing, misusing, destroying, defacing or damaging College property or using any college property or facility without authorization.</li>
		      <li>Students involved in mal-practices at the College/Board/University Examinations will not be admitted to the college.</li>
		      <li>Smoking, spitting and littering is strictly prohibited in the college premises.</li>
		      <li>If, for any reason, the behavior of a student in the college is found detrimental to the best interest of the college, the Principal may ask the student to leave the college and the decision will be final binding on the student.</li>
		      <li>Use of a mobile phone is strictly prohibited in the academic area of the college which includes science building, lecture halls, laboratories, and library. </li>
		      <li>Students must not loiter on the college premises while the classes are at work. Boys if found loitering near girl's common room are liable for punishment.</li>
		      <li>Students must not attend classes other than their own without the permission of the authority concerned.</li>
		      <li>Students shall do nothing inside or outside the college that will interfere with the discipline of the college or tarnish the image of the college. </li>
		      <li>Students are not allowed to communicate any information about college matters to press.</li>
		      <li>Matters are not covered above will be decided at the discretion of the principal.</li>
		      
		</ol>
		<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;font-weight: bold;">
		Acts of misbehavior, misconduct, indiscipline or violation of the rules of discipline mentioned above liable for one or more punishment as stated below
		</p>	
		 <ol style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
			  <li>Warning to the students</li>
			  <li>A letter to parents </li>
			  <li>Imposition of a fine.</li>
			  <li>Denial of gymkhana, library, laboratory, N.C.C., N.S.S., students aid or any other facility for specified period or for the whole term/year.</li>
			  <li>Cancellation of terms.</li>
			  <li>Refusal of admission in the term or academic year.</li>
			  <li>Cancellation of admission.</li>
			  <li>Expulsion from college for a specified period.</li>
			  <li>Rustication.</li>
		</ol>
		<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;font-weight: bold;">
		Ragging
		</p>	
		 <ol style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
			  <li>Ragging of any kind is strictly prohibited. Anyone including in ragging will be dealt with 'Zero Tolerance' and will be expelled as this has been prescribed as a minimum punishment by the Supreme Court of India.</li>
			  <li>The Supreme Court has categorically mentioned that harassing fresher students, physically and mentally will be booked by the police, expelled from the college and also denied future admission.</li>
			  <li>. If anyone tries to rag any student the same should be reported immediately to the Director (Ref: Maharashtra Prohibition of Ragging Act 1999)</li>
	    </ol>
   </div>
</body>
</html>