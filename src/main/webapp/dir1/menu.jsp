<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
 	padding:0.2em;
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
  padding: 0.3em 0.3em;
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


<div style="text-align: center;background-color: #fdd991;vertical-align: middle;">
<nav id="menu" style="display: inline-block;margin: 0px auto;">
  <label for="tm" id="toggle-menu">Navigation <span class="drop-icon">+</span></label>
  <input type="checkbox" id="tm">
  <ul class="main-menu clearfix">
    <li><a href="home.jsp"><i class="fa fa-home" aria-hidden="true"></i></a></li>
    <li><a href="#">Users Master
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="UsersMaster">+</label>
      </a>
      <input type="checkbox" id="UsersMaster">
      <ul class="sub-menu">
		<c:if test = "${right.user==true}"><li><a href='CreateDept'>Create Department</a></li></c:if>
		<c:if test = "${right.user==true}"><li><a href='CreateUser'>Create User</a></li></c:if>
		<c:if test = "${right.access==true}"><li><a href='AccesRights'>Access Rights</a></li></c:if>
		<c:if test = "${right.course==true}"><li><a href='ShortTermCourse'>Short Term Course</a></li></c:if>
		<c:if test = "${right.daily_Report==true}"><li><a href='feedbackmaster'>Feedback Setting</a></li></c:if>
		<c:if test = "${right.daily_Report==true}"><li><a href='AluminiFeedbackReport'>Alumini Feedback Report</a></li></c:if>
      </ul>
    </li>
    <li><a href="#">Admin
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="Admin">+</label>
      </a>
      <input type="checkbox" id="Admin">
      <ul class="sub-menu">
      	<li><a href="#">Employee
            <span class="drop-icon">&#x25b8;</span>
            <label title="Toggle Drop-down" class="drop-icon" for="Employee">+</label>
          </a>
          <input type="checkbox" id="Employee">
          <ul class="sub-menu">
            <c:if test = "${right.addemployee==true}"><li><a href="AddEmployee">Add Employee</a></li></c:if>
			<c:if test = "${right.searchemployee==true}"><li><a href="SearchEmp">Search Employee</a></li></c:if>
			<c:if test = "${right.updateemployee==true}"><li><a href="UpdateEmp">Update Employee</a></li></c:if>
			<c:if test = "${right.course==true}"><li><a href="OtherQualification">Other Qualification</a></li></c:if>
<%-- 			<c:if test = "${right.user==true}"><li><a href="EmiratesProfessors">Emirates Professors</a></li></c:if> --%>
			<c:if test = "${right.addemployee==true}"><li><a href="AddCollegeAdministrationStaff">Add College Administration Staff</a></li></c:if>
			
			
          </ul>
        </li>
      	<c:if test = "${right.welfare==true}">
	      	<li><a href="#">Student Development &amp; Welfare
	            <span class="drop-icon">&#x25b8;</span>
	            <label title="Toggle Drop-down" class="drop-icon" for="Welfare">+</label>
	          </a>
	          <input type="checkbox" id="Welfare">
	          <ul class="sub-menu">
	           <li><a href='SDDoc'>Student Development Documents</a></li>
	            <li><a href='WelfareDoc'>Related Documents</a></li>
		        <li><a href='WelfarePhoto'>Related Photos</a></li>
	          </ul>
	        </li>
        </c:if>
        <c:if test = "${right.news==true}"><li><a href='Notice'>Notice</a></li></c:if>
		<c:if test = "${right.news==true}"><li><a href='News'>News</a></li></c:if>
		<c:if test = "${right.event==true}"><li><a href='Events'>Events</a></li></c:if>
		<c:if test = "${right.academiccalender==true}"><li><a href='AcademicCalender'>Program OutComes</a></li></c:if>
      	<c:if test = "${right.result==true}"><li><a href='Results'>Results</a></li></c:if>
<%-- 		<c:if test = "${right.daily_Report==true}"><li><a href='feedbackmaster'>Feedback Setting</a></li></c:if> --%>
		<c:if test = "${right.exam==true}"><li><a href='ExamCircular'>Exam Circular</a></li></c:if>
		
      </ul>
    </li>
        <li><a href="#">Gallery
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="Gallery">+</label>
      </a>
      <input type="checkbox" id="Gallery">
      <ul class="sub-menu">
      	<c:if test = "${right.gallery==true}">
	      	<li><a href="#">Gallery
	            <span class="drop-icon">&#x25b8;</span>
	            <label title="Toggle Drop-down" class="drop-icon" for="Gallery2">+</label>
	          </a>
	          <input type="checkbox" id="Gallery2">
	          <ul class="sub-menu">
	            <li><a href="GalleryMaster">Gallery Master</a></li>
   				<li><a href="SubGallery">Sub Gallery Master</a></li>
   				<li><a href="GalleryImg">Add Images</a></li>
	          </ul>
	        </li>
        </c:if>
<%--         <c:if test = "${right.news==true}"><li><a href='Notice'>Notice</a></li></c:if> --%>
<%-- 		<c:if test = "${right.news==true}"><li><a href='News'>News</a></li></c:if> --%>
<%-- 		<c:if test = "${right.event==true}"><li><a href='Events'>Events</a></li></c:if> --%>
<%-- 		<c:if test = "${right.academiccalender==true}"><li><a href='AcademicCalender'>Academic Calender</a></li></c:if> --%>
<%--       	<c:if test = "${right.result==true}"><li><a href='Results'>Results</a></li></c:if> --%>
      </ul>
    </li>
    <li><a href="#">More Entries
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="MoreEntries">+</label>
      </a>
      <input type="checkbox" id="MoreEntries">
      <ul class="sub-menu">
	    <c:if test = "${right.aluminiregistration==true}"><li><a href="AlumniStudentList">Alumini Students</a></li></c:if>
		<c:if test = "${right.qpaper==true}"><li><a href='OldQPaper'>Old Question papers</a></li></c:if>
		<c:if test = "${right.eligibilityno==true}"><li><a href="EligibilityNO">Upload Eligibility Numbers</a></li></c:if>
		<c:if test = "${right.qpaper==true}"><li><a href='CyberSecurity'>Cyber Security</a></li></c:if>
		<c:if test = "${right.academiccalender==true}"><li><a href='AcademicCommitteeController'>Academic Committee</a></li></c:if>
		<c:if test = "${right.academiccalender==true}"><li><a href='AcedemicCalenderController'>Academic Calendar</a></li></c:if>
		<c:if test = "${right.academiccalender==true}"><li><a href='ProspectusController'>Upload Prospectus</a></li></c:if>
	<%-- 	<c:if test = "${right.research==true}"><li><a href="ResearchProject">Research Project</a></li></c:if> --%>

      </ul>
    </li>
    <li><a href="#">IQAC
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="IQAC">+</label>
      </a>
      <input type="checkbox" id="IQAC">
      <ul class="sub-menu">
		<%-- <c:if test = "${right.UGC_CPE==true}"><li><a href='UGC_CPE'>NAAC SSR Document</a></li></c:if> --%>
		 <c:if test = "${right.DBT_STAR==true}"><li><a href='DBT_STAR'>IQAC Notices</a></li></c:if>
		<%--<c:if test = "${right.DST_FIST==true}"><li><a href='DST_FIST'>DST-FIST</a></li></c:if>
		<c:if test = "${right.UGC_BSR==true}"><li><a href='UGC_BSR'>UGC-BSR</a></li></c:if>
		<c:if test = "${right.UGC_Community_College==true}"><li><a href='UGC_Community_College'>UGC Community College</a></li></c:if> --%>
		<c:if test = "${right.UGC_CPE==true}"><li><a href='IqacOther'>Other</a></li></c:if>
		<c:if test = "${right.AQAR_Reports==true}"><li><a href='Aqar'>AQAR</a></li></c:if>
		<c:if test = "${right.AQAR_Reports==true}"><li><a href='CreateNIRFMaster'>Create NIRF Master</a></li></c:if>
		<c:if test = "${right.AQAR_Reports==true}"><li><a href='AddNIRFReport'>Add NIRF Report</a></li></c:if>
		<c:if test = "${right.AQAR_Reports==true}"><li><a href='IQMATRController'>IQAC Minutes and Action Taken Reports</a></li></c:if>
		<c:if test = "${right.AQAR_Reports==true}"><li><a href='IQACCommitteeController'>IQAC committee</a></li></c:if>
      </ul>
    </li>
    
          <li><a href="#">NAAC
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="Gallery">+</label>
      </a>
      <input type="checkbox" id="Gallery">
      <ul class="sub-menu">
      	<c:if test = "${right.hd==true}">
	      	<li><a href="#">NAAC SSR Document
	            <span class="drop-icon">&#x25b8;</span>
	            <label title="Toggle Drop-down" class="drop-icon" for="Gallery2">+</label>
	          </a>
	          <input type="checkbox" id="Gallery2">
	          <ul class="sub-menu">
	            <li><a href="NaacSsrMaster">Document Master</a></li>
   				<!-- <li><a href="SubGallery">Document Sub Master</a></li> -->
   				<li><a href="NaacSsrDeocument">Add Document</a></li>
	          </ul>
	        </li>
        </c:if>
<%--         <c:if test = "${right.news==true}"><li><a href='Notice'>Notice</a></li></c:if> --%>
<%-- 		<c:if test = "${right.news==true}"><li><a href='News'>News</a></li></c:if> --%>
<%-- 		<c:if test = "${right.event==true}"><li><a href='Events'>Events</a></li></c:if> --%>
<%-- 		<c:if test = "${right.academiccalender==true}"><li><a href='AcademicCalender'>Academic Calender</a></li></c:if> --%>
<%--       	<c:if test = "${right.result==true}"><li><a href='Results'>Results</a></li></c:if> --%>
      </ul>
    </li>
    
     <li><a href="#">Department
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="MoreEntries">+</label>
      </a>
      <input type="checkbox" id="MoreEntries">
      <ul class="sub-menu">
	    <c:if test = "${right.UGC_BSR==true}"><li><a href="DeptAboutController">About Department Image</a></li></c:if>
	    <c:if test = "${right.UGC_BSR==true}"><li><a href="DepartmentDetl">About Department Details</a></li></c:if>
	    <c:if test = "${right.UGC_BSR==true}"><li><a href="ResearchImage">Department Research Images</a></li></c:if>
	    <c:if test = "${right.UGC_BSR==true}"><li><a href="ResearchDetails">Department Research Details</a></li></c:if>
		<c:if test = "${right.UGC_BSR==true}"><li><a href="ResearchPubDetails">Department Research Publication Details</a></li></c:if>
	    
		<%-- <c:if test = "${right.UGC_BSR==true}"><li><a href="deptstaffachiv">Staff Achievement</a></li></c:if> --%>
		<%-- <c:if test = "${right.UGC_BSR==true}"><li><a href="deptreserch">Research</a></li></c:if>
		<c:if test = "${right.UGC_BSR==true}"><li><a href="deptreserchpublication">Research Publication</a></li></c:if> --%>
        <c:if test = "${right.UGC_BSR==true}"><li><a href="DepCourseStruct">Course Structure</a></li></c:if>
		<c:if test = "${right.UGC_BSR==true}"><li><a href="deptResult">Results</a></li></c:if>
		<c:if test = "${right.UGC_BSR==true}"><li><a href="deptPlacement">Placement</a></li></c:if>

      </ul>
    </li>
      <li><a href="#">DBT Star
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="MoreEntries">+</label>
      </a>
      <input type="checkbox" id="MoreEntries">
      <ul class="sub-menu">
		<%-- <c:if test = "${right.DBT_STAR==true}"><li><a href="#">Annual reports</a></li></c:if>
	    <c:if test = "${right.DBT_STAR==true}"><li><a href="#">Advisory committee meeting minutes</a></li></c:if> --%>
		<c:if test = "${right.DBT_STAR==true}"><li><a href="DBTStarCollegeNotices">Notices</a></li></c:if>
<%--         <c:if test = "${right.DBT_STAR==true}"><li><a href="DBTStarCollegeActivities">Activities</a></li></c:if> --%>
		<c:if test = "${right.DBT_STAR==true}">
		      <li><a href="#">Photo Gallery
	            <span class="drop-icon">&#x25b8;</span>
	            <label title="Toggle Drop-down" class="drop-icon" for="Gallery2">+</label>
	          </a>
	          <input type="checkbox" id="Gallery2">
	          <ul class="sub-menu">
	            <li><a href="DBTStarPhotoCaption">Photo Caption</a></li>
   				<!-- <li><a href="SubGallery">Document Sub Master</a></li> -->
   				<li><a href="#">Add Photos</a></li>
	          </ul>
	        </li>
		    
        </c:if>
		
      </ul>
    </li>
     
    <li><a href="#">PDF Uploading
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="MoreEntries">+</label>
      </a>
      <input type="checkbox" id="MoreEntries">
      <ul class="sub-menu">
	    <c:if test = "${right.UGC_Community_College==true}"><li><a href="PolicyProcedure">Policy And Procedure</a></li></c:if>
	    <c:if test = "${right.UGC_Community_College==true}"><li><a href="AddAdmission">Admission</a></li></c:if>
		<c:if test = "${right.UGC_Community_College==true}"><li><a href="InfraPic">Infra & Facility</a></li></c:if>
		
	    <c:if test = "${right.research==true}"><li><a href="ResearchProject">Research Project</a></li></c:if>
	    <c:if test = "${right.research==true}"><li><a href="ResearchUpload">Research / Funding Scheme Uploading</a></li></c:if>
		<c:if test = "${right.user==true}"><li><a href="EresourceUpload">E-Resource Uploading</a></li></c:if>
		<c:if test = "${right.daily_Report==true}"><li><a href='FeedBackReport'>Feedback Analysis Report</a></li></c:if>
		<c:if test = "${right.daily_Report==true}"><li><a href='StudentSatisfactionSurvey'>Student Satisfaction Survey</a></li></c:if>
	

      </ul>
    </li>
    
    <li><a href="#">Event & Photos
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="MoreEntries">+</label>
      </a>
      <input type="checkbox" id="MoreEntries">
      <ul class="sub-menu">
	    <c:if test = "${right.UGC_BSR==true}"><li><a href="DeptEvent">Gallery Master</a></li></c:if>
		<%-- <c:if test = "${right.gallery==true}"><li><a href="deptstaffachiv">Sub Gallery Master</a></li></c:if> --%>
		<c:if test = "${right.UGC_BSR==true}"><li><a href="DeptEventPics">Add Images</a></li></c:if>
		 
       
		
      </ul>
    </li>
      <li><a href="#">Examination
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="IQAC">+</label>
      </a>
      <input type="checkbox" id="IQAC">
      <ul class="sub-menu">
       <c:if test = "${right.exam==true}"><li><a href='ExaminationDetalis'>Examination Committee  </a></li></c:if>
       <c:if test = "${right.exam==true}"><li><a href='ExaminationSubTabController?tabnm=TimeTable'>Examination Time Table  </a></li></c:if>
       <c:if test = "${right.exam==true}"><li><a href='ExaminationSubTabController?tabnm=AcademicCalender'>Examination Academic Calender</a></li></c:if>
       <c:if test = "${right.exam==true}"><li><a href='ExaminationSubTabController?tabnm=Notices'>Examination Notices </a></li></c:if>
       <c:if test = "${right.exam==true}"><li><a href='ExaminationSubTabController?tabnm=ResultSummary'>Result Summary </a></li></c:if>
       <c:if test = "${right.exam==true}"><li><a href='ExaminationSubTabController?tabnm=AnnualResultReport'>Annual Result Report  </a></li></c:if>
       <c:if test = "${right.exam==true}"><li><a href='CoursesOfferedDetails'>Courses Offered   </a></li></c:if>
       <c:if test = "${right.exam==true}"><li><a href='AddTimeTable'>Time Table </a></li></c:if>
      </ul>
    </li>
      <li><a href="#">Research
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="IQAC">+</label>
      </a>
      <input type="checkbox" id="IQAC">
      <ul class="sub-menu">
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterDetailsController'>Research Center Details  </a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterCommitteeController'>Research Committee</a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterAreasController'>Research Areas</a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterCouWorkController'>Course work </a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterPlagiarismController'>Research Plagiarism </a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterRecogGuidesController'>Recognized Guides  </a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterCitationIndexController'>Citation Index</a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterScholarsController'>Research Scholars </a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterFacilitiesController'>Research Facilities </a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterProjectController'>Research Project </a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterPublicationsController'>Research Publications </a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterAwardsController'>Research Awards </a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterActivitiesController'>Research Activities </a></li></c:if>
       <c:if test = "${right.research==true}"><li><a href='ResearchCenterCollinkController'>Collaboration and linkages  </a></li></c:if>
      </ul>
    </li>
  <li><a href="#">Activity
        <span class="drop-icon">&#x25be;</span>
        <label title="Toggle Drop-down" class="drop-icon" for="IQAC">+</label>
      </a>
      <input type="checkbox" id="IQAC">
      <ul class="sub-menu">
       <c:if test = "${right.gallery==true}"><li><a href='Add_CommitteeController'>Add Committee</a></li></c:if>
       <c:if test = "${right.gallery==true}"><li><a href='Add_CommitteeEventController'>Add Event</a></li></c:if>
       <c:if test = "${right.gallery==true}"><li><a href='Add_CommitteeEventReportController'>Add Report </a></li></c:if>
       <c:if test = "${right.gallery==true}"><li><a href='Add_CommitteeEventPhotosController'>Add Photos </a></li></c:if>
      </ul>
    </li>
  </ul>

</nav>
</div>
