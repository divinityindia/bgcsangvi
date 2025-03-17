<%-- <!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix ="fn"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!--[if lt IE 7]>		<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>			<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>			<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->	<html class="no-js" lang=""> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Academics - Academic Calendar :: Mamasaheb Mohol College</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="apple-touch-icon" href="apple-touch-icon.png">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/icomoon.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/prettyPhoto.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/owl.theme.default.css">
	<link rel="stylesheet" href="css/transitions.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/color.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">  --%>
	<!--
Author: WebThemez
Author URL: http://webthemez.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	
	
	<!-- <link rel="apple-touch-icon" href="apple-touch-icon.png"> -->
	<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
	<!-- <link rel="stylesheet" href="css/normalize.css"> -->
	<!-- <link rel="stylesheet" href="css/font-awesome.min.css"> -->
	<!-- <link rel="stylesheet" href="css/icomoon.css">
	<link rel="stylesheet" href="css/animate.css"> -->
	<!-- <link rel="stylesheet" href="css/prettyPhoto.css">
	<link rel="stylesheet" href="css/owl.carousel.css"> -->
	<!-- <link rel="stylesheet" href="css/owl.theme.default.css">
	<link rel="stylesheet" href="css/transitions.css"> -->
	<!--  <link rel="stylesheet" href="css/main.css"> -->
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
					  margin-left: 10%;
					  margin-right:10%;
					  position: relative;
					  width: 80%;
					  height: 340px;
					 /*  padding: 10px; */
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
			<%-- <center><h1 style="padding:5px;border:0px solid brown; font-weight: bold;">BBA</h1></center> --%>
				<div class="row" style="margin-top: 2%;">
					<div id="tg-twocolumns" class="tg-twocolumns">
						<div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
							<aside id="tg-sidebar" class="tg-sidebar">
								<div class="tg-widget tg-widgetaboutusnav">
									
									<div class="tg-widgetcontent" style="width:100% ;height: 500px;padding-top: 60px; ">
									<hr style="border: 1px solid black;">
										<ul class="listul" >
											<a href="GetInfra" ><li class="des">Infra. & Facility</li></a>
											<a href="Infrastructure.jsp"><li class="des">Infrastructure</li></a>
											<a href="CommonFacilities.jsp"><li class="des ">Common Facilities</li></a>
<!-- 											<a href="Sport.jsp"><li class="des">Sports</li></a> -->
											<a href="LaboratoryEquipments.jsp"><li class="des active">Laboratory Equipments</li></a>
										</ul>
									</div>
								</div>
							</aside>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
						<div class="table-responsive">
						<h2 class="title_contanier" >Laboratory Equipments</h2>
						 <hr style="border: 1px solid;">
								<div id="container1">
								  <div id="container2" >
								  <b style="font-family: sans-serif; font-size: 16px;color: #43577B;font-weight: bold;">Major equipments in various laboratories</b>
										<table width="100%" style="font-family: sans-serif; font-size: 14px;color: black;">
											<tr style="font-family: sans-serif; font-size: 16px;color: #43577B;font-weight: bold;">
												<th style="color: #003135; background: #fdd991;border:1px solid #003135; ">Sr.No. </th> 
												<th style="color: #003135; background: #fdd991;border:1px solid #003135; ">Name</th> 
												<th style="color: #003135; background: #fdd991;border:1px solid #003135; ">Quantity</th> 
												
											</tr>
											<tr style="font-family: sans-serif; font-size: 16px;color: #43577B;font-weight: bold;">
												<th colspan="3" style="color: white; background: #002e3b;border:1px solid #003135;text-align: center; ">Name of Equipment Zoology Department
</th> 
											</tr>
											<tr>
											   <td>1</td><td style="text-align: left;">	Glass Hemoglobin Kit, Haemometer mennfieted German make, Superior Board</td><td>	1</td></tr>
											   <tr>
											   <td>2</td><td style="text-align: left;">	Mini Centrifuge, Spinwin speed - 6000 RPM, Supplied with 6 x 1.5 MI, Angle Head Remi make, RMO2 Plans</td><td> 	1</td></tr>
											   <tr>
											   <td>3</td><td style="text-align: left;">	Digital pH Meter, Equiptronics Make, Model - 615</td><td>	1</td></tr>
											   <tr>
											   <td>4	</td><td style="text-align: left;">Magnetic Stirrer with speed control, Cap. - 500 ml without heater, Equiptronics make</td><td>	1</td></tr>
											   <tr>
											   <td>5</td><td style="text-align: left;">	Hot Plate Round Electrically, Perated round Model - 230 Vac, M S Body with heavy CI Body, Round - 8" with energy Regulator</td><td>	1</td></tr>
											   <tr>
											   <td>6</td><td style="text-align: left;">	Binacular Microscope, Standard Set complete with Binacular Head in build 6V - 20W Halogen light, Lummunator with Antifungas Acromatic objective INEA, GY, 10x Spring & 100x Coil, Spring, paired icepieces wide field ICWHK 10x in Thermocol packing manufactured inder License from Mlympus corporation, Japan, Olympus make</td><td>	1</td></tr>
											   <tr>
											   <td>7</td><td style="text-align: left;">	Distillation unit (Plant), single unit complete St. stell wall mounting pattern, Ele4ctrically operated, Automatic condeser open type, Cap. 10 Lit Lab. Hosp.	</td><td>1</td></tr>
											   <tr>
											   <td>8</td><td style="text-align: left;">	Dissecting Bionocular with light bulb, stereo dissecting microscope make Quasmo provided with Intergral llluminator lamps are fitted to provided both transmitted and incident lllumination objective 02 sets of 2X and 4X</td><td>	1</td></tr>
											   <tr>
											   <td>9</td><td style="text-align: left;">	Auto Clave, Vertical (Electrical) Double wall inside, 15 Labs pressure per sq.inch, Heavy Gauges 304 Argonvelded thick plate, Electrically operated supplied with pressure gauge, Safety valve releuse valve lid is made of S. S Thick plate, Lab. Hosp. make	</td><td>1</td></tr>
											   <tr>
											   <td>10</td><td style="text-align: left;">	Microfome Erma, Japan type, Biocraft make,</td><td>	1</td></tr>
											   <tr>
											   <td>11</td><td style="text-align: left;">	Cyclomixer, Remi make	</td><td>1</td></tr>
											   <tr>
											   <td>12</td><td style="text-align: left;">	Contech Electronic Balance CAH - 223 - 220 GM, Accu. - 0.001 gm)	</td><td>1</td></tr>
											   <tr>
											   <td>13</td><td style="text-align: left;">	Contech Electronic Balance CTL - 300 - 300 gm, Accu.  - 0.01 gm	</td><td>1</td></tr>
											   <tr>
											   <td>14</td><td style="text-align: left;">	MIS Haemocytometer, Complete set</td><td> 	1</td></tr>
											   <tr>
											   <td>15</td><td style="text-align: left;">	Rough balance single pan, Upper limit - 5 kg</td><td>	1</td></tr>
											   <tr>
											   <td>16</td><td style="text-align: left;">	Omkar shaking water bath - 48 x 30 x 16 (16 Flask, 250 ml) incubator with Dia. Display Temp. Controller	</td><td>1</td></tr>
											   <tr>
											   <td>17</td><td style="text-align: left;">	Rotary Duster, Hand Rotary Duster for Spraying Dist Beely Mounted Indian</td><td>	1</td></tr>
											   <tr>
											   <td>18</td><td style="text-align: left;">	Knapsack Sprayer, Hand operated sprayer	</td><td>1</td></tr>
											   <tr>
											   <td>19	</td><td style="text-align: left;">Friedge, 310 Lits Capacity, L.G. Frost, Refrigter with new smart Invertor compressor powerful Evercool, L.G. make</td><td>	1</td></tr>
											   <tr>
											   <td>20	</td><td style="text-align: left;">VISE LED VH39H601	</td><td>1</td></tr>
                                          <tr>
											<th colspan="3" style="color: white; background: #002e3b;border:1px solid #003135;text-align: center; ">
											Name of Instrument Botany Department
											</th>
											</tr>
											<tr>
											<td>1	</td><td style="text-align: left;">Vertical Laminer Air Flow MFI - V2, 2 x 2 Galvanized Iron sheet with Epoxy polyster Thermo setting powder coating of 80 Microus	</td><td>1</td></tr>
											<tr>
											<td>2</td><td style="text-align: left;">	Vertical Auto Clave, Standard vertical autoclave, size - 350 mm & 550 mm, Equiptrom make model STWL - 7421</td><td>	1</td></tr>
											<tr>
											<td>3	</td><td style="text-align: left;">Tilak Air Sampler, - 30 cm x 25 cm x 18 cm	</td><td>1</td></tr>
											<tr>
											<td>4</td><td style="text-align: left;">	Plant Tissue Culture Incubation Racks TCR - 6, Tanco Make, No of Shelves - 6, Lighting facility in shelves - 5, Total No. of Fluroscent Tubes - 20 Nos, Total no of Indescent Lamps - 20 Distance between shelves - 16" Platform size - 48" x 12" Power supply AC 230V 50/60 Hz	</td><td>1</td></tr>
											<tr>
											<td>5	</td><td style="text-align: left;">Soxhlet Extraction Apparauts Cap. Model No. 3840	</td><td>1</td></tr>
											<tr>
											<td>6</td><td style="text-align: left;">	Agarose Gel Electrophoresis Kit (20)	</td><td>1</td></tr>
											<tr>
											<td>7</td><td style="text-align: left;">	Maxi Submarine Gel Electrophoresis Unit	</td><td>1</td></tr>
											<tr>
											<td>8</td><td style="text-align: left;">	U.V. Transilluminator Gel Viewing	</td><td>1</td></tr>
											<tr>
											<td>9	</td><td style="text-align: left;">Fixed Type Power Pack	</td><td>1</td></tr>
											<tr>
											<td>10	</td><td style="text-align: left;">Eon Pipette Variable Volume	</td><td>3</td></tr>
											<tr>
											<td>11	</td><td style="text-align: left;">VISE LED VH39H601	</td><td>1</td></tr>
											<tr>
											<td>12	</td><td style="text-align: left;">Rotary Shaker - Make Remi, Model No. RS-12	</td><td>2</td></tr>
											<tr>
											<td>13	</td><td style="text-align: left;">Ph Meter with table top LED Display electrode Make - Elico, Model No. LI-120	</td><td>1</td></tr>
											<tr>
											<td>14	</td><td style="text-align: left;">Stero Binoculer Microscope	</td><td>2</td></tr>
											<tr>
											<td>15	</td><td style="text-align: left;">Spectrophotometer	</td><td>2</td></tr>
											<tr>
											<td>16</td><td style="text-align: left;">	Oven	</td><td>1</td></tr>
											<tr>
											<th colspan="3" style="color: white; background: #002e3b;border:1px solid #003135;text-align: center; ">
											Name of Instrument Chemistry Department

											</th>
											</tr>
											<tr>
											<td>1	</td><td style="text-align: left;">Palet maker</td><td>	1</td></tr>
											<tr>
											<td>2	</td><td style="text-align: left;">Single Beam  Spectrophotometer</td><td>	2</td>
											<tr>
											<td>3	</td><td style="text-align: left;">Kal-Fisher Titrator</td><td>	1</td></tr>
											<tr>
											<td>4	</td><td style="text-align: left;">Tablet Dissolution test Instrument	</td><td>1</td></tr>
											<tr>
											<td>5	</td><td style="text-align: left;">Photoflurometer</td><td>	1</td></tr>
											<tr>
											<td>6	</td><td style="text-align: left;">Nephelometer-Turbitimeter Unit</td><td>	1</td></tr>
											<tr>
											<td>7</td><td style="text-align: left;">	GM Counter	</td><td>1</td></tr>
											<tr>
											<td>8	</td><td style="text-align: left;">Flame Photometer	</td><td>2</td></tr>
											<tr>
											<td>9	</td><td style="text-align: left;">Potentiometer	</td><td>3</td></tr>
											<tr>
											<td>10	</td><td style="text-align: left;">Conductometer</td><td>	4</td></tr>
											<tr>
											<td>11</td><td style="text-align: left;">	pH meter	</td><td>4</td></tr>
											<tr>
											<td>12</td><td style="text-align: left;">	Weighing Balance</td><td>	4</td></tr>
											<tr>
											<td>13</td><td style="text-align: left;">	Water Distilation Unit	</td><td>2</td></tr>
											<tr>
											<td>14	</td><td style="text-align: left;">Vacuum filtration unit	</td><td>2</td></tr>
											<tr>
											<td>15	</td><td style="text-align: left;">IR lamp</td><td>	3</td></tr>
											<tr>
											<td>16	</td><td style="text-align: left;">Rota vapor</td><td>	2</td></tr>
											<tr>
											<td>17	</td><td style="text-align: left;">Centrifuge machine	</td><td>1</td></tr>

											<tr>
											<th colspan="3" style="color: white; background: #002e3b;border:1px solid #003135;text-align: center; ">
												Name of Instrument SAIFC Department 
												</th>
												</tr>
											<tr>
											<td>1</td><td style="text-align: left;">	X-ray Diffraction (XRD)</td><td>	1</td></tr>
											<tr>
											<td>2	</td><td style="text-align: left;">Atomic Absorbtion Spectrometer(AAS)	</td><td>1</td></tr>
											<tr>
											<td>3	</td><td style="text-align: left;">High Performance Liquid Chromatography (HPLC)</td><td>	1</td></tr>
											<tr>
											<td>4	</td><td style="text-align: left;">Gas Chromatography (GC)	</td><td>1</td></tr>
											<tr>
											<td>5	</td><td style="text-align: left;">Double Beam Spectrophotometer	</td><td>1</td></tr>
											<tr>
											<td>6	</td><td style="text-align: left;">Fourier-transform infrared spectroscopy (FTIR)</td><td>	1</td></tr>

											
										</table>

								  
								  </div>
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