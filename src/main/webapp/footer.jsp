<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<footer id="footer" style="margin-top: 0px;background-color: #09919c;">
<div class="container" style="width: 100%;">
   <div class="row">
  <div class="footerbottom">
  <div class="col-md-3 col-sm-3">
         <div class="footerwidget" style="font-family: sans-serif;">
                         <h4 style="color:White;font-weight: bold;font-family: sans-serif; border-bottom: 2px solid #fdd991;padding-bottom: 5px;">Contact Us</h4>
                        <p style="color: #003135;font-weight: bold;">Baburaoji Gholap College ,</p>
            <div class="contact-info" style="color: #fdd991;">
	            <i class="fa fa-map-marker"></i>  Sangvi,Pune 411027,Maharashtra, India .<br><br>
	            <i class="fa fa-phone"></i> 020-2728 0204 <br><br>
	            <i class="fa fa-fax"></i> Fax: 020-2728 1722<br><br>
	             <i class="fa fa-envelope-o"></i><a href="mailto:bgc_sangvi@pdeapune.org" style="color: #fdd991;">bgc_sangvi@pdeapune.org</a>
          </div>
        </div><!-- end widget --><br>
       <a href="Login"> <input type="submit" class="btn btn-block" value="Login" style="background: #003135;"/></a>
    </div>
    <div class="col-md-3 col-sm-3">
      <div class="footerwidget">
        <h4 style="color:White;font-weight: bold;font-family: sans-serif;border-bottom: 2px solid #fdd991;padding-bottom: 5px;">
         Campus Video
        </h4>
        <div class="menu-course">
         <video style="width: 300px;height: 190px;font-family: sans-serif;" id="vtour" allowfullscreen="true" controls="controls" autoplay="autoplay">
			    <source src="${s3pat}virtualtour/College+Video.mp4">
			        Your browser does not support the video tag.
	</video>
	<br>
	<span style="color: #ffffff;background: #000000;margin-left:0px;margin-bottom:0px;padding: 4px;float: left;font-size: large;">Visitor Counter:- <%=request.getServletContext().getAttribute("hitCounter")%></span>
<!--           <ul class="menu" style="font-family: sans-serif;"> -->
<!--             <li><a href="http://www.dbtindia.nic.in/star-college-scheme/" target="_blank" style="color: #fff700!important;"> -->
<!--               &#9755;  DBT -STAR -->
<!--               </a> -->
<!--             </li> -->
<!--             <li><a href="http://www.fist-dst.org/" target="_blank" style="color: #fff700!important;"> -->
<!--                &#9755; DST-FIST -->
<!--               </a> -->
<!--             </li> -->
<!--             <li><a href="http://mhrd.gov.in/community-colleges" target="_blank" style="color: #fff700!important;"> -->
<!--               &#9755;  UGC Community College -->
<!--               </a> -->
<!--             </li> -->
<!--             <li><a href="https://www.ugc.ac.in/page/Basic-Scientific-Research.aspx" target="_blank" style="color: #fff700!important;"> -->
<!--               &#9755; UGC-BSR -->
<!--               </a> -->
<!--             </li> -->
<!--             <br><br><br> -->
<%--             <li><span style="color: #ffffff;background: #000000;margin-left:0px;margin-bottom:0px;padding: 4px;float: left;font-size: large;">Visitor Counter:- <%=request.getServletContext().getAttribute("hitCounter")%></span> --%>
<!--             </li> -->
<!--           </ul> -->
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-3">
      <div class="footerwidget">
        <h4 style="color:White;font-weight: bold;font-family: sans-serif;border-bottom: 2px solid #fdd991;padding-bottom: 5px;">
          Campus Life
        </h4>
        <div class="menu-course">
          <ul class="menu" style="font-family: sans-serif;" >
            <li style="color: blue;" ><a href="StudentDevelopment?type=Anti%20Harassment&pgnm=StudentDevelopmentAntiRagging" target="_blank" style="color: #fdd991!important;">
              &#9755; Anti Haressement Policy
              </a>
            </li>
            <li style="color: blue;"><a href="StudentDevelopment?type=ICASH&pgnm=StudentDevelopmentICASH" target="_blank" style="color: #fdd991!important;">
              &#9755; I-CASH
              </a>
            </li>
            <li style="color: blue;"><a href="#" target="_blank" style="color: #fdd991!important;">
              &#9755; IPR
              </a>
            </li>
            <li style="color: blue;"><a href="StudentDevelopment?type=NSS&pgnm=StudentDevelopmentNSS" target="_blank" style="color: #fdd991!important;">
              &#9755; National Service Scheme
              </a>
            </li>
            <li style="color: blue;"><a href="StudentDevelopment?type=NCC&pgnm=StudentDevelopmentNCC" target="_blank" style="color: #fdd991!important;">
             &#9755;National Cadet Corps 
              </a>
            </li>
            <li style="color: blue;"><a href="StudentDevelopment?type=Placement&pgnm=StudentDevelopmentPlacement" target="_blank" style="color: #fdd991!important;">
               &#9755;PLacement Information for Web
              </a>
            </li>
            <li style="color: blue;"><a href="SCSTWelfareCommittee.jsp" target="_blank" style="color: #fdd991!important;">
             &#9755; Protection of Backward class students
              </a>
            </li>
             <li style="color: blue;"><a href="StdvplRTI.jsp" target="_blank" style="color: #fdd991!important;">
             &#9755; RTI
              </a>
            </li>
             <li ><a href="StudentDevelopment.jsp" target="_blank" style="color: #fdd991!important;">
            &#9755; Students' Grievance Redressal cell
              </a>
            </li>
             <li ><img alt="" src="images/bgc.png" style="width: 100px;height: 100px;">
            </li>
            
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-3">
      <div class="footerwidget">
        <h4 style="color:White;font-weight: bold;font-family: sans-serif;border-bottom: 2px solid #fdd991;padding-bottom: 5px;font-weight: bold;">
         Map Location
        </h4>
        <div class="menu-course">
       <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15127.720296068797!2d73.809242!3d18.577191!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf33eeb97f5734df9!2sBaburaoji%20Gholap%20College!5e0!3m2!1sen!2sus!4v1591098079380!5m2!1sen!2sus" width="100%" height="250px" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
        </div>
      </div>
    </div>

    
  </div>
</div>
<br>
<!-- 			<div class="social text-center"> -->
<!-- 				<a href="#"><i class="fa fa-twitter"></i></a> -->
<!-- 				<a href="#"><i class="fa fa-facebook"></i></a> -->
<!-- 				<a href="#"><i class="fa fa-dribbble"></i></a> -->
<!-- 				<a href="#"><i class="fa fa-flickr"></i></a> -->
<!-- 				<a href="#"><i class="fa fa-github"></i></a> -->
<!-- 			</div> -->

			<div class="clear"></div>
			<!--CLEAR FLOATS-->
		</div>
		<div class="footer2" style="background-color: #ffffff;">
			<div class="container">
				<div class="row">

					<div class="col-md-6 panel">
						<div class="panel-body">
							<!-- <p class="simplenav">
								<a href="index.html">Home</a> |
								<a href="about.html">About</a> |
								<a href="courses.html">Courses</a> |
								<a href="price.html">Price</a> |
								<a href="videos.html">Videos</a> |
								<a href="contact.html">Contact</a>
							</p> -->
							<p class="text-left" style="color: black;">
								Copyright &copy;2017. Baburaoji Gholap College , Sangvi, Pune. All Rights Reserved.
							</p>
						</div>
					</div>

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="text-right"  style="color: black;">
								Powered By <a href="https://www.techdivinity.com/" target="_blank"  style="color: black;">Techdivinity, Pune</a><span style="font-size: 8px;">Vrs:- 25-06-2024</span>
							</p>
						</div>
					</div>

				</div>
				<!-- /row of panels -->
			</div>
		</div>
	</footer>