<!--
Author: WebThemez
Author URL: http://webthemez.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
		<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="Baburaoji Gholap College , Sangvi ,Pune" />
	<meta name="description" content="Baburaoji Gholap College , Sangvi ,Pune">
	<meta name="author" content="Baburaoji Gholap College , Sangvi ,Pune">
	<jsp:include page="title.jsp"></jsp:include>
	<link rel="favicon" href="assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="assets/css/style.css">
    <link rel='stylesheet' id='camera-css'  href='assets/css/camera.css' type='text/css' media='all'>
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->

	<link rel='stylesheet' id='camera-css'  href='style/style.css' type='text/css' media='all'>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
				$("#slideshow > div:gt(0)").hide();
				
				setInterval(function() {
				  $('#slideshow > div:first')
				    .fadeOut(1000)
				    .next()
				    .fadeIn(1000)
				    .end()
				    .appendTo('#slideshow');
				}, 3000);
				</script>
				
				<style>
				#slideshow {
				  margin: 80px auto;
				  position: relative;
				  width: 500px;
				  height: 400px;
				  padding: 10px;
				  box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
				}
				
				#slideshow > div {
				  position: absolute;
				  top: 10px;
				  left: 10px;
				  right: 10px;
				  bottom: 10px;
				}
				 .e:hover{
			   background-color:#ffecb4; 
			   width: 100%;
			   height: 200px;
			}
			
			.quadrat {

					 -webkit-animation: NAME-YOUR-ANIMATION 1s infinite; /* Safari 4+ */
					  -moz-animation:    NAME-YOUR-ANIMATION 1s infinite; /* Fx 5+ */
					  -o-animation:      NAME-YOUR-ANIMATION 1s infinite; /* Opera 12+ */
					  animation:         NAME-YOUR-ANIMATION 1s infinite; /* IE 10+, Fx 29+ */
					}
					
					@-webkit-keyframes NAME-YOUR-ANIMATION {
					0%, 49% {
					    color: 	red;
					    
					}
					50%, 100% {
					    color: #8e9bf5;
					   
					}
					}
				</style>

</head>
<body>

	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse" style="padding-top:0px">
		<div class="container" style="width: 100%;margin: 0px;padding-left: 0px;padding-right: 0px;">

			<jsp:include page="header.jsp"></jsp:include>
			<jsp:include page="menu.jsp"></jsp:include>

			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<br/>
  <div class="container" style="padding: 10px 10px 60px">

<style>
/* Style the tab */
.tab {
    float: left;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
    width: 25%;
    height: 500px;
}

/* Style the buttons inside the tab */
.tab button {
    display: block;
    background-color: inherit;
    color: black;
    padding: 10px;//22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 1.1em;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
    color:#000;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #3a4980;//#ccc;
    color:white;
}

/* Style the tab content */
.tabcontent {
    float: left;
    padding: 0px 12px;
    border: 1px solid #ccc;
    width: 75%;
    border-left: none;
    height: 500px;
}
</style>

<center><h1 style="color:#43577B;font-weight:bold; font-family:sans-serif;font-size:22px; padding:5px;border:0px solid brown;">Library</h1></center>
<div class="tab" style="height:800px;font-family: sans-serif; ">
  <button class="tablinks" onclick="openCity(event, 'About')" id="defaultOpen" > About</button>
  <button class="tablinks" onclick="openCity(event, 'Library Committee')" >Library Committee </button>
  <button class="tablinks" onclick="openCity(event, 'Staff')">Library Staff</button>
  <button class="tablinks" onclick="openCity(event, 'Library Collection')">Library Collection</button>
  <button class="tablinks" onclick="openCity(event, 'Journals / Periodicals Collection')">Non Book Material Collection</button>
  <button class="tablinks" onclick="openCity(event, 'News Paper List')">News Paper List</button>
   <button class="tablinks" onclick="openCity(event, 'Journals / Periodicals')"> Journals / Periodicals</button>
   <button class="tablinks" onclick="openCity(event, 'Library Services')">Library Services & Facilities</button>
    <button class="tablinks" onclick="openCity(event, 'Best practices')">Best practices</button>
     <button class="tablinks" onclick="openCity(event, 'Library Membership')">Library Membership</button>
      <button class="tablinks" onclick="openCity(event, 'Library Rules')">Library Rules</button>
       <button class="tablinks" onclick="openCity(event, ' Photo Gallery ')"> Photo Gallery </button>
       <button class="tablinks" onclick="openCity(event, 'ContactInformation')"> Contact Information </button>
       <a href="https://sites.google.com/site/bgclibrary27/" target="_blank"><button class="tablinks" >Library Portal </button></a>
</div>

<div id="About" class="tabcontent" style="height: 800px;">
      <h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
	    <b>About the Library </b>
	  </h3>
	  <hr style="border-bottom: 1px solid black;">
		<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;font-weight: bold;">
		Library is the heart of the College and it is a place for: "Provide Right Information at the Right Time, in the Right Place, in the Right Way to the Right Person".
		</p>
		<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;font-weight: bold;">
		The Baburaoji Gholap College Knowledge Resource Center (Library) has started its service in the year 1989. From the same year all the students have been given open access to books so that they can see, read and then issue the books for home reading. Students can also issue separate books & magazines for reading in the reading hall as a "Reference Service". More than 100 students can sit in the study hall and all library functions have been partially automated with "ERP" Library Management Software. Journals and Magazines are purchased for library users and library is having membership of Jaykar library, Savitribai Phule Pune University to meet users need. The college registered under N-LIST Program for e-resources having 31, 35, 000 e-books and 6000 e-journals.
		</p>
     <br>
       <a href="http://www.pdea-admission.org/opaclogin.jsp" target="_blank" style="color: red; margin-left: 10px;font-size: 15px; font-weight: bold;" class="quadrat">&#9755;  WEB OPAC SYSTEM ....</a>

</div>

<div id="Library Committee" class="tabcontent" style="height: 800px;">
 <h3  style="color: #442056; margin-left: 7px;font-size: 18px; font-weight: bold; font-family: sans-serif;">Library Committee</h3>
  <br>
      <table style="width: 100%;font-family: sans-serif;">
             <tr>
             <th width="20%;">Sr.No</th>
             <th width="50%;">Name</th>
             <th width="30%;">Member</th>
             </tr>
             <tr ><td>1</td><td style="text-align: left; padding-left: 20px;">Principal Dr. N. L. Ghorpade</td><td>Chairman</td></tr>
             <tr><td>2</td><td style="text-align: left; padding-left: 20px;">Lt. V. A. NAikwadi</td><td>Member Secretary </td></tr>
             <tr><td>3</td><td style="text-align: left; padding-left: 20px;">Mrs. A. P. Jadhav</td><td>	Member Co-ordinator</td></tr>
             <tr><td>4  </td><td style="text-align: left; padding-left: 20px;">Mr. B. U. Kangude   </td><td>Member </td></tr>
              <tr><td>5  </td><td style="text-align: left; padding-left: 20px;">Dr. V. M. Bansod </td><td>Member </td></tr>
               <tr><td>6  </td><td style="text-align: left; padding-left: 20px;">Dr. M. M. Mainkar</td><td>Member </td></tr>
                <tr><td>7  </td><td style="text-align: left; padding-left: 20px;">Dr. M. S. Misar </td><td>Member </td></tr>
                 <tr><td>8  </td><td style="text-align: left; padding-left: 20px;"> Dr. M. N. Shewale</td><td> Member</td></tr>
                  <tr><td>9  </td><td style="text-align: left; padding-left: 20px;">Mr. P. R. Yewale </td><td>Member </td></tr>
                   <tr><td>10  </td><td style="text-align: left; padding-left: 20px;">Ms. P. M. Bharambe </td><td>Member </td></tr>
                    <tr><td> 11 </td><td style="text-align: left; padding-left: 20px;">Mrs. M. L. Kumbhar</td><td>Member </td></tr>
                     <tr><td> 12 </td><td style="text-align: left; padding-left: 20px;">Mr. K. R. Kalamkar </td><td>Member </td></tr>


             
      </table>
</div>

<div id="Staff" class="tabcontent" style="height: 800px;" >
  <h3  style="color: #442056; margin-left: 7px;font-size: 18px; font-weight: bold;font-family: sans-serif;">Library Staff</h3>
  <br>
  <table style="width: 100%;font-family: sans-serif;">
             <tr>
             <th>Sr.No</th>
             <th>Name</th>
             <th>Designation</th>
             <th>Qualification</th>
             </tr>
             <tr><td>1 </td><td> Lt. V. A. Naikwadi </td><td>Librarian </td><td>B. Sc., M. Lib. & I .Sc., NET</td></tr>
             <tr><td>2</td><td>Mrs. M. L. Kumbhar </td><td>Library Clerk</td><td>M.Com, B.Ed</td></tr>
             <tr><td>3 </td><td>Mr. Y. N. Madane</td><td>Library Clerk</td><td>B.A, D.Ed</td></tr>
             <tr><td>4 </td><td>Mr. K.R. Kalamkar   </td><td>Library Attendant </td><td>B.A.</td></tr>
             <tr><td>5 </td><td>Mr. S. L. Kumbhar </td><td>Library Attendant</td><td> B.A.</td></tr>
             <tr><td>6 </td><td>Mr. B.G. Gaikwad </td><td>Library Peon</td><td>10th </td></tr>
  </table>
</div>
<div id="Library Collection" class="tabcontent" style="height: 800px;">
  <h3  style="color: #442056; margin-left: 7px;font-size: 18px; font-weight: bold;font-family: sans-serif;">Library Collection</h3>
  <br>
  <table style="width: 100%;font-family: sans-serif;;">
             <tr>
             <th>Sr.No</th>
             <th>Faculty/Stream wise Books </th>
             <th>Total Book</th>
            
             </tr>
             <tr><td>1 </td><td>Under Graduate (UG) </td><td> 23572</td> </tr>
             <tr><td> 2</td><td>Post Graduate (PG)</td><td> 4080</td> </tr>
             <tr><td>3 </td><td>Computer Science (CS) </td><td>7136 </td> </tr>
             <tr><td>4 </td><td>Bachelor of Computer Application (BCA)</td><td>2580 </td> </tr>
             <tr><td>5 </td><td>University Grant Commission (UGC)</td><td>6768 </td> </tr>
             <tr><td>6 </td><td>BCUD</td><td>168 </td> </tr>
             <tr><td>7 </td><td>Multipurpose Institute (DBM & DCM) </td><td> 693</td> </tr>
             <tr><td>8 </td><td>Donated Books   </td><td>457 </td> </tr>
             <tr><td colspan="2">Total </td><td>45454 </td> </tr>
             
            
  </table>
</div>

<div id="Journals / Periodicals Collection" class="tabcontent" style="height: 800px;">
    <h3  style="color: #442056; margin-left: 7px;font-size: 18px; font-weight: bold;font-family: sans-serif;">Non Book Material Collection</h3>
  <br>
   <table style="width: 100%;font-family: sans-serif;">
             <tr>
             <th>Sr.No</th>
             <th>Non Book Material </th>
             <th>Total </th>
            
             </tr>
             <tr><td>1 </td><td>CD/DVD</td><td>350 </td> </tr>
             <tr><td>2 </td><td>Periodicals (Journals & Magazines) </td><td>37 </td> </tr>
             <tr><td>3 </td><td>Newspapers</td><td>16 </td> </tr>
             <tr><td>4 </td><td>Dissertations/Thesis</td><td>09 </td> </tr>
   </table>
   <br>
    <h3  style="color: #442056; margin-left: 7px;font-size: 18px; font-weight: bold;font-family: sans-serif;">Membership</h3>
  <br>
   <table style="width: 100%;font-family: sans-serif;">
             <tr>
             <th>Sr.No</th>
             <th>Organization/Institute</th>
            
             </tr>
             <tr><td>1 </td><td>Jayakar Library, SPPU, Pune</td> </tr>
             <tr><td>2 </td><td>N-LIST, Inflibnet,  </td></tr>
   </table>
</div>





<div id="News Paper List" class="tabcontent" style="height: 800px;">
   <h3  style="color: #442056; margin-left: 7px;font-size: 18px; font-weight: bold;font-family: sans-serif;">News Paper List</h3>
  <br>
  <br>
   <table style="width: 100%;font-family: sans-serif;">
             <tr>
             <th>Sr.No</th>
             <th>Name </th>
            
             </tr>
             <tr><td>1</td><td style="text-align: left; padding-left: 20px;">Sakal</td></tr>
             <tr><td>2</td><td style="text-align: left; padding-left: 20px;">Loksatta</td></tr>
             <tr><td>3</td><td style="text-align: left; padding-left: 20px;">Lokmat</td></tr>
             <tr><td>4</td><td style="text-align: left; padding-left: 20px;">Maharashtra Times</td></tr>
             <tr><td>5</td><td style="text-align: left; padding-left: 20px;">Navbharat Times</td></tr>
             <tr><td>6</td><td style="text-align: left; padding-left: 20px;">Prabhat</td></tr>
             <tr><td>7</td><td style="text-align: left; padding-left: 20px;">Pudhari</td></tr>
             <tr><td>8</td><td style="text-align: left; padding-left: 20px;">Kesari</td></tr>
             <tr><td>9</td><td style="text-align: left; padding-left: 20px;">Punyanagari</td></tr>
             <tr><td>10</td><td style="text-align: left; padding-left: 20px;">Samana</td></tr>
             <tr><td>11</td><td style="text-align: left; padding-left: 20px;">Times of India</td></tr>
             <tr><td>12</td><td style="text-align: left; padding-left: 20px;">The Hindu</td></tr>
             <tr><td>13</td><td style="text-align: left; padding-left: 20px;">Indian Express</td></tr>
             <tr><td>14</td><td style="text-align: left; padding-left: 20px;">Economic Times</td></tr>
             <tr><td>15</td><td style="text-align: left; padding-left: 20px;">Pune Mirror</td></tr>
             <tr><td>16</td><td style="text-align: left; padding-left: 20px;">Employment News </td></tr>
             
            
   </table>
</div>

<div id="Journals / Periodicals" class="tabcontent" style="height: 800px; ">
    <h3  style="color: #442056; margin-left: 7px;font-size: 18px; font-weight: bold;font-family: sans-serif;">Journals / Periodicals </h3>
  <br>
  <div style="overflow: scroll;height: 600px;">
  <table style="width: 100%;font-family: sans-serif;">
             <tr>
             <th>Sr.No</th>
             <th>Name of Journal & Periodical </th>
             </tr>
             <tr>
               <td colspan="2"><b>Science Faculty Journals</b></td>
             </tr>
         <tr> <td>1</td><td style="text-align: left; padding-left: 20px;">Current Science</td></tr>
         <tr><td>2</td><td style="text-align: left; padding-left: 20px;">Resonance - Journal of Science Education</td></tr>
         <tr><td>3</td><td style="text-align: left; padding-left: 20px;">Bulletin of Material Science</td></tr>
         <tr><td>4</td><td style="text-align: left; padding-left: 20px;">Journal of Astrophysics & Astronomy</td></tr>
         <tr><td>5</td><td style="text-align: left; padding-left: 20px;">Pramana - Journal of Physics</td></tr>
         <tr><td>6</td><td style="text-align: left; padding-left: 20px;">Journal Of Chemical Science</td></tr>
         <tr><td>7</td><td style="text-align: left; padding-left: 20px;">Proceedings (Journal of Mathematical Sciences)</td></tr>
         <tr><td>8</td><td style="text-align: left; padding-left: 20px;">Science Reporter ( English )</td></tr>
         <tr><td>9</td><td style="text-align: left; padding-left: 20px;">Journal of Biosciences</td></tr>
         <tr><td>10</td><td style="text-align: left; padding-left: 20px;">Nelumba:The bulletin of the botanical survey of India</td></tr>
         <tr><td>11</td><td style="text-align: left; padding-left: 20px;">Down to Earth</td></tr>
         <tr><td>12</td><td style="text-align: left; padding-left: 20px;">Journal Of Environmental Biology</td></tr>
         <tr><td>13</td><td style="text-align: left; padding-left: 20px;">Bionano Frontier</td></tr>
         <tr>
            <td colspan="2">Economic/Commerce Journals</td>
         </tr>
         <tr><td>14</td><td style="text-align: left; padding-left: 20px;">Chartered Acountant</td></tr>
         <tr><td>15</td><td style="text-align: left; padding-left: 20px;">Journal Of Accounting & Finance</td></tr>
         <tr><td>16</td><td style="text-align: left; padding-left: 20px;">Arthshastra : Indian Journal Of Ecomics& Research</td></tr>
         <tr><td>17</td><td style="text-align: left; padding-left: 20px;">The IUP Journal of Applied Economics</td></tr>
         <tr><td>18</td><td style="text-align: left; padding-left: 20px;">The IUP Journal Of Applied Finance</td></tr>
         <tr>
          <td colspan="2">Computer Science /Electronics Journals</td>
         </tr>
         
         <tr><td>19</td><td style="text-align: left; padding-left: 20px;">International journal of Information System </td></tr>
         <tr><td>20</td><td style="text-align: left; padding-left: 20px;">Electronics For You</td></tr>
         <tr><td>21</td><td style="text-align: left; padding-left: 20px;">Indian Journal of Electronic Circuits, Devices and Systems </td></tr>
         <tr><td>22</td><td style="text-align: left; padding-left: 20px;">Open Source For You	</td></tr>
         <tr>
             <td colspan="2">Arts Faculty Journals</td>
         </tr>
         
         <tr><td>23</td><td style="text-align: left; padding-left: 20px;">Samaj Prabodhan Patrika</td></tr>
         <tr><td>24</td><td style="text-align: left; padding-left: 20px;">Parivartanacha vatsaru</td></tr>
         <tr><td>25</td><td style="text-align: left; padding-left: 20px;">Cenacle</td></tr>
         <tr><td>26</td><td style="text-align: left; padding-left: 20px;">Contemporary Discourse</td></tr>
         <tr><td>27</td><td style="text-align: left; padding-left: 20px;">Reader's Digest</td></tr>
         <tr>
          <td colspan="2">Magazines</td>
         </tr>
         
         <tr><td>28</td><td style="text-align: left; padding-left: 20px;">Harper's Bazaar</td></tr>
         <tr><td>29</td><td style="text-align: left; padding-left: 20px;">Spardha Pariksha (Marathi)</td></tr>
         <tr><td>30 </td><td style="text-align: left; padding-left: 20px;">Lokrajya</td></tr>
         <tr><td>31</td><td style="text-align: left; padding-left: 20px;">Chanakya Madal Parivar</td></tr>
         <tr><td>32</td><td style="text-align: left; padding-left: 20px;">Sportstar</td></tr>
         <tr><td>33</td><td style="text-align: left; padding-left: 20px;">University News</td></tr>
         <tr><td>34</td><td style="text-align: left; padding-left: 20px;">Sahitya Suchi</td></tr>
         <tr><td>35</td><td style="text-align: left; padding-left: 20px;">Lalit</td></tr>
         <tr><td>36</td><td style="text-align: left; padding-left: 20px;">Electronic Granthalaya</td></tr>
         <tr><td>37</td><td style="text-align: left; padding-left: 20px;">Vanrai</td></tr>
          
   </table>
  </div>
  
   
</div>
<!-- <div id="Important Links" class="tabcontent"> -->
<!--    <h3  style="color: #442056; margin-left: 7px;font-size: 18px; font-weight: bold;font-family: sans-serif;">Important Links</h3> -->
<!--   <br> -->
<!--    <ul style="list-style-type:none;  margin-left: 15px;font-family: sans-serif;padding: 10px;"> -->
<!--         <li><a href="http://www.pdea-admission.org/" target="_blank">&#9755; PDEA ERP Software</a></li> -->
<!--         <li><a href="http://www.unipune.ac.in/university_files/syllabi.htm" target="_blank">&#9755; SPPU-Syllabus</a></li> -->
<!--         <li><a href="http://exam.unipune.ac.in/pages/previousquestionpapers.html" target="_blank">&#9755; SPPU-Question papers</a></li> -->
<!--         <li><a href="http://nlist.inflibnet.ac.in/" target="_blank">&#9755; INFLIBNET N-List</a></li> -->
<!--          <li><a href="http://shodhganga.inflibnet.ac.in/browse?/type=title" target="_blank">&#9755; Shodhganga</a></li> -->
<!--          <li><a href="https://ess.inflibnet.ac.in/" target="_blank">&#9755; Shodhsindhu</a></li> -->
<!--           <li><a href="https://ccetlibrary.wordpress.com/2017/01/23/new-delnet-discovery-portal/" target="_blank">&#9755; DELNET</a></li> -->
<!--             <li><a href=" http://www.csi-india.org/" target="_blank">&#9755; Computer Society of India</a></li> -->
<!--           <li><a href="http://www.unipune.ac.in/university_files/library.htm" target="_blank">&#9755; Jaykar Library</a></li> -->
<!--            <li><a href="https://www.britishcouncil.in/library" target="_blank">&#9755; British Library</a></li> -->
<!--             <li><a href="http://gipe.ac.in/library/" target="_blank">&#9755; Gokhale Institute Library</a></li> -->
<!--              <li><a href="http://www.ncl-india.org/files/Library/Default.aspx" target="_blank">&#9755; NCL Library</a></li> -->
<!--               <li><a href="https://www.nationallibrary.gov.in/" target="_blank">&#9755; National Library</a></li> -->
<!--               <li><a href="https://epgp.inflibnet.ac.in/" target="_blank">&#9755; e-pg pathshala</a></li> -->
<!--               <li><a href="https://doaj.org/" target="_blank">&#9755; Open Access Journals(DOAJ)</a></li> -->
<!--               <li><a href="https://ndl.iitkgp.ac.in/" target="_blank">&#9755;  National Digital Library</a></li> -->
<!--               <li><a href="https://www.rarebooksocietyofindia.org/" target="_blank">&#9755; Rare Book society of India</a></li> -->
<!--               <li><a href="https://en.wikipedia.org/wiki/Maharashtra_Sahitya_Parishad" target="_blank">&#9755; Maharashtra Sahitya Parishad</a></li> -->
<!--               <li><a href="http://www.rarebookroom.org/" target="_blank">&#9755; Rare Book Room</a></li> -->
             
<!--    </ul> -->
<!-- </div> -->

<div id="Library Services" class="tabcontent">
   <h3  style="color: #442056; margin-left: 7px;font-size: 18px; font-weight: bold;font-family: sans-serif;">Library Services & Facilities</h3>
  <br>
   <ol style="font-family: sans-serif;">
        
        <li>Library Web Portal </li>
        <li>Web OPAC </li>
        <li>Book Bank Scheme    </li>
        <li>Internet service </li>
        <li>Reference Services</li>
        <li>Newspaper stand </li>
        <li>Reading Hall</li>
        <li>Suggestion Box</li>
        <li>Home Lending of books</li>
        
   </ol>
</div>


<div id="Best practices" class="tabcontent">
   <h3  style="color: #442056; margin-left: 7px;font-size: 18px; font-weight: bold;font-family: sans-serif;">Best practices</h3>
  <br>
   <ol style="font-family: sans-serif;">
        
        <li>Book Exhibition</li>
        <li>Book Display</li>
        <li>Displaying new arrivals</li>
        <li>I card Generation </li>
        <li>Library Orientation Programme</li>
        <li>User Education /Information literacy programme  </li>
        <li>Newspaper clipping</li>
        <li>Career/ Employment information services</li>
        <li>Best reader award</li>
        <li>Open Access</li>
        
   </ol>
</div>
<div id="Library Membership" class="tabcontent">
   <h3  style="color: #442056; margin-left: 7px;font-size: 18px; font-weight: bold;font-family: sans-serif;">Library Membership</h3>
  <br>
  <b>Necessary Documents for Teachers & Students:-</b>
   <ol style="font-family: sans-serif;">
        
        
        <li>For Teachers: Appointment Order, Passport size Photo.</li>
        <li>For Students: Admission Receipt, Passport size Photo.</li>
   </ol>
</div>

<div id="Library Rules" class="tabcontent"  style="height: 700px;">
   <h3  style="color: #442056; margin-left: 7px;font-size: 20px; font-weight: bold;font-family: sans-serif;">Library Rules</h3>
 
     <h3  style="color: red; margin-left: 15px;font-size: 18px;font-family: sans-serif;">	Issue/Return</h3>
    
   <ol style="font-family: sans-serif;">
        
        <li>Books/Periodicals or any other library material can be issued only after showing a valid I-Card.</li>
        <li>Every Student entering the Library premises should have a valid college identity card. It should be produced as and when demanded.</li>
        <li>Identity card and Library card are non-transferable.</li>
        <li>Every student is expected to read and strictly follow the instructions given on the reverse side of the Library Card.</li>
        <li>Books will be issued for a period of 8 days only. </li>
        <li>Re-issue of the books will depend upon the demand for the same. </li>
        <li>If the Book is lost or damaged, the students must replace the book with new copy of   latest edition. </li>
        <li>Reference Books/Journals will be issued Under Graduate students in the library premises only and Reprography service will be made available, if necessary. </li>
        <li>Students must handle books, periodicals, etc. with great care, any attempt to damage books or Periodicals, by defacing or tearing the pages will treated as serious misconduct and strictly dealt with. </li>
        <li>If the Original identity card or Library card is lost a duplicate will be issued on payment of Rs.50/- each. </li>
   </ol>
    <h3  style="color: red; margin-left: 15px;font-size: 18px;font-family: sans-serif;">Reading Hall</h3>
    
   <ol style="font-family: sans-serif;">
        
        <li>A complete silence and strict discipline should be maintained in the library and Reading room.</li>
        <li>News papers and Magazine must be read only in the Library and should not be taken outside.</li>
        <li>Use of Mobile Phone in the Library is strictly prohibited.</li>
        <li>If any reference book is required in the reading hall, student should approach the librarian.</li>
        <li>All cases of disregard of these rules will be reported to the principal for appropriate action.</li>
   </ol>
     <h3  style="color: red; margin-left: 15px;font-size: 18px;font-family: sans-serif;">Research Support</h3>
    
   <ol style="font-family: sans-serif;">
        
        <li>Library provides research support for all researchers in the college by various ways like helping them in finding related study material from different resources.</li>
        <li>Library Portal: Library has created a portal of all open access scholarly databases including Shodhganga & Shodhgangotri, Digital Libraries available online for their patrons and researchers. Researchers can search their material for their resources by accessing portal.</li>      
        <li>Consortia: Subscribed UGC N-LIST consortia through which patrons can access paid e-books and e-journals. </li>
        <li>Book & Journals Facility: Library provides books and subscribed journals for all researchers on all working days and hours.</li>
        <li>Reference Service</li>
        <li>Established separate Digital Library for accessing e-resources.  </li>
        <li>Information Literacy Programme PG students & Researchers.</li>
   </ol>
</div>
<!-- <div id=" Library Timings " class="tabcontent"> -->
<!--    <h3  style="color: #442056; margin-left: 7px;font-size: 20px; font-weight: bold;font-family: sans-serif;">Library Timings</h3> -->
 
<!--     <br> -->
<!--    <ul style="list-style-type:circle; margin-left: 15px;font-family: sans-serif;"> -->
        
<!--         <li>Book Circulation -Monday to Saturday  -   8.00 am. To 6.00 pm.</li> -->
<!--         <li>Reading Room- Monday to Saturday -       8.00 am. To 6.00 pm.</li> -->
<!--         <li>Reading Room- Monday to Sunday -           7.30 am. To 8.00 pm.</li> -->
<!--         <li>(competitive Exam.).  </li> -->
<!--    </ul> -->
<!-- </div> -->
<!-- <div id="E-Resources" class="tabcontent"> -->
<!--    <h3  style="color: #442056; margin-left: 7px;font-size: 20px; font-weight: bold;font-family: sans-serif;">Library Facilities</h3> -->
 
<!--     <br> -->
<!--    <ul style="list-style-type:none; margin-left: 15px;font-family: sans-serif;"> -->
        
<!--         <li>&#9755; Book Bank Scheme </li> -->
<!--         <li>&#9755; Inter Library Loan</li> -->
<!--         <li>&#9755; News paper Clipping</li> -->
<!--         <li>&#9755; Digital Library( Library Repository) </li> -->
<!--         <li>&#9755; Home Lending </li> -->
<!--          <li>&#9755; Reprographic /Printing</li> -->
<!--           <li>&#9755; Reader Club </li> -->
<!--            <li>&#9755; Talent Club</li> -->
<!--             <li>&#9755; Dr. APJ Abdul Kalam vachan Katta</li> -->
<!--             <li>&#9755; Internet Facility</li> -->
<!--             <li>&#9755; Web OPAC Facility</li> -->
<!--             <li>&#9755; Competitive Exam Reading Room.(AC)</li> -->
<!--             <li>&#9755; College Magazine</li> -->
<!--             <li>&#9755; Display Article's,Research Paper & Advertisement of U.P.S.C/ M.P.S.C.Exam.on Notice Board</li> -->
<!--             <li>&#9755; Lecture Capturing System (LCS)</li> -->
<!--             <li>&#9755; Display New Arrival books</li> -->
  
<!--    </ul> -->
<!-- </div> -->
<div id=" Photo Gallery " class="tabcontent" style="height:600px;">
   <h3  style="color: #442056; margin-left: 7px;font-size: 20px; font-weight: bold;font-family: sans-serif;">Photo Gallery</h3>
 
    <br>
     
		             <div id="slideshow">
						  <div>
						       <img src="${s3pat}BGCLib/l1.png" ><br>
						    </div>
						     <div>
						        <img src="${s3pat}BGCLib/l2.png" >
						     </div>
						     <div>
						         <img src="${s3pat}BGCLib/l3.png" >
						     </div>
						     <div>
						          <img src="${s3pat}BGCLib/l4.png" >
						     </div>
						     <div>
						           <img src="${s3pat}BGCLib/l5.png" >
						        </div>
						        <div> 
						            <img src="${s3pat}BGCLib/l6.png" >
						          </div>
						          <div>  
						             <img src="${s3pat}BGCLib/l7.png" >
						            </div>
						            <div>  
						              <img src="${s3pat}BGCLib/l8.png" >
						             </div>
						             <div>  
						               <img src="${s3pat}BGCLib/l9.png" >
						             </div>
						             <div> 
						                <img src="${s3pat}BGCLib/l10.png" >
						              </div>
						              <div>   
						                 <img src="${s3pat}BGCLib/l11.png" >
						              </div>
						              <div>    
						                  <img src="${s3pat}BGCLib/l12.png" >
						                </div>
						
					</div>
	         
</div>

<div id="ContactInformation" class="tabcontent">
   <h3  style="color: #442056; margin-left: 7px;font-size: 20px; font-weight: bold;font-family: sans-serif;"> Contact Information</h3>
 
    <br>
                    <div class="container-fluid"> 
							
									  <div class="row">
									
									    <div class="col-sm-6" >
									         <div style="background-color:#eefffa;padding: 2px;font-family: sans-serif;" class="e">
									         
									           <table  class="e">
									            <tr ><td style="border: none;color: black;font-family:sans-serif;  font-size: 16px;text-align: left;  padding: 10px;"> <b>Lt. V. A. Naikwadi</b></td></tr>
									                 <tr><td  style="border: none;color: black;font-family:sans-serif; font-size: 13px;text-align: left; padding: 10px;"><b>Designation:-</b> B. Sc., M. Lib. & I .Sc., NET</td></tr>
									                  <tr ><td  style="border: none;color: black;font-family:sans-serif; font-size: 13px;text-align: left; padding: 10px;"><b>Contact No:-</b> 020-27280204 Ext.-231</td></tr>
<!-- 									                 <tr><td  style="border: none;color: black;font-family:sans-serif; font-size: 13px;text-align: left; padding: 10px;">Mobile No:- 9822506166</td></tr> -->
									                 <tr><td  style="border: none;color: black;font-family:sans-serif; font-size: 13px;text-align: left; padding: 10px;"><b>Email Id:-</b> bgclibrary27@gmail.com</td></tr>
									           </table>
									           
									          </div>
									     </div>
									   
									  
									  </div>
									</div>
</div>



<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>






  </div>


	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="assets/js/modernizr-latest.js"></script>
	<script type='text/javascript' src='assets/js/jquery.min.js'></script>
    <script type='text/javascript' src='assets/js/fancybox/jquery.fancybox.pack.js'></script>

    <script type='text/javascript' src='assets/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='assets/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='assets/js/camera.min.js'></script>
    <script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>


</body>
</html>
