<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



			<style>
				#topStrip a{
					color:#fff;
					font-weight:bold;
					//font-size: 0.85em;
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
			<div id="topStrip" style="text-align: right;background:#008080;color:#fff;font-weight: bold;padding-right: 10px;">
			${EPuser} | <a class="btn-xs btn-danger" href="Elogout">LOG OUT</a>
			</div>
			<div class="navbar-header centerd">
					<ul class="nav navbar-nav">
					<li class="lli">
						<br/><img src="../images/logo.jpg" alt="PDEA Logo" class="slogo" style="width: 110px;">
					</li>
					<li class="mainHeadLine">
						<h4 style="margin-left: 20px;" id="sanstha" class="headertxt">Pune District Education Association's</h4>
						<h3  class="headertxt" id="inst123" style="margin-left:20px;margin-right:20px;margin-top: 2px;padding-bottom: 2px;">PROF. RAMKRISHNA MORE ARTS, COMMERCE &amp; SCIENCE COLLEGE, AKURDI, PUNE</h3>
						<p  class="headertxt" id="haddress" style="margin-left:20px;margin-right:20px;margin-top: 1px;padding-bottom: 2px;">Akurdi, Pradhikaran, Pune - 411044 (Maharashtra) India</p>
						<p  class="headertxt" id="haddress" style="margin-left:20px;margin-right:20px;margin-top: 1px;padding-bottom: 2px;font-family: sans-serif;color: #ff00eb;">"Accredited with A+ grade (CGPA 3.46) by NAAC."</p>
						<div class="marquee">
	      					<p  class="headertxt" id="uni" style="">Affiliated to Savitribai Phule Pune University, Pune  |  Year of Establishment - 1992  |  ID No.: PU/PN/ASC/090/1992</p>
						</div>
					</li>
					<li class="lli">
						<br/><img src="../images/clg-logo.jpg" alt="PDEA Logo" class="slogo" style="width: 110px;">
					</li>
					</ul>
				<!-- <marquee direction="left"> --><!-- </marquee> -->
			</div>