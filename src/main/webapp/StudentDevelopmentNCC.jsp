
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

	<link rel="stylesheet" href="style/style.css">


	<link  rel="stylesheet" type="text/css" href="tab/css/demo.css" />
	<!-- Copy & paste -->
	<link rel="stylesheet" type="text/css" href="tab/css/animate.min.css " />
	<link rel="stylesheet" type="text/css" href="tab/css/easy-responsive-tabs.min.css " />
	<link rel="stylesheet" type="text/css" href="tab/css/tabs.css" />
	<!-- this is for choose your color -->
	<link rel="stylesheet" type="text/css" href="tab/css/colors/color_10.css" id="colors-style" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,300,500,700,900|Dosis:300,400,700|Oswald:300">
	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon/favicon.ico">


	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="assets/css/style.css">
    <link rel='stylesheet' id='camera-css'  href='assets/css/camera.css' type='text/css' media='all'>
	<link rel="stylesheet" href="css/color.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico"> 
	<link rel="stylesheet" href="css/mycss.css">
	
	
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
				</style>
	
</head>
<body>
	<!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<!--************************************
			Wrapper Start
	*************************************-->
	<div id="tg-wrapper" class="tg-wrapper">
		<!--************************************
				Header Start
		*************************************-->
		<jsp:include page="header.jsp"></jsp:include>
			<jsp:include page="menu.jsp"></jsp:include>

		<!--************************************
				Header End
		*************************************-->
	
		<!--************************************
				Main Start
		*************************************-->
		<main id="tg-main" class="tg-main tg-haslayout">
			<div class="container">
			<%-- <center><h1 style="padding:5px;border:0px solid brown; font-weight: bold;">Student Development</h1></center> --%>
				<div class="row" style="margin-top: 0%; height: 850px;">
					<div id="tg-twocolumns" class="tg-twocolumns">
						<div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
							<aside id="tg-sidebar" class="tg-sidebar">
								<div class="tg-widget tg-widgetaboutusnav">
									
									<div class="tg-widgetcontent" style="width:100% ;height: 500px;padding-top: 60px; ">
									<hr>
										<ul class="listul" >
											<a href="StudentDevelopment.jsp"><li class=" des" style="font-size: 13px;">Student's Grievance Redressal cell</li></a>
											<a href="StudentDevelopment?type=Anti Harassment&pgnm=StudentDevelopmentAntiRagging"><li class="des" style="font-size: 13px;">Anti Ragging</li></a>
											<a href="StudentDevelopment?type=ICASH&pgnm=StudentDevelopmentICASH"><li class="des" style="font-size: 13px;">I-CASH</li></a>
											<a href="StudentDevelopment?type=Scholarship&pgnm=StudentDevelopmentScholarship"><li class="des" style="font-size: 13px;">Scholarship</li></a>
											<a href="StudentDevelopment?type=Placement&pgnm=StudentDevelopmentPlacement"><li class="des" style="font-size: 13px;">Placement</li></a>
											<!-- <a href="StudentDevelopment?type=Mentor System&pgnm=StudentDevelopmentMentorSystem"><li class="des">Mentor System</li></a> -->
											<a href="StudentDevelopment?type=Mentor System&pgnm=StudentDevelopmentMentorSystem"><li class="des" style="font-size: 13px;">Mentor System</li></a>
											<a href="StudentDevelopment?type=Student Welfare&pgnm=StudentDevelopmentStudentWelfare"><li class="des" style="font-size: 13px;">Student Welfare</li></a>
											<a href="StudentDevelopment?type=Alumni Cell&pgnm=StudentDevelopmentAlumniCell"><li class="des" style="font-size: 13px;">Alumni Cell</li></a>
											<a href="StudentDevelopment?type=NSS&pgnm=StudentDevelopmentNSS"><li class="des" style="font-size: 13px;">NSS</li></a>
											<a href="StudentDevelopment?type=NCC&pgnm=StudentDevelopmentNCC"><li class="des active" style="font-size: 13px;">NCC</li></a>
											<a href="StudentDevelopment?type=Sports&pgnm=StudentDevelopmentSports"><li class="des" style="font-size: 13px;">Sports</li></a>
											<a href="StudentDevelopment?type=Cultural Activity&pgnm=StudentDevelopmentCulturalActivity"><li class="des" style="font-size: 13px;">Cultural Activity</li></a>
											<a href="SCSTWelfareCommittee.jsp"><li class="des" style="font-size: 13px;">Reservation Cell</li></a>
<!-- 											<a href="OBCWelfareCommittee.jsp"><li class="des" style="font-size: 13px;">OBC Welfare Committee</li></a> -->
<!-- 											<a href="InternalComplianceCommittees.jsp"><li class="des" style="font-size: 13px;">Internal Compliance Committee</li></a> -->
											<a href="StdvplRTI.jsp"><li class="des" style="font-size: 13px;">RTI</li></a>
										</ul>
									</div>
								</div>
							</aside>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
						<div class="table-responsive">
						<h2 class="title_contanier">National Cadet Corps</h2>
						  <div class="outer-div" style="width: 100%; height: 800px;; padding: 0px;overflow: scroll;">
						      <h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
						          <b>About NCC Unit</b>
						      </h3>
							  <hr style="border-bottom: 1px solid black;">
								<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
								Our College has received sanctioned letter of 54 (SD & SW) NCC cadets (One Platoon) of Army wing on 26 April 2016 from <b>2 Maharashtra Battalion NCC, Pune.</b> Parade has been started in the July 2016 at our college campus on every Friday of the week.
								</p>
								<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
								<b>Inauguration function of NCC Unit</b> was organized on 04 Oct. 2016 at Baburaoji Gholap College, Sangvi by the hands of <b>Colonel Anuj Chanan, Commanding Officer, 2 Maharashtra Battalion NCC, Pune.</b> In that function Major R. D. Chaudhari, ANO, College of Agriculture, Principal Dr. M. G. Chaskar, Vice Principal Dr. S. R. Chaudhari, Vice Principal Dr. V. V. Naik, Prof. V. Y. Gawade, Prof. L. K. Nikam, Prof. R. A. Pawar, NCC Officer Prof. V. A. Naikwadi and All the Teaching & Non teaching staff were present for the function. 
								</p>
								<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
						          <b>Faculty In charge</b>
						      </h3>
							  <hr style="border-bottom: 1px solid black;">
							  <p style="color:black ;font-family: sans-serif;font-size: 13px;margin-left: 20px;text-align: justify;padding-left: 20px;">
							   	  <b style="font-size: 15px;color: blue;">Lt. V. A. Naikwadi</b><br>
							   	   &#9755; Associate NCC Officer (ANO)<br>
							   	   &#9755; 2 MAH BN NCC PUNE<br>
							   	   &#9755; PDEA's Baburaoji Gholap College Sangvi, Pune<br>
							   	   &#9755; <b>Contact Number:-</b> 9921635557<br>
							   	   &#9755; <b>Mail Id:-</b> naikwadivitthal@gmail.com    ,   nccunit2016@gmail.com                          
							  </p>
							 <h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
						          <b>National Cadet Corps</b>
						      </h3>
							  <hr style="border-bottom: 1px solid black;">
								<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
								The National Cadet Corps is the Indian military cadet corps with its head Quarters at New Delhi. It is open to school and college students on voluntary basis. The National Cadet Corps in India is a voluntary organization which recruits cadets from high schools, colleges and Universities all over India. The Cadets are given basic military training in small arms and parades. The officers and cadets have no liability for active military service once they complete their course but are given preference over normal candidates during selections based on the achievements in the corps.
								</p>
								<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
						          <b>Motto of NCC</b>
						      </h3>
							  <hr style="border-bottom: 1px solid black;">
								<p style="color:red ;font-family: sans-serif;font-size: 20px;margin-left: 20px;text-align: center;font-weight: bold;">
								" Unity and Discipline "
								</p>
							  <h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
						          <b>Aims of NCC</b>
						      </h3>
							  <hr style="border-bottom: 1px solid black;">
						       <ol style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
			                            <li>To develop character, comradeship, discipline, leadership, secular outlook, spirit of adventure, sportsmanship and ideals of selfless service among the youth of the country. </li>
			                            <li>To create a human resource of organized, trained and motivated youth, to provide leadership in all walks of life and always be available for the service of the nation.</li>
			                            <li>To provide a suitable environment to motivate the youth to take up a career in the Armed Forces.</li>
						       </ol>
						        <h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
						          <b>DG's four Cardinal Principals of Discipline</b>
						      </h3>
							  <hr style="border-bottom: 1px solid black;">
						       <ol style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 25px;">
			                            <li>Obey with a smile </li>
			                            <li>Be Punctual</li>
			                            <li>Work hard and without fuss</li>
			                            <li>Make no excuses and tell no lies </li>
						       </ol>
							<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
						          <b>NCC Oath</b>
						      </h3>
							  <hr style="border-bottom: 1px solid black;">
								<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
								"I do hereby solemnly promise that I will serve my motherland most truly and loyally and that, I will abide by the rules and regulations of the National Cadet Crops. Further under the command and control of my commanding officer I will participate in every camp most sincerely and wholeheartedly".
								</p>
								<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
						          <b>NCC Pledge</b>
						      </h3>
							  <hr style="border-bottom: 1px solid black;">
								<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
								"We the cadet of the national cadet corps, do solemnly pledge that we shall always uphold the unity of India. We resolve to be disciplined and responsible citizen of our nation. We shall undertake positive community service in the spirit of selflessness and concern for our fellow beings 
								</p>
								<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
						          <b>NCC Flag</b>
						      </h3>
							  <hr style="border-bottom: 1px solid black;">
								<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
								NCC Flag Contains NCC Crest in gold in the middle, with the letters "NCC" encircled by a wreath of seventeen lotuses with a background in Red, Blue and Light blue. Red depicts the Army, Deep Blue depicts the Navy and Light Blue depicts the Air Force. The seventeen lotuses represent the 17 State Directorates. "Unity of Discipline"  is written at the bottom of the NCC Flag. 
								</p>
								<h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
						          <b>NCC Song</b>
						      </h3>
							  <hr style="border-bottom: 1px solid black;">
								<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: center;font-weight: bold;">
								" Hum Sab Bharatiya Hain , Hum Sab Bharatiya Hain<br>
								Apni Manzil Ek Hai , Ha Ha Ha Ek Hai , Ho Ho Ho Ek Hai,<br>
								Hum Sab Bharatiya Hain<br>
								Kashmir Ki Dharti Rani Hai , Sartaj Himalaya Hai<br>
								Sadiyon Se Hamne Isko Apne Khoon Se Pala Hai<br>
								Desh Ki Raksha Ki Khatir Hum Shamshir Utha Lenge<br>
								Hum Shamshir Utha Lenge<br>
								Bikhre Bikhre Tare Hain Hum Lekin Jhilmil Ek Hai<br>
								Ha Ha Ha Ha Ek Hai, Hum Sab Bharatiya Hain<br>
								Mandir Gurudware Bhi Hain Yahan , Aur Masjid Bhi Hai Yahan<br>
								Girija Ka Ghadiyal Kahin , Mulla Ki Kahin Hai Azan<br>
								Ek Hi Apna Ram Hai , Ek Hi Allah-Tala Hai<br>
								Ek Hi Allah-Tala Hai<br>
								Rang -Birange Deepak Hain , Lekin Mahfil Ek Hai<br>
								Ha Ha Ha Ek Hai , Ho Ho Ho Ek Hai<br>
								<br>
							    Hum Sab Bharatiya Hain , Hum Sab Bharatiya Hain !! "
								</p>
						       <h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
						          <b>NCC History</b>
						      </h3>
							  <hr style="border-bottom: 1px solid black;">
								<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
								The NCC in India was formed with the National Cadet Corps Act of 1948. It was raised on 15 July 1948 The National Cadet Corps can be considered as a successor of the University Officers Training Corps (UOTC) which was established by the British in 1942. During World War II, the UOTC never came up to the expectations set by the British. This led to the idea that some better schemes should be formed, which could train more young men in a better way, even during peace times. A committee headed by Pandit H.N. Kunzru recommended a cadet organization to be established in schools and colleges at a national level. The National Cadet Corps Act was accepted by the Governor General and on 15 July 1948 the National Cadet Corps came into existence.
								</p>
								<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
								During the 1965 and 1971 wars with Pakistan, NCC cadets were the second line of defence. They organised camps to assist the ordinance factories, supplying arms and ammunition to the front, and also were used as patrol parties to capture the enemy paratroopers. The NCC cadets also worked hand in hand with the Civil Defence authorities and actively took part in rescue work and traffic control. After the 1965 and 1971 Indo-Pak wars the NCC syllabus was revised. Rather than just being the second line of defence, NCC syllabus laid a greater stress on developing qualities of leadership and Officer-like qualities. The military training which the NCC cadets received was reduced and greater importance was given to other areas like social service and youth-management.
								</p>
							  <h3 style="color:#774980; font-weight: bold;font-family: sans-serif;font-size: 22px;">
						          <b>NCC Organisation</b>
						      </h3>
							  <hr style="border-bottom: 1px solid black;">
								<p style="color:black ;font-family: sans-serif;font-size: 15px;margin-left: 20px;text-align: justify;">
								The National Cadet Corps is headed by a Director General, an Army Officer of the rank of Lieutenant General, who is responsible for the functioning of the National Cadet Corps in the country through the National Cadet Corps Headquarters situated at Delhi. At the State Level, the country has been divided into 17 Directorates covering all States and Union Territories. Each of the State National Cadet Corps Directorate Headquarters controls two to fourteen Group Headquarters. While Directorates are commanded by Brigadiers or their equivalents, the Groups are commanded by Colonels or equivalents from the Air Force and the Navy, NCC Units are commanded by Major/Lieutenant Colonel or their equivalents.
								
								</p>
						       <br><br>
						       <%-- <table id="countrytable" class="Vscroll" style="height:600px; ">
									  			<thead>
									  				<tr>
									  				 <th>Sr.No.</th>
									  					<th>Title</th>
									  					<th>Document</th>
									  				</tr>
									  				
									  			</thead>
									  			
									  			<tbody>
									  			<c:forEach var="dtl" items="${cat}" varStatus="row">
									  			      <tr>
									  			            <td>${row.count}</td>
															<td>${dtl.doctitle}</td>
															<td><a href="https://s3.us-east-2.amazonaws.com/rmmoreone/AddSDDoc/${dtl.sdid}_${dtl.document}" target="_blank">${dtl.document}</a></td>
													 </tr>
									           </c:forEach>
									  			</tbody>
									  			
							</table> --%>
						  
						  
						  </div>
						
						
										
						</div>
						</div>
					</div>
				</div>
				<br><br>
			</div>
		</main> 
		<!--************************************
				Main End
		*************************************-->
		<!--************************************
				Footer Start
		*************************************-->
		<jsp:include page="footer.jsp" />
		<!--************************************
				Footer End
		*************************************-->
	</div>
	<!--************************************
			Wrapper End
	*************************************-->
	<script src="js/vendor/jquery-library.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/mapclustering/data.json"></script>
	<script src="https://maps.google.com/maps/api/js?key=AIzaSyCR-KEWAVCn52mSdeVeTqZjtqbmVJyfSus&language=en"></script>
	<script src="js/mapclustering/markerclusterer.min.js"></script>
	<script src="js/mapclustering/infobox.js"></script>
	<script src="js/mapclustering/map.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/isotope.pkgd.js"></script>
	<script src="js/prettyPhoto.js"></script>
	<script src="js/countdown.js"></script>
	<script src="js/collapse.js"></script>
	<script src="js/moment.js"></script>
	<script src="js/gmap3.js"></script>
	<script src="js/main.js"></script>
</body>
</html>