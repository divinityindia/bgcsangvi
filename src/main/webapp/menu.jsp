<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<style>
	#menu ul {
  margin: 0;
  padding: 0;
}

#menu .main-menu {
  display: none;
}

#tm:checked + .main-menu {
  display: block;
}

#menu input[type="checkbox"],
#menu ul span.drop-icon {
  display: none;
}

#menu li,
#toggle-menu,
#menu .sub-menu {
  border-style: solid;
  border-color: rgba(0, 0, 0, .05);
}

#menu li,
#toggle-menu {
  border-width: 0 0 1px;
}

#menu .sub-menu {
  background-color: #fdd991; /* sub menu background color */
  border-width: 1px 1px 0;
  margin: 0 1em;
}

#menu .sub-menu a{
/* 	margin:1em; */
 	padding:1em;
}
 #menu .small-sub-menu .sub-menu a{
 	padding:0.2em 0.5em;
 }

#menu .sub-menu li:last-child {
  border-width: 0;
}

#menu li,
#toggle-menu,
#menu a {
  position: relative;
  display: block;
  color: #003135; /* Menu COlor */
  text-shadow: 1px 1px 0 rgba(0, 0, 0, .125);
  font-weight: bold;
}

#menu,
#toggle-menu {
  background-color: #fdd991; /* menu strip color */
}

#toggle-menu,
#menu a {
  padding: 1em 0.8em;
}

#menu a {
  transition: all .125s ease-in-out;
  -webkit-transition: all .125s ease-in-out;
}

#menu a:hover {
  background-color: #002e3b; /* Menu Hover Background */
  color: white;
}

#menu .sub-menu {
  display: none;
}

#menu input[type="checkbox"]:checked + .sub-menu {
  display: block;
}

#menu .sub-menu a:hover {
  color: white;/* sub menu hover color */
}

#toggle-menu .drop-icon,
#menu li label.drop-icon {
  position: absolute;
  right: 1.5em;
  top: 1.25em;
}

#menu label.drop-icon, #toggle-menu span.drop-icon {
  border-radius: 50%;
  width: 1em;
  height: 1em;
  text-align: center;
  background-color: rgba(0, 0, 0, .125);
  text-shadow: 0 0 0 transparent;
  color: rgba(255, 255, 255, .75);
}

#menu .drop-icon {
  line-height: 1;
}

@media only screen and (min-width: 52em) {
  #menu .main-menu {
    display: block;
  }

  #toggle-menu,
  #menu label.drop-icon {
    display: none;
  }

  #menu ul span.drop-icon {
    display: inline-block;
  }

  #menu li {
    float: left;
    border-width: 0 1px 0 0;
  }

  #menu .sub-menu li {
    float: none;
  }

  #menu .sub-menu {
    border-width: 0;
    margin: 0;
    position: absolute;
    top: 100%;
    left: 0;
    width: 15em;
    z-index: 3000;
  }

  #menu .sub-menu,
  #menu input[type="checkbox"]:checked + .sub-menu {
    display: none;
  }

  #menu .sub-menu li {
    border-width: 0 0 1px;
    text-align: left;
  }

  #menu .sub-menu .sub-menu {
    top: 0;
    left: 100%;
  }

  #menu li:hover > input[type="checkbox"] + .sub-menu {
    display: block;
  }

</style>

<div style="text-align: center;background-color: #fdd991;padding:0px auto;">
<nav id="menu" style="display: inline-block;margin: 0px auto;">
  <label for="tm" id="toggle-menu">Navigation <span class="drop-icon">+</span></label>
  <input type="checkbox" id="tm">
  <ul class="main-menu clearfix">
    <li><a href="index.jsp">Home</a></li>
    <li><a href="#">About Us
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="aboutus">+</label>
      </a>
      <input type="checkbox" id="aboutus">
      <ul class="sub-menu">
		  <li><a href="#">Management
            		<span class="drop-icon">&#x25b8;</span>
	            <label title="Toggle Drop-down" class="drop-icon" for="test">+</label>
            	</a>
            	<input type="checkbox" id="test">
             
             <ul class="sub-menu">
               <li><a href='http://pdeapune.org/' target="_blank">About PDEA</a></li>
               <li><a href="OfficeBearers1.jsp">Office Bearers</a></li>
               <li><a href="OfficeBearers.jsp">Governing Council</a></li>
               
             </ul>
          </li>
           <li><a href="#">College
            		<span class="drop-icon">&#x25b8;</span>
	            <label title="Toggle Drop-down" class="drop-icon" for="test">+</label>
            	</a>
            	<input type="checkbox" id="test">
             
             <ul class="sub-menu">
            <li><a href='AboutCollege.jsp'>About College</a></li>
            <li><a href='Mission-Goals.jsp'>Mission &amp; Goals</a></li>
			<li><a href='PresidentMessage.jsp'>President's Message</a></li>
			<li><a href='Vicepresident.jsp'>Vice - President's Message</a></li>
			<li><a href='SecretaryMessage.jsp'>Secretary's Message</a></li>
			<li><a href='PrincipalMessage.jsp'>Principal's Message</a></li>
		    <li><a href="CollegeAdministrationStaffBean">College Administration Staff</a> </li>
		    <li><a href="AcademicCommittee">Academic Committee</a></li>
            <li><a href="AcademicCalendar">Academic Calendar</a></li>
             </ul>
          </li>
        <li><a href="OrganogramInstitution.jsp">Organogram of Institution
            	</a>
          </li>
             
      </ul>
      
      <!-- <ul class="sub-menu">
		<li><a href='Mission-Goals.jsp'>Mission &amp; Goals</a></li>
		<li><a href='PresidentMessage.jsp'>President's Message</a></li>
		<li><a href='Vicepresident.jsp'>Vice - President's Message</a></li>
		<li><a href='SecretaryMessage.jsp'>Secretary's Message</a></li>
		<li><a href='PrincipalMessage.jsp'>Principal's Message</a></li>
		<li><a href='AboutPdea.jsp'>About PDEA</a></li>
		<li><a href="#">About Institute</a></li>
      </ul> -->
    </li>
    
    <li><a href="#">Academics
	        <span class="drop-icon">&#x25be;</span>
	        <label title="Toggle Drop-down" class="drop-icon" for="Research">+</label>
	      </a>
	      <input type="checkbox" id="Research">
	      <ul class="sub-menu">
	        <li><a href="#">Policy and Procedure
	            <span class="drop-icon">&#x25b8;</span>
	            <label title="Toggle Drop-down" class="drop-icon" for="Project">+</label>
	          </a>
	          <input type="checkbox" id="Project">
	          <ul class="sub-menu">
				<li><a href="GetPolicyProcedure?title=Curriculum Delivery" target="_blank">Curriculum Delivery</a></li>
				<li><a href="GetPolicyProcedure?title=Academic"  target="_blank">Academic</a></li>
				<!-- <li><a href="GetPolicyProcedure?title=Mentor"  target="_blank">Mentor</a></li> -->
				<li><a href="StudentDevelopment?type=Mentor%20System&pgnm=StudentDevelopmentMentorSystem"  target="_blank">Mentor</a></li>
				<li><a href="GetPolicyProcedure?title=Physical And Academic Facility"  target="_blank">Physical And Academic Facility</a></li>
				<li><a href="GetPolicyProcedure?title=Perspective Plan"  target="_blank">Perspective Plan</a></li>
	          </ul>
	        </li>
	      <!--  <li><a href="Academics.jsp">Program Outcomes</a></li> --> 
	         <li><a href="ProgramOutcomes.jsp">Program Outcomes</a></li>
           <!--  <li><a href="GetAddAdmission">Admission</a></li> -->
            <li><a href="AdmissionProcedure.jsp">Admission</a></li>
<!--             <li><a href="AdmissionProcedure.jsp">Admission Procedure </a></li> -->
            <li><a href="ShortTermCourse.jsp">Short Term Courses</a></li>
	      </ul>
	    </li>
   <!--  <li><a href="#">Academics
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="Academics">+</label>
      </a>
      <input type="checkbox" id="Academics">
      <ul class="sub-menu">
        <li><a href="GetPolicyProcedure">Policy and Procedure</a></li>
        <li><a href="Academics.jsp">Academics</a></li>
        <li><a href="GetAddAdmission">Admission</a></li>
        <li><a href="ShortTermCourse.jsp">Short Term Courses</a></li>
     </ul>
    </li> -->
    <li><a href="#">Department
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="Department">+</label>
      </a>
      <input type="checkbox" id="Department">
      <ul class="sub-menu small-sub-menu" >
        <li><a href="#">Arts
            <span class="drop-icon">&#x25b8;</span>
            <label title="Toggle Drop-down" class="drop-icon" for="Humanities">+</label>
          </a>
          <input type="checkbox" id="Humanities">
          
          <ul class="sub-menu">
           <li><a href="GetDeptDtl?did=7&pgnm=Economics">Economics
            	</a>
             </li>
              <li><a href="GetDeptDtl?did=80&pgnm=History">History
            	</a>
             </li>
              <li><a href="GetDeptDtl?did=10&pgnm=Geography">Geography
            	</a>
             </li>
             <li><a href="GetDeptDtl?did=8&pgnm=Politics">Political Science
            	</a>
             </li>
              <li><a href="GetDeptDtl?did=2&pgnm=Marathi">Marathi
            	</a>
             </li>
            <li><a href="GetDeptDtl?did=1&pgnm=English">English
            	</a>
           </li>
<!--              <li><a href="GetDeptDtl?did=81&pgnm=PhysicalEducation">Physical Education -->
<!--             	</a> -->
<!--              </li> -->
           		
          </ul>
          
        </li>
        
		<li><a href="#">Commerce
            <span class="drop-icon">&#x25b8;</span>
            <label title="Toggle Drop-down" class="drop-icon" for="Commerce">+</label>
          </a>
          <input type="checkbox" id="Commerce">
          <ul class="sub-menu">
            <li><a href="GetDeptDtl?did=14&pgnm=Commerce">Commerce</a></li>
            <li><a href="GetDeptDtl?did=16&pgnm=BBA(CA)">B.B.A.(CA)</a></li>
          </ul>
        </li>
        
        
		<li><a href="#">Science &amp; Technology
            <span class="drop-icon">&#x25b8;</span>
            <label title="Toggle Drop-down" class="drop-icon" for="Science">+</label>
          </a>
          <input type="checkbox" id="Science">
          
          <ul class="sub-menu">
          <li><a href="GetDeptDtl?did=25&pgnm=Chemistry">Chemistry
            	</a>-
           </li>
            <li><a href="GetDeptDtl?did=24&pgnm=Physics">Physics
            	</a>
           </li>
           <li><a href="GetDeptDtl?did=26&pgnm=Botany">Botany
            	</a>
           </li>
           <li><a href="GetDeptDtl?did=27&pgnm=Zoology">Zoology
            	</a>
           </li>
           <li><a href="GetDeptDtl?did=20&pgnm=ComputerScience">Computer Science
            	</a>
           </li>
           <li><a href="GetDeptDtl?did=21&pgnm=Electronics">Electronics
            	</a>
           </li>
           <li><a href="GetDeptDtl?did=22&pgnm=Statistics">Statistics
            	</a>
           </li>
          
           <li><a href="GetDeptDtl?did=23&pgnm=Mathematics">Mathematics
            	</a>
           </li>
         </ul>
          
        </li>
        
		<li><a href="#">Vocation
            <span class="drop-icon">&#x25b8;</span>
            <label title="Toggle Drop-down" class="drop-icon" for="B.Voc">+</label>
          </a>
          <input type="checkbox" id="B.Voc">
          <ul class="sub-menu">
            <li><a href="GetDeptDtl?did=76&pgnm=Bvoc(FashionTechnology)">Fashion Technology</a></li>
            <li><a href="GetDeptDtl?did=48&pgnm=Bvoc(SWDevelopment)">Software Development</a></li>
            <li><a href="GetDeptDtl?did=77&pgnm=Bvoc(RetailManagement)">Retail Management</a></li>
            <li><a href="GetDeptDtl?did=78&pgnm=Bvoc(TravelTourismManagement)">Travel and Tourism Management</a></li>
            <li><a href="GetDeptDtl?did=79&pgnm=Bvoc(BeautyTherapyAesthetic)">Beauty and Wellness</a></li>
          </ul>
        </li>
        <li><a href="GetDeptDtl?did=81&pgnm=PhysicalEducation">Physical Education
<!--             <span class="drop-icon">&#x25b8;</span> -->
<!--             <label title="Toggle Drop-down" class="drop-icon" for="Commerce">+</label> -->
          </a>
        </li>
<!--         <li><a href="#">M.Voc -->
<!--             <span class="drop-icon">&#x25b8;</span> -->
<!--             <label title="Toggle Drop-down" class="drop-icon" for="B.Voc">+</label> -->
<!--           </a> -->
<!--           <input type="checkbox" id="B.Voc"> -->
<!--           <ul class="sub-menu"> -->
<!--             <li><a href="GetDeptDtl?did=90&pgnm=Mvoc(FashionTechnology)">Fashion Technology</a></li> -->
<!--             <li><a href="GetDeptDtl?did=91&pgnm=Mvoc(SWDevelopmentManagement)">Software Development and Management</a></li> -->
<!--           </ul> -->
<!--         </li> -->
        <li><a href="#">Advanced Diploma
            <span class="drop-icon">&#x25b8;</span>
            <label title="Toggle Drop-down" class="drop-icon" for="B.Voc">+</label>
          </a>
          <input type="checkbox" id="B.Voc">
          <ul class="sub-menu">
            <li><a href="GetDeptDtl?did=92&pgnm=BiomedicalInstrumentation">Biomedical  Instrumentation</a></li>
          </ul>
        </li>
         <li><a href="#">Certificate Courses
            <span class="drop-icon">&#x25b8;</span>
            <label title="Toggle Drop-down" class="drop-icon" for="B.Voc">+</label>
          </a>
          <input type="checkbox" id="B.Voc">
          <ul class="sub-menu">
            <li><a href="GetDeptDtl?did=93&pgnm=GoodsServiceTax">Goods & Service Tax</a></li>
            <li><a href="GetDeptDtl?did=94&pgnm=LaboratoryChemistRubber">Laboratory Chemist-Rubber</a></li>
            <li><a href="GetDeptDtl?did=95&pgnm=AnimationMultimedia">Animation & Multimedia</a></li>
            <li><a href="GetDeptDtl?did=96&pgnm=AgroTourism">Agro Tourism</a></li>
            <li><a href="GetDeptDtl?did=97&pgnm=MassageTherapy">Massage Therapy</a></li>
          </ul>
        </li>
      </ul>
    </li>
    
    <li><a href="staff">Faculties</a></li>
	<li><a href="ResearchPage.jsp">Research
	        <span class="drop-icon">&#x25be;</span>
	        <label title="Toggle Drop-down" class="drop-icon" for="Research">+</label>
	      </a>
	      <input type="checkbox" id="Research">
	      <ul class="sub-menu">
	        <!-- <li><a href="research.jsp">Research</a></li> -->
	        <li><a href="GetPolicyProcedure?title=Research Policy" target="_blank">Research Policy</a></li>
	         <!--  <li><a href="ResearchUpladed?type=Research Center">Research centre</a></li> -->
	            <li><a href="#">Research centre
			            <span class="drop-icon">&#x25b8;</span>
			            <label title="Toggle Drop-down" class="drop-icon" for="Project">+</label>
			          </a>
			          <input type="checkbox" id="Project">
			          <ul class="sub-menu">
						<li><a href="ResearchCenterDetails?dpnm=Commerce">Research Center in Commerce</a></li>
						<li><a href="ResearchCenterDetails?dpnm=Economics">Research Center in Economics</a></li>
						<li><a href="ResearchCenterDetails?dpnm=Physics">Research Center in Physics</a></li>
						<li><a href="ResearchCenterDetails?dpnm=Chemistry">Research Center in Chemistry</a></li>
						<li><a href="ResearchCenterDetails?dpnm=Environmental Science">Research Center in Environmental Science</a></li>
						<li><a href="ResearchCenterDetails?dpnm=English">Research Center in English</a></li>
						<li><a href="ResearchCenterDetails?dpnm=Political Science">Research Center in  Political Science</a></li>
			          </ul>
			   </li>
			   <li><a href="#">Funding Scheme
			            <span class="drop-icon">&#x25b8;</span>
			            <label title="Toggle Drop-down" class="drop-icon" for="Project">+</label>
			          </a>
			          <input type="checkbox" id="Project">
			          <ul class="sub-menu">
						<li><a href="Fundingscheme?type=UGC&pgnm=UGC.jsp">UGC</a></li>
						<li><a href="Fundingscheme?type=Community College Scheme&pgnm=CommunityCollegeScheme.jsp">Community College Scheme</a></li>
						<li><a href="Fundingscheme?type=DBT Star College Scheme&pgnm=DBTStarCollegeScheme.jsp">DBT Star College Scheme</a></li>
						<li><a href="Fundingscheme?type=DST FIST&pgnm=DSTFIST.jsp">DST FIST</a></li>
						<li><a href="Fundingscheme?type=RUSA&pgnm=RUSA.jsp">RUSA</a></li>
			          </ul>
			   </li>
	          
	           <li><a href="IncubationCenter.jsp">Incubation Center</a></li>
<!-- 	            <li><a href="ResearchUpladed?type=Funding Scheme" target="_blank">Funding scheme</a></li> -->
	             <li><a href="Consultancy.jsp">Consultancy</a></li>
	               <li><a href="#">Project
			            <span class="drop-icon">&#x25b8;</span>
			            <label title="Toggle Drop-down" class="drop-icon" for="Project">+</label>
			          </a>
			          <input type="checkbox" id="Project">
			          <ul class="sub-menu">
						<li><a href="ResearchProject.jsp?t=Major" target="_blank">Major</a></li>
						<li><a href="ResearchProject.jsp?t=Minor" target="_blank">Minor</a></li>
			          </ul>
			        </li>
	      <!--   <li><a href="ResearchUpladed?type=Research Infrastructure">Research Infrastructure</a></li> -->
	        <!-- <li><a href="ResearchPublication">Research publication</a></li> -->
	      
			
	       
	      </ul>
	    </li>
    <!-- <li><a href="IQAC.jsp">IQAC</a></li> -->
    <li><a href="AboutIQAC.jsp">IQAC</a></li>
    
<!--     <li><a href="#">IQAC -->
<!--         <span class="drop-icon">&#x25be;</span> -->
<!--         <label title="Toggle Drop-down" class="drop-icon" for="IQAC">+</label> -->
<!--       </a> -->
<!--       <input type="checkbox" id="IQAC"> -->
<!--       <ul class="sub-menu"> -->
<!--         <li><a href="#">IQAC Committee</a></li> -->
<!-- 		<li><a href="#">IQAC Minutes and Action Taken Repors</a></li> -->
<!-- 		<li><a href="#">AQAR Reports</a></li> -->
<!--       </ul> -->
<!--     </li> -->
    <li><a href="StudentDevelopment.jsp">Student Development</a></li>
    <li><a href="PublicGallery">Gallery</a></li>

    <li><a href="#">Feedback
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="Feedback">+</label>
      </a>
      <input type="checkbox" id="Feedback">
      <ul class="sub-menu">
        <li><a href="fstudentcollege">Student Feedback Teaching - Learning and Evaluation</a></li>
        <li><a href="fstudentteaching">Student Feedback About Teachers</a></li>
        <li><a href="fteachercollege">Student Feedback About College</a></li>
        <li><a href="femployeremployee">Employer Feedback About Student</a></li>
        <li><a href="fparentcollege">Parent Feedback About College</a></li>
        
        <li><a href="FeedbackAnalysisReport">Feedback Analysis Report</a></li>
		<li><a href="StudentSatisfactionSurveyReport">Student Satisfaction Survey Report</a></li>
		<li><a href="AluminiFeedback">Alumini Feedback</a></li>
        
<!--         <li><a href="studentfeedback">Student</a></li> -->
		
<!-- 		<li><a href="#">Alumini</a></li> -->
		
<!-- 		<li><a href="fteachercollege">Teacher</a></li> -->
		
      </ul>
    </li>
    
    
<!--     <li><a href="contact.jsp">Contact</a></li> -->




<!--     <li><a href="#">About Us
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="sm1">+</label>
      </a>
      <input type="checkbox" id="sm1">
      <ul class="sub-menu">
        <li><a href="#">Item 2.1</a></li>
        <li><a href="#">Item 2.2
            <span class="drop-icon">&#x25be;</span>
            <label title="Toggle Drop-down" class="drop-icon" for="sm2">+</label>
          </a>
          <input type="checkbox" id="sm2">
          <ul class="sub-menu">
            <li><a href="#">Item 2.2.1</a></li>
            <li><a href="#">Item 2.2.2</a></li>
            <li><a href="#">Item 2.2.3</a></li>
          </ul>
        </li>
        <li><a href="#">Item 3.4</a></li>
      </ul>
    </li> -->
<li><a href="Eresource" target="_blank">E-resource</a></li>

  </ul>
</nav>
</div>


			<div class="navbar-header">
<!-- 				Button for smallest screens -->
<!-- 				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> -->
			</div>

    <div class="navbar-collapse collapse" style="width: 100%;margin-right: 0px;margin-left: 0px;padding-left: 0px;padding-right: 0px; ">













	<!-- 	<ul id="nav">
  <li><a href="#">Main Item 1</a></li>
  <li><a href="#">Main Item 2</a>
    <ul>
      <li><a href="#">Sub Item</a></li>
      <li><a href="#">Sub Item</a></li>
      <li><a href="#">SUB SUB LIST &raquo;</a>
        <ul>
          <li><a href="#">Sub Sub Item 1</a>
          <li><a href="#">Sub Sub Item 2</a>
        </ul>
      </li>
    </ul>
  </li>
  <li><a href="#">Main Item 3</a></li>
</ul> -->






			<!-- <nav id="primary_nav_wrap">
				<ul>
				  <li class="current-menu-item"><a href="index.jsp">Home</a></li>
				  <li><a href="#">Menu 1</a>
				    <ul>
				      <li><a href="#">Sub Menu 1</a></li>
				      <li><a href="#">Sub Menu 2</a></li>
				      <li><a href="#">Sub Menu 3</a></li>
				      <li><a href="#">Sub Menu 4</a>
				        <ul>
				          <li><a href="#">Deep Menu 1</a>
				            <ul>
				              <li><a href="#">Sub Deep 1</a></li>
				              <li><a href="#">Sub Deep 2</a></li>
				              <li><a href="#">Sub Deep 3</a></li>
				                <li><a href="#">Sub Deep 4</a></li>
				            </ul>
				          </li>
				          <li><a href="#">Deep Menu 2</a></li>
				        </ul>
				      </li>
				      <li><a href="#">Sub Menu 5</a></li>
				    </ul>
				  </li>
				  <li><a href="#">Menu 2</a>
				    <ul>
				      <li><a href="#">Sub Menu 1</a></li>
				      <li><a href="#">Sub Menu 2</a></li>
				      <li><a href="#">Sub Menu 3</a></li>
				    </ul>
				  </li>
				  <li><a href="#">Menu 3</a>
				    <ul>
				      <li class="dir"><a href="#">Sub Menu 1</a></li>
				      <li class="dir"><a href="#">Sub Menu 2 THIS IS SO LONG IT MIGHT CAUSE AN ISSEUE BUT MAYBE NOT?</a>
				        <ul>
				          <li><a href="#">Category 1</a></li>
				          <li><a href="#">Category 2</a></li>
				          <li><a href="#">Category 3</a></li>
				          <li><a href="#">Category 4</a></li>
				          <li><a href="#">Category 5</a></li>
				        </ul>
				      </li>
				      <li><a href="#">Sub Menu 3</a></li>
				      <li><a href="#">Sub Menu 4</a></li>
				      <li><a href="#">Sub Menu 5</a></li>
				    </ul>
				  </li>
				  <li><a href="#">Menu 4</a></li>
				  <li><a href="#">Menu 5</a></li>
				  <li><a href="#">Menu 6</a></li>
				  <li><a href="#">Contact Us</a></li>
				</ul>
				</nav> -->



	<!-- 			<ul class="nav navbar-nav mainNav" style="width: 100%;background: #008080;">
					<li ><a href="index.jsp">Home</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">About Us <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href='#'>Management</a></li>
							<li><a href='#'>Mission &amp; Goals</a></li>
							<li><a href='#'>President's Message</a></li>
							<li><a href='#'>Vice - President's Message</a></li>
							<li><a href='#'>Secretary's Message</a></li>
							<li><a href='#'>Principal's Message</a></li>
							<li><a href='#'>About PDEA</a></li>
							<li><a href="#">About Institute</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Admission <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Admission Date</a></li>
							<li><a href="#">Eligibility Criteria</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Department <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Humanities - Arts</a></li>
							<li><a href="#">Commerce </a></li>
							<li><a href="#">Science &amp; Technology</a></li>
							<li><a href="#">Research Program</a></li>
							<li><a href="#">MBA</a></li>
							<li><a href="#">B.Voc</a></li>

						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Administration <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Office Bearers</a></li>
							<li><a href="#">HOD's List</a></li>
							<li><a href="#">CDC List</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Research <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="sidebar-right.html">Research Centre</a></li>
							<li><a href="#">Research Projects</a></li>
							<li><a href="#">Conferences</a></li>
							<li><a href="#">Publications</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">IQAC <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Publications</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Scholarship<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Publications</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Gallery <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Publications</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Feedback <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Publications</a></li>
						</ul>
					</li>

					<li><a href="contact.html">Contact</a></li>
				</ul> -->
			</div>