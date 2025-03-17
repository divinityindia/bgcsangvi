$(document).ready(function(){
			
				google.charts.load('current', {'packages':['corechart']});
				google.charts.setOnLoadCallback(drawChart);

				function drawChart() {

				    // q1
				    var q1 = new google.visualization.DataTable();
				    q1.addColumn('string', 'Topping');
				    q1.addColumn('number', 'Slices');
				    q1.addRows([
				      ['Outdated', parseFloat($("#q1a1").val())],
				      ['Disagree', parseFloat($("#q1a2").val())],
				      ['Vast', parseFloat($("#q1a3").val())],
				      ['Appropriate', parseFloat($("#q1a4").val())],
				      ['Limited', parseFloat($("#q1a5").val())]
				    ]);

				    var q1o = {'title':'1. Course content',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    var q1chart = new google.visualization.PieChart(document.getElementById('q1'));
				    q1chart.draw(q1, q1o);
				    
				    //q2
				    var q2 = new google.visualization.DataTable();
				    q2.addColumn('string', 'Topping');
				    q2.addColumn('number', 'Slices');
				    q2.addRows([
				      ['No changes required', parseFloat($("#q2a1").val())],
				      ['Disagree', parseFloat($("#q2a2").val())],
				      ['More practical components', parseFloat($("#q2a3").val())],
				      ['Needs industrial application oriented', parseFloat($("#q2a4").val())],
				      ['Needs entire modification', parseFloat($("#q2a5").val())]
				    ]);

				    // Set chart options
				    var q2o = {'title':'2. Expected changes in future curriculum',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q2chart = new google.visualization.PieChart(document.getElementById('q2'));
				    q2chart.draw(q2, q2o);
				    
				    //q3
				    var q3 = new google.visualization.DataTable();
				    q3.addColumn('string', 'Topping');
				    q3.addColumn('number', 'Slices');
				    q3.addRows([
				      ['Poor', parseFloat($("#q3a1").val())],
				      ['Disagree', parseFloat($("#q3a2").val())],
				      ['Satisfactory', parseFloat($("#q3a3").val())],
				      ['Good', parseFloat($("#q3a4").val())],
				      ['Excellent', parseFloat($("#q3a5").val())]
				    ]);

				    // Set chart options
				    var q3o = {'title':'3. Your opinion about research environment in college',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q3chart = new google.visualization.PieChart(document.getElementById('q3'));
				    q3chart.draw(q3, q3o);
				    
				  //q4
				    var q4 = new google.visualization.DataTable();
				    q4.addColumn('string', 'Topping');
				    q4.addColumn('number', 'Slices');
				    q4.addRows([
				      ['Never', parseFloat($("#q4a1").val())],
				      ['Disagree', parseFloat($("#q4a2").val())],
				      ['Rarely', parseFloat($("#q4a3").val())],
				      ['Sometimes', parseFloat($("#q4a4").val())],
				      ['Frequently', parseFloat($("#q4a5").val())]
				    ]);

				    // Set chart options
				    var q4o = {'title':'4. Organization of co-curricular, extra-curricular and extension activities',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q4chart = new google.visualization.PieChart(document.getElementById('q4'));
				    q4chart.draw(q4, q4o);
				    
				  //q5
				    var q5 = new google.visualization.DataTable();
				    q5.addColumn('string', 'Topping');
				    q5.addColumn('number', 'Slices');
				    q5.addRows([
				      ['Poor', parseFloat($("#q5a1").val())],
				      ['Disagree', parseFloat($("#q5a2").val())],
				      ['Satisfactory', parseFloat($("#q5a3").val())],
				      ['Good', parseFloat($("#q5a4").val())],
				      ['Excellent', parseFloat($("#q5a5").val())]
				    ]);

				    // Set chart options
				    var q5o = {'title':"5.  Student welfare scheme (e.g. Earn and learn, Book bank, Financial aid etc.)",
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q5chart = new google.visualization.PieChart(document.getElementById('q5'));
				    q5chart.draw(q5, q5o);
				    
				  //q6
				    var q6 = new google.visualization.DataTable();
				    q6.addColumn('string', 'Topping');
				    q6.addColumn('number', 'Slices');
				    q6.addRows([
				      ['Not available', parseFloat($("#q6a1").val())],
				      ['Disagree', parseFloat($("#q6a2").val())],
				      ['Poor', parseFloat($("#q6a3").val())],
				      ['Satisfactory', parseFloat($("#q6a4").val())],
				      ['Excellent', parseFloat($("#q6a5").val())]
				    ]);

				    // Set chart options
				    var q6o = {'title':'6. Availability of scholarship from Govt/Non Govt/NGO/Endowment',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q6chart = new google.visualization.PieChart(document.getElementById('q6'));
				    q6chart.draw(q6, q6o);
				    
				  //q7
				    var q7 = new google.visualization.DataTable();
				    q7.addColumn('string', 'Topping');
				    q7.addColumn('number', 'Slices');
				    q7.addRows([
				      ['Never', parseFloat($("#q7a1").val())],
				      ['Disagree', parseFloat($("#q7a2").val())],
				      ['Rarely', parseFloat($("#q7a3").val())],
				      ['Sometimes', parseFloat($("#q7a4").val())],
				      ['Frequently', parseFloat($("#q7a5").val())]
				    ]);

				    // Set chart options
				    var q7o = {'title':'7. Our grievances are redressed/ problems are solved well in time',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q7chart = new google.visualization.PieChart(document.getElementById('q7'));
				    q7chart.draw(q7, q7o);
				    
				    
				  //q8
				    var q8 = new google.visualization.DataTable();
				    q8.addColumn('string', 'Topping');
				    q8.addColumn('number', 'Slices');
				    q8.addRows([
				      ['Poor', parseFloat($("#q8a1").val())],
				      ['Disagree', parseFloat($("#q8a2").val())],
				      ['Satisfactory', parseFloat($("#q8a3").val())],
				      ['Good', parseFloat($("#q8a4").val())],
				      ['Excellent', parseFloat($("#q8a5").val())]
				    ]);

				    // Set chart options
				    var q8o = {'title':'8. Sports environment in college',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q8chart = new google.visualization.PieChart(document.getElementById('q8'));
				    q8chart.draw(q8, q8o);
				    
				  //q9
				    var q9 = new google.visualization.DataTable();
				    q9.addColumn('string', 'Topping');
				    q9.addColumn('number', 'Slices');
				    q9.addRows([
				      ['Never', parseFloat($("#q9a1").val())],
				      ['Disagree', parseFloat($("#q9a2").val())],
				      ['Rarely', parseFloat($("#q9a3").val())],
				      ['Sometimes', parseFloat($("#q9a4").val())],
				      ['Frequently', parseFloat($("#q9a5").val())]
				    ]);

				    // Set chart options
				    var q9o = {'title':'9. Cultural activities in college',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q9chart = new google.visualization.PieChart(document.getElementById('q9'));
				    q9chart.draw(q9, q9o);
				    
				  //q10
				    var q10 = new google.visualization.DataTable();
				    q10.addColumn('string', 'Topping');
				    q10.addColumn('number', 'Slices');
				    q10.addRows([
				      ['Poor', parseFloat($("#q10a1").val())],
				      ['Disagree', parseFloat($("#q10a2").val())],
				      ['Satisfactory', parseFloat($("#q10a3").val())],
				      ['Good', parseFloat($("#q10a4").val())],
				      ['Excellent', parseFloat($("#q10a5").val())]
				    ]);

				    // Set chart options
				    var q10o = {'title':'10. Functionality of placement cell',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q10chart = new google.visualization.PieChart(document.getElementById('q10'));
				    q10chart.draw(q10, q10o);
				    
				  //q11
				    var q11 = new google.visualization.DataTable();
				    q11.addColumn('string', 'Topping');
				    q11.addColumn('number', 'Slices');
				    q11.addRows([
				      ['Poor', parseFloat($("#q11a1").val())],
				      ['Disagree', parseFloat($("#q11a2").val())],
				      ['Satisfactory', parseFloat($("#q11a3").val())],
				      ['Good', parseFloat($("#q11a4").val())],
				      ['Excellent', parseFloat($("#q11a5").val())]
				    ]);

				    // Set chart options
				    var q11o = {'title':'11. Coaching for competitive exam',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q11chart = new google.visualization.PieChart(document.getElementById('q11'));
				    q11chart.draw(q11, q11o);
				    
				  //q12
				    var q12 = new google.visualization.DataTable();
				    q12.addColumn('string', 'Topping');
				    q12.addColumn('number', 'Slices');
				    q12.addRows([
				      ['Poor', parseFloat($("#q12a1").val())],
				      ['Disagree', parseFloat($("#q12a2").val())],
				      ['Satisfactory', parseFloat($("#q12a3").val())],
				      ['Good', parseFloat($("#q12a4").val())],
				      ['Excellent', parseFloat($("#q12a5").val())]
				    ]);

				    // Set chart options
				    var q12o = {'title':'12. College website is dynamic and informative',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q12chart = new google.visualization.PieChart(document.getElementById('q12'));
				    q12chart.draw(q12, q12o);
				    
				    
				  //q13
				    var q13 = new google.visualization.DataTable();
				    q13.addColumn('string', 'Topping');
				    q13.addColumn('number', 'Slices');
				    q13.addRows([
				      ['Poor', parseFloat($("#q13a1").val())],
				      ['Disagree', parseFloat($("#q13a2").val())],
				      ['Satisfactory', parseFloat($("#q13a3").val())],
				      ['Good', parseFloat($("#q13a4").val())],
				      ['Excellent', parseFloat($("#q13a5").val())]
				    ]);

				    // Set chart options
				    var q13o = {'title':'13. Effectiveness of learning management system (LMS) and ICT in college',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q13chart = new google.visualization.PieChart(document.getElementById('q13'));
				    q13chart.draw(q13, q13o);
				    
				  //q14
				    var q14 = new google.visualization.DataTable();
				    q14.addColumn('string', 'Topping');
				    q14.addColumn('number', 'Slices');
				    q14.addRows([
				      ['Not sure', parseFloat($("#q14a1").val())],
				      ['Disagree', parseFloat($("#q14a2").val())],
				      ['Very little', parseFloat($("#q14a3").val())],
				      ['Partially', parseFloat($("#q14a4").val())],
				      ['Fully', parseFloat($("#q14a5").val())]
				    ]);

				    // Set chart options
				    var q14o = {'title':'14. Awareness of vision and mission of College',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q14chart = new google.visualization.PieChart(document.getElementById('q14'));
				    q14chart.draw(q14, q14o);
				    
				  //q15
				    var q15 = new google.visualization.DataTable();
				    q15.addColumn('string', 'Topping');
				    q15.addColumn('number', 'Slices');
				    q15.addRows([
				      ['Poor', parseFloat($("#q15a1").val())],
				      ['Disagree', parseFloat($("#q15a2").val())],
				      ['Satisfactory', parseFloat($("#q15a3").val())],
				      ['Good', parseFloat($("#q15a4").val())],
				      ['Excellent', parseFloat($("#q15a5").val())]
				    ]);

				    // Set chart options
				    var q15o = {'title':'15. Availability of basic amenities in College',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q15chart = new google.visualization.PieChart(document.getElementById('q15'));
				    q15chart.draw(q15, q15o);
				    
				     //q16
				    var q16 = new google.visualization.DataTable();
				    q16.addColumn('string', 'Topping');
				    q16.addColumn('number', 'Slices');
				    q16.addRows([
				      ['Poor', parseFloat($("#q16a1").val())],
				      ['Disagree', parseFloat($("#q16a2").val())],
				      ['Satisfactory', parseFloat($("#q16a3").val())],
				      ['Good', parseFloat($("#q16a4").val())],
				      ['Excellent', parseFloat($("#q16a5").val())]
				    ]);

				    // Set chart options
				    var q16o = {'title':'16. The prescribed books/reading material available in the library',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q16chart = new google.visualization.PieChart(document.getElementById('q16'));
				    q16chart.draw(q16, q16o);
				   
				    //q17
				    var q17 = new google.visualization.DataTable();
				    q17.addColumn('string', 'Topping');
				    q17.addColumn('number', 'Slices');
				    q17.addRows([
				      ['Poor', parseFloat($("#q17a1").val())],
				      ['Disagree', parseFloat($("#q17a2").val())],
				      ['Satisfactory', parseFloat($("#q17a3").val())],
				      ['Good', parseFloat($("#q17a4").val())],
				      ['Excellent', parseFloat($("#q17a5").val())]
				    ]);

				    // Set chart options
				    var q17o = {'title':'17. Internet facility provided in Library is satisfactory',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q17chart = new google.visualization.PieChart(document.getElementById('q17'));
				    q17chart.draw(q17, q17o);
				    
				     //q18
				    var q18 = new google.visualization.DataTable();
				    q18.addColumn('string', 'Topping');
				    q18.addColumn('number', 'Slices');
				    q18.addRows([
				      ['Not sure', parseFloat($("#q18a1").val())],
				      ['Disagree', parseFloat($("#q18a2").val())],
				      ['Disagree', parseFloat($("#q18a3").val())],
				      ['Agree', parseFloat($("#q18a4").val())],
				      ['Strongly Agree', parseFloat($("#q18a5").val())]
				    ]);

				    // Set chart options
				    var q18o = {'title':'18. The campus is green and ecofriendly',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q18chart = new google.visualization.PieChart(document.getElementById('q18'));
				    q18chart.draw(q18, q18o);
				    
				     //q19
				    var q19 = new google.visualization.DataTable();
				    q19.addColumn('string', 'Topping');
				    q19.addColumn('number', 'Slices');
				    q19.addRows([
				      ['Not sure', parseFloat($("#q19a1").val())],
				      ['Disagree', parseFloat($("#q19a2").val())],
				      ['Disagree', parseFloat($("#q19a3").val())],
				      ['Agree', parseFloat($("#q19a4").val())],
				      ['Strongly Agree', parseFloat($("#q19a5").val())]
				    ]);

				    // Set chart options
				    var q19o = {'title':'19. College campus is clean and neat',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q19chart = new google.visualization.PieChart(document.getElementById('q19'));
				    q19chart.draw(q19, q19o);
				    
				     //q20
				    var q20 = new google.visualization.DataTable();
				    q20.addColumn('string', 'Topping');
				    q20.addColumn('number', 'Slices');
				    q20.addRows([
				      ['Poor', parseFloat($("#q20a1").val())],
				      ['Disagree', parseFloat($("#q20a2").val())],
				      ['Satisfactory', parseFloat($("#q20a3").val())],
				      ['Good', parseFloat($("#q20a4").val())],
				      ['Excellent', parseFloat($("#q20a5").val())]
				    ]);

				    // Set chart options
				    var q20o = {'title':'20. The campus has safety and security arrangements',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q20chart = new google.visualization.PieChart(document.getElementById('q20'));
				    q20chart.draw(q20, q20o);
				    
				     //q21
				    var q21 = new google.visualization.DataTable();
				    q21.addColumn('string', 'Topping');
				    q21.addColumn('number', 'Slices');
				    q21.addRows([
				      ['Not sure', parseFloat($("#q21a1").val())],
				      ['Disagree', parseFloat($("#q21a2").val())],
				      ['Disagree', parseFloat($("#q21a3").val())],
				      ['Agree', parseFloat($("#q21a4").val())],
				      ['Strongly Agree', parseFloat($("#q21a5").val())]
				    ]);

				    // Set chart options
				    var q21o = {'title':'21. Administration staff is cooperative and helpful',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q21chart = new google.visualization.PieChart(document.getElementById('q21'));
				    q21chart.draw(q21, q21o); 
				    
				     //q22
				    var q22 = new google.visualization.DataTable();
				    q22.addColumn('string', 'Topping');
				    q22.addColumn('number', 'Slices');
				    q22.addRows([
				      ['Rarely', parseFloat($("#q22a1").val())],
				      ['Disagree', parseFloat($("#q22a2").val())],
				      ['Sometimes', parseFloat($("#q22a3").val())],
				      ['Often', parseFloat($("#q22a4").val())],
				      ['Regularly', parseFloat($("#q22a5").val())]
				    ]);

				    // Set chart options
				    var q22o = {'title':'22. Gender sensitization and environment awareness activities in college',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q22chart = new google.visualization.PieChart(document.getElementById('q22'));
				    q22chart.draw(q22, q22o);
				    
				     //q23
				    var q23 = new google.visualization.DataTable();
				    q23.addColumn('string', 'Topping');
				    q23.addColumn('number', 'Slices');
				    q23.addRows([
				      ['Poor', parseFloat($("#q23a1").val())],
				      ['Disagree', parseFloat($("#q23a2").val())],
				      ['Satisfactory', parseFloat($("#q23a3").val())],
				      ['Good', parseFloat($("#q23a4").val())],
				      ['Excellent', parseFloat($("#q23a5").val())]
				    ]);

				    // Set chart options
				    var q23o = {'title':'23. Continuous internal assessment is effectively implemented',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q23chart = new google.visualization.PieChart(document.getElementById('q23'));
				    q23chart.draw(q23, q23o);
				    
				     //q24
				    var q24 = new google.visualization.DataTable();
				    q24.addColumn('string', 'Topping');
				    q24.addColumn('number', 'Slices');
				    q24.addRows([
				      ['Not sure', parseFloat($("#q24a1").val())],
				      ['Disagree', parseFloat($("#q24a2").val())],
				      ['Disagree', parseFloat($("#q24a3").val())],
				      ['Agree', parseFloat($("#q24a4").val())],
				      ['Strongly Agree', parseFloat($("#q24a5").val())]
				    ]);

				    // Set chart options
				    var q24o = {'title':'24. Smooth conduct of university exam',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q24chart = new google.visualization.PieChart(document.getElementById('q24'));
				    q24chart.draw(q24, q24o);
				    
				     //q25
				    var q25 = new google.visualization.DataTable();
				    q25.addColumn('string', 'Topping');
				    q25.addColumn('number', 'Slices');
				    q25.addRows([
				      ['Poor', parseFloat($("#q25a1").val())],
				      ['Disagree', parseFloat($("#q25a2").val())],
				      ['Satisfactory', parseFloat($("#q25a3").val())],
				      ['Good', parseFloat($("#q25a4").val())],
				      ['Excellent', parseFloat($("#q25a5").val())]
				    ]);

				    // Set chart options
				    var q25o = {'title':'25. Overall impression of College.',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q25chart = new google.visualization.PieChart(document.getElementById('q25'));
				    q25chart.draw(q25, q25o);
				    
				  }

				//Print Button Onclick event to print Pie charts table 
        		$("#printBtn").click(function(event){
        			w=window.open('', '#printBlock', 'scrollbars=yes'); 
        			var myStyle = '<link rel="stylesheet" type="text/css" href="../../css/style.css" />'
        		        +'<link rel="stylesheet" type="text/css" href="../../css/form.css" />'
        		        +'<link rel="stylesheet" type="text/css" href="../../css/table.css"/>'
        		        +'<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">'
        		        +'<style type="text/css">'
        		        +'@media print {'
        		        +'	body {-webkit-print-color-adjust: exact;}'
        		        +'table { page-break-after:auto }'
        		        +'table tr { page-break-inside:avoid; page-break-after:auto }'
        		        +'table tr td { page-break-inside:avoid; page-break-after:auto }'
        		        +'table thead { display:table-header-group }'
        		        +'table tr.lstrow { page-break-inside:avoid; page-break-after:auto }'
        		        +'}'
        		        +'table#chartTbl tr td{'
        		        +'height: 60px;'
        		        +'}'
        		        +'</style>';
        			w.document.write(myStyle + jQuery('#printBlock').html());
        			w.document.write('<scr' + 'ipt type="text/javascript">' + 'window.onload = function() { window.print(); window.close(); };' + '</sc' + 'ript>');

        		    w.document.close(); // necessary for IE >= 10
        		    w.focus();
        		});		
});