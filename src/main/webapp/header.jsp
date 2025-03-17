<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- -------------- s3 path set here -------------- -->

<c:set var="s3pat" value="https://pdeabgcollege.s3.us-east-2.amazonaws.com/" scope="session"  />

<!-- -------------- s3 path set here -------------- -->
			<style>
				#topStrip a{
					color:#fff;
					font-weight:bold;
					font-size: 0.85em;
				}
				#topStrip a:hover{
					text-decoration: none;
				}
				#uni{
					margin-left:20px;
					color: #b91616;
					margin:0px;
					padding:0px;
				}
				.marquee {
					background-color: #ddd;
				    white-space: nowrap;
				    overflow: hidden;
				    box-sizing: border-box;
				    margin-bottom: 5px;
				}
				.marquee p {
				    display: inline-block;
				    padding-left: 100%;
				    animation: marquee 15s linear infinite;
				}
				@keyframes marquee {
				    0%   { transform: translate(0, 0); }
				    100% { transform: translate(-100%, 0); }
				}
				.mainHeadLine h3,.mainHeadLine h4, .mainHeadLine p{
					color:#0040ff;
				}
				.mainHeadLine h4{
					 //font-family: 'Sofia';
					 //font-weight: bold;
					 //font-family: 'Alfa Slab One';
					 //font-size: 0.5em;
				}
				.mainHeadLine h3{
					//font-family: 'Alfa Slab One';
 					font-weight: bold;
 					 font-size: 1.2em;
 					 font-family: "Times New Roman", Times, serif;
 					 //color: #b91616;
 					 color:#0040ff;
				}
				#topStrip{
					text-transform: uppercase;
				}
			</style>
  <div class="row" style="padding: 10px;background: #002e3b;">
<!--   <div id="topStrip" style="text-align: right;background:#577FDB;color:#fff;font-weight: bold;padding-right: 10px;"> -->
<!-- 				 <a href="ExamCircular.jsp">EXAMINATION CIRCULARS</a> -->
<!-- 				 | <a href="AlumniStudentRegi">ALUMNI</a> -->
<!-- 				  | <a href="http://mail.pdearmacs.edu.in/webmail" target="_blank">WEBMAIL</a> -->
<!-- 				   | <a href="Login">UPLOAD</a> -->
<!-- 			</div> -->
         <div class="col-md-2 "  style="text-align: center;" >
         <img src="images/logo.jpg" alt="PDEA Logo" class="slogo" style="width: 110px;border-radius: 50%;">
         </div>
         <div class="col-md-8"  style="text-align: center;" >
	          <h3 style="margin-top: 0px;color: white;"><span style="font-size: 26px;">Pune District Education Association's</span><br> 
	              <span style="font-size: 30px;"><strong >Baburaoji Gholap College , Sangvi ,Pune.</strong></span><br>
	              <span style="font-size: 14px;color: red;font-weight: bold;">"NAAC Grade B<i class="fa fa-plus"></i><i class="fa fa-plus"></i>"</span>
	              <marquee  direction="left" behavior="scroll"  onmouseover="this.stop();" onmouseout="this.start();" scrolldelay="200" style="color: white;font-weight: bold;font-size: 12px;font-family: sans-serif;padding: 5px;background: #003135;">
				  Estd. June 1989 | Inst.Code: AYU0149 | Affiliated to Savitribai Phule Pune University | Best College Award, SPPU | DBT Star College | State Government Award - &quot;Jagar Janivancha&quot; Twice | DST-FIST Financial Support | UGC Grants For COC | DRCP Community College| NIRF
				  </marquee>
	          </h3>
<!--                         <h4>Pune District Education Association's</h4> -->
<!-- 						<h3>BABURAOJI GHOLAP COLLEGE ,</h3> -->
<!-- 						<p>Sangvi ,Pune - 411044 (Maharashtra) India .</p> -->
<!-- 						<h4 >"NAAC Grade B+"</h4> -->
<!-- 						<marquee  direction="left" behavior="scroll"  onmouseover="this.stop();" onmouseout="this.start();" scrolldelay="200" style="color: white;font-weight: bold;font-size: 12px;font-family: sans-serif;padding: 5px;background: #3f4167;"> -->
<!-- 							 Estd. June 1989 | Inst.Code: AYU0149 |Affiliated to Savitribai Phule Pune University |Best College Award, SPPU | DBT Star College | State Government Award - &quot;Jagar Janivancha&quot; Twice |DST-FIST Financial Support | UGC Grants For COC | DRCP CommunityCollege|NIRF -->
<!-- 						</marquee> -->
         </div>
         <div class="col-md-2 "  style="text-align: center;" >
         <img src="images/bgc-logo.jpg" alt="PDEA Logo" class="slogo" style="width: 110px;border-radius: 50%;">
         </div>
 </div>

			
<!-- 			<div class="navbar-header centerd"> -->
<!-- 					<ul class="nav navbar-nav"> -->
<!-- 					<li class="lli"> -->
<!-- 						<br/><img src="images/logo.jpg" alt="PDEA Logo" class="slogo" style="width: 110px;"> -->
<!-- 					</li> -->
<!-- 					<li class="mainHeadLine"> -->
<!-- 						<h4 style="margin-left: 20px;font-family: sans-serif;" id="sanstha" class="headertxt">Pune District Education Association's</h4> -->
<!-- 						<h3  class="headertxt" id="inst123" style="margin-left:20px;margin-right:20px;margin-top: 2px;padding-bottom: 2px;font-family: sans-serif;font-size: 26px;">BABURAOJI GHOLAP COLLEGE ,</h3> -->
<!-- 						<p  class="headertxt" id="haddress" style="margin-left:20px;margin-right:20px;margin-top: 1px;padding-bottom: 2px;font-family: sans-serif;">Sangvi ,Pune - 411044 (Maharashtra) India .</p> -->
<!-- 						<h4  class="headertxt" id="haddress" style="margin-left:20px;margin-right:20px;margin-top: 1px;padding-bottom: 2px;font-family: sans-serif;color: #fb1212;font-weight: bold;font-size: 16px;">"NAAC Grade B+"</h4> -->
<!-- 						<div class="marquee"> -->
<!-- 	      					<p  class="headertxt" id="uni" style="font-family: sans-serif;">Affiliated to Savitribai Phule Pune University, Pune  |  Year of Establishment - 1992  |  ID No.: PU/PN/ASC/090/1992</p> -->
<!-- 						</div> -->
<!-- 					</li> -->
<!-- 					<li class="lli"> -->
<!-- 						<br/><img src="images/clg-logo.jpg" alt="PDEA Logo" class="slogo" style="width: 110px;"> -->
<!-- 					</li> -->
<!-- 					</ul> -->
<!-- 			</div> -->
			
		