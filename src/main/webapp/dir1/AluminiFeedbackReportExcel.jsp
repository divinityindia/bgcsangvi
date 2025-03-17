<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix ="fn"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="Prof. Ramkrishna More Arts, Commerce &amp; Science College" />
	<meta name="description" content="Prof. Ramkrishna More Arts, Commerce &amp; Science College">
	<meta name="author" content="Prof. Ramkrishna More Arts, Commerce &amp; Science College">
	<jsp:include page="title.jsp"></jsp:include>
<!-- ------- xl file code --------- -->
	<style>
table
     {
     mso-displayed-decimal-separator:"\.";
     mso-displayed-thousand-separator:"\,";
     }
@page
     {
     margin:1.0in .75in 1.0in .75in;
     mso-header-margin:.5in;
     mso-footer-margin:.5in;
     }

tr
     {
     mso-height-source:auto;
     }

col
     {
     mso-width-source:auto;
     }

.numberFormat
     {
     mso-style-parenttyle0;
     mso-number-format:"\@";
     border:.5pt solid windowtext;
     }

.numberFormatCurrency
     {
     mso-style-parenttyle0;
     mso-number-format:"\@";
     text-align:right;
     border:.5pt solid windowtext;
     }

.dateFormat
     {
     mso-number-format:"Short Date";
     border:.5pt solid windowtext;
     }

.headerItem, th
     {
     padding-top:1px;
     padding-right:1px;
     padding-left:1px;
     mso-ignoreadding;
     color:windowtext;
     font-size:10.0pt;
     font-weight:700;
     font-style:normal;
     text-decoration:none;
     font-family:Arial, sans-serif;
     mso-font-charset:0;
     mso-number-format:General;
     text-align:center;
     vertical-align:middle;
     border:.5pt solid windowtext;
     backgroundilver;
     mso-pattern:auto none;
     /*white-space:nowrap;*/
     }

.bodyItem, td
     {
     padding-top:1px;
     padding-right:1px;
     padding-left:1px;
     mso-ignoreadding;
     color:windowtext;
     font-size:10.0pt;
     font-weight:500;
     font-style:normal;
     text-decoration:none;
     /*font-family:Arial, sans-serif;*/
     mso-font-charset:0;
     mso-number-format:General;
     text-align:general;
     vertical-align: middle;
     border:.5pt solid windowtext;
     mso-background-source:auto;
     mso-pattern:auto;
     /*white-space:nowrap;*/
     }
     img {
  width: 50px;
  height: 50px;
}
</style>
	
			<!-- <style>
			table
			     {
			     mso-displayed-decimal-separator:"\.";
			     mso-displayed-thousand-separator:"\,";
			     }
			@page
			     {
			     margin:1.0in .75in 1.0in .75in;
			     mso-header-margin:.5in;
			     mso-footer-margin:.5in;
			     }
			     
			tr
			     {
			     mso-height-source:auto;
			     }
			     
			col
			     {
			     mso-width-source:auto;
			     }
			     
			.numberFormat
			     {
			     mso-style-parent:style0;
			     mso-number-format:"\@";
			     border:.5pt solid windowtext;
			     }
			
			.numberFormatCurrency
			     {
			     mso-style-parent:style0;
			     mso-number-format:"\@";
			     text-align:right;
			     border:.5pt solid windowtext;
			     }
			     
			.dateFormat
			     {     
			     mso-number-format:"Short Date";
			     border:.5pt solid windowtext;
			     }
			
			.headerItem
			     {
			     padding-top:1px;
			     padding-right:1px;
			     padding-left:1px;
			     mso-ignore:padding;
			     color:windowtext;
			     font-size:10.0pt;
			     font-weight:700;
			     font-style:normal;
			     text-decoration:none;
			     font-family:Arial, sans-serif;
			     mso-font-charset:0;
			     mso-number-format:General;
			     text-align:center;
			     vertical-align:middle;
			     border:.5pt solid windowtext;
			     background:silver;
			     mso-pattern:auto none;
			     /*white-space:nowrap;*/
			     }     
			     
			.bodyItem
			     {
			     padding-top:1px;
			     padding-right:1px;
			     padding-left:1px;
			     mso-ignore:padding;
			     color:windowtext;
			     font-size:10.0pt;
			     font-weight:500;
			     font-style:normal;
			     text-decoration:none;
			     /*font-family:Arial, sans-serif;*/
			     mso-font-charset:0;
			     mso-number-format:General;
			     text-align:general;
			     vertical-align: middle;
			     border:.5pt solid windowtext;
			     mso-background-source:auto;
			     mso-pattern:auto;
			     /*white-space:nowrap;*/     
			     }
			</style> -->
    </head>
     <% 
     response.setContentType("application/vnd.ms-excel");
     response.setHeader("content-disposition","attachment; filename=Alumini_Feedback_Report.xls");

 %>   
<body>
 <div class="container" style="padding:10px;width: 1300px!important;">

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
	  		<h3>Alumini FeedBack Reports</h3>
	  		<br/>
<!-- 	  		 <form action="AluminiFeedbackReport" method="post"> -->
<!-- 	  		  <button class="btn btn-pink  text-uppercase waves-effect waves-light btn-sm" style=" margin-left: 2%;"   type="submit">Generate Excel </button> -->
<!--              </form>       -->
				<div style="width: 100%;height: 800px;overflow: scroll;">
						<table style="width: 100%;" >
					        <thead>
					            <tr>
					                 <th width="7%" style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Sr.No</th>
					                 <th width="15%" style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Full Name</th>
 					                 <th width="20%" style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Email Id</th>
 					                  <th  width="8%" style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Contact No.</th>
 					                   <th  width="15%" style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Course / Year</th>
 					                    <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Occupation</th>
 					                     <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Designation</th>
 					                     <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Place of Work</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Are you member of alumni association?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Work Culture observed by you ?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Academic Discipline ?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Educational Resources ?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; "> Student's counseling and Guidance ?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Teacher-Student Support System ?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Examination & Evaluation System ?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Infrastructure facility ?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; "> Library ?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Sport & cultural activities ?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Use of Information Communication technology ?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Are you satisfied with quality education provided by the college ?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">How do you rate the courses that you Have learnt in the college in relation to you current Job or Occupation ?</th>
 					                      <th style="color: black; background: #002e3b;border:1px solid #003135; font-weight: bold; ">Give observations /suggestions to improve the overall teaching-learning experience in your institution.</th>
					              
					            </tr>
					        </thead>
					        <tbody>
					              <c:forEach var="dtls" items="${afdtls}" varStatus="row">
					              <tr> 
					                  <td>${row.count}</td>
					                  <td style="text-align: left">${dtls.afname}</td>
					                  <td style="text-align: left">${dtls.emid}</td>
					                  <td style="text-align: left">${dtls.mob}</td>
					                  <td style="text-align: left">${dtls.course} - (${dtls.cyear})</td>
					                  <td style="text-align: left">${dtls.occp}</td>
					                  <td style="text-align: left">${dtls.deg}</td>
					                  <td style="text-align: left">${dtls.pwork}</td>
					                  <td style="text-align: left">${dtls.meb}</td>
					                  <td style="text-align: left">${dtls.q1}</td>
					                  <td style="text-align: left">${dtls.q2}</td>
					                  <td style="text-align: left">${dtls.q3}</td>
					                  <td style="text-align: left">${dtls.q4}</td>
					                  <td style="text-align: left">${dtls.q5}</td>
					                  <td style="text-align: left">${dtls.q6}</td>
					                  <td style="text-align: left">${dtls.q7}</td>
					                  <td style="text-align: left">${dtls.q8}</td>
					                  <td style="text-align: left">${dtls.q9}</td>
					                  <td style="text-align: left">${dtls.q10}</td>
					                  <td style="text-align: left">${dtls.q11}</td>
					                  <td style="text-align: left">${dtls.q12}</td>
					                  <td style="text-align: left">${dtls.sug}</td>
					                  
<%-- 					                  <td style="text-align: left ;"><img src="${s3path}AluminiFeedbackPic/${dtls.afid}_${dtls.document}" /> </td> --%>
					                  
					              </tr>
					            </c:forEach>
					        </tbody>
					    </table>
					</div>	
						

	  			
	  		</div>
  		</div>
  		<br/>
  		


  </div>
</body>
</html>