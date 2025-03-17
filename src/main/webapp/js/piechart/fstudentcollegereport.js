$(document).ready(function(){
			
				google.charts.load('current', {'packages':['corechart']});
				google.charts.setOnLoadCallback(drawChart);

				function drawChart() {

				    // q1
				    var q1 = new google.visualization.DataTable();
				    q1.addColumn('string', 'Topping');
				    q1.addColumn('number', 'Slices');
				    q1.addRows([
				      ['85 to100%', parseFloat($("#q1a1").val())],
				      ['70 to 84%', parseFloat($("#q1a2").val())],
				      ['55 to 69%', parseFloat($("#q1a3").val())],
				      ['30 to 54%', parseFloat($("#q1a4").val())],
				      ['Below 30%', parseFloat($("#q1a5").val())]
				    ]);

				    var q1o = {'title':'1. How much of the syllabus was covered in the class?',
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
				      ['Thoroughly', parseFloat($("#q2a1").val())],
				      ['Satisfactorily', parseFloat($("#q2a2").val())],
				      ['Poorly', parseFloat($("#q2a3").val())],
				      ['Indifferently', parseFloat($("#q2a4").val())],
				      ['Won’t teach at all', parseFloat($("#q2a5").val())]
				    ]);

				    // Set chart options
				    var q2o = {'title':'2. How well did the teachers prepare for the classes?',
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
				      ['Always effective', parseFloat($("#q3a1").val())],
				      ['Sometimes effective', parseFloat($("#q3a2").val())],
				      ['Just satisfactorily', parseFloat($("#q3a3").val())],
				      ['Generally ineffective', parseFloat($("#q3a4").val())],
				      ['Very poor communication', parseFloat($("#q3a5").val())]
				    ]);

				    // Set chart options
				    var q3o = {'title':'3. How well were the teachers able to communicate?',
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
				      ['Excellent', parseFloat($("#q4a1").val())],
				      ['Very good', parseFloat($("#q4a2").val())],
				      ['Good', parseFloat($("#q4a3").val())],
				      ['Fair', parseFloat($("#q4a4").val())],
				      ['Poor', parseFloat($("#q4a5").val())]
				    ]);

				    // Set chart options
				    var q4o = {'title':'4. The teachers approach to teaching can best be described as',
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
				      ['Always fair', parseFloat($("#q5a1").val())],
				      ['Usually fair', parseFloat($("#q5a2").val())],
				      ['Sometimes unfair', parseFloat($("#q5a3").val())],
				      ['Usually unfair', parseFloat($("#q5a4").val())],
				      ['Unfair', parseFloat($("#q5a5").val())]
				    ]);

				    // Set chart options
				    var q5o = {'title':'5. Fairness of the internal evaluation process by the teachers.',
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
				      ['Every time', parseFloat($("#q6a1").val())],
				      ['Usually', parseFloat($("#q6a2").val())],
				      ['Occasionally/Sometimes', parseFloat($("#q6a3").val())],
				      ['Rarely', parseFloat($("#q6a4").val())],
				      ['Never', parseFloat($("#q6a5").val())]
				    ]);

				    // Set chart options
				    var q6o = {'title':'6. Was your performance in assignments discussed with you?',
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
				      ['Regularly', parseFloat($("#q7a1").val())],
				      ['Often', parseFloat($("#q7a2").val())],
				      ['Sometimes', parseFloat($("#q7a3").val())],
				      ['Rarely', parseFloat($("#q7a4").val())],
				      ['Never', parseFloat($("#q7a5").val())]
				    ]);

				    // Set chart options
				    var q7o = {'title':'7. The institute takes active interest in promoting internship, student exchange, field visit opportunities for students?',
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
				      ['Significantly', parseFloat($("#q8a1").val())],
				      ['Very well', parseFloat($("#q8a2").val())],
				      ['Moderately', parseFloat($("#q8a3").val())],
				      ['Marginally', parseFloat($("#q8a4").val())],
				      ['Not at all', parseFloat($("#q8a5").val())]
				    ]);

				    // Set chart options
				    var q8o = {'title':'8. The teaching and mentoring process in your institution facilitates you in cognitive,social and emotional growth.',
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
				      ['Strongly agree', parseFloat($("#q9a1").val())],
				      ['Agree', parseFloat($("#q9a2").val())],
				      ['Neutral', parseFloat($("#q9a3").val())],
				      ['Disagree', parseFloat($("#q9a4").val())],
				      ['Strongly disagree', parseFloat($("#q9a5").val())]
				    ]);

				    // Set chart options
				    var q9o = {'title':'9. The institution provides multiple opportunities to learn and grow.',
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
				      ['Every time', parseFloat($("#q10a1").val())],
				      ['Usually', parseFloat($("#q10a2").val())],
				      ['Occasionally/Sometimes', parseFloat($("#q10a3").val())],
				      ['Rarely', parseFloat($("#q10a4").val())],
				      ['Never', parseFloat($("#q10a5").val())]
				    ]);

				    // Set chart options
				    var q10o = {'title':'10. Teachers inform you about your expected competencies, course outcomes and programme outcomes',
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
				      ['Every time', parseFloat($("#q11a1").val())],
				      ['Usually', parseFloat($("#q11a2").val())],
				      ['Occasionally/Sometimes', parseFloat($("#q11a3").val())],
				      ['Rarely', parseFloat($("#q11a4").val())],
				      ['Never', parseFloat($("#q11a5").val())]
				    ]);

				    // Set chart options
				    var q11o = {'title':'11. Your mentor does a necessary follow-up with an assigned task to you',
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
				      ['Every time', parseFloat($("#q12a1").val())],
				      ['Usually', parseFloat($("#q12a2").val())],
				      ['Occasionally/Sometimes', parseFloat($("#q12a3").val())],
				      ['Rarely', parseFloat($("#q12a4").val())],
				      ['Never', parseFloat($("#q12a5").val())]
				    ]);

				    // Set chart options
				    var q12o = {'title':'12. The teachers illustrate the concepts through examples and applications.',
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
				      ['Fully', parseFloat($("#q13a1").val())],
				      ['Reasonably', parseFloat($("#q13a2").val())],
				      ['Partially', parseFloat($("#q13a3").val())],
				      ['Slightly', parseFloat($("#q13a4").val())],
				      ['Unable to', parseFloat($("#q13a5").val())]
				    ]);

				    // Set chart options
				    var q13o = {'title':'13. The teachers identify your strengths and encourage you with providing right level of challenges',
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
				      ['Every time', parseFloat($("#q14a1").val())],
				      ['Usually', parseFloat($("#q14a2").val())],
				      ['Occasionally/Sometimes', parseFloat($("#q14a3").val())],
				      ['Rarely', parseFloat($("#q14a4").val())],
				      ['Never', parseFloat($("#q14a5").val())]
				    ]);

				    // Set chart options
				    var q14o = {'title':'14. Teachers are able to identify your weaknesses and help you to overcome them.',
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
				      ['Strongly agree', parseFloat($("#q15a1").val())],
				      ['Agree', parseFloat($("#q15a2").val())],
				      ['Neutral', parseFloat($("#q15a3").val())],
				      ['Disagree', parseFloat($("#q15a4").val())],
				      ['Strongly disagree', parseFloat($("#q15a5").val())]
				    ]);

				    // Set chart options
				    var q15o = {'title':'15. The institution makes an effort to engage students in the monitoring, review and continuous quality improvement of the teaching learning process.',
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
				      ['To a great extent', parseFloat($("#q16a1").val())],
				      ['Moderate', parseFloat($("#q16a2").val())],
				      ['Some what', parseFloat($("#q16a3").val())],
				      ['Very little', parseFloat($("#q16a4").val())],
				      ['Not at all', parseFloat($("#q16a5").val())]
				    ]);

				    // Set chart options
				    var q16o = {'title':'16. The institute/ teachers use student centric methods, such as experiential learning,participative learning and problem solving methodologies for enhancing learning experiences.',
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
				      ['Strongly agree', parseFloat($("#q17a1").val())],
				      ['Agree', parseFloat($("#q17a2").val())],
				      ['Neutral', parseFloat($("#q17a3").val())],
				      ['Disagree', parseFloat($("#q17a4").val())],
				      ['Strongly disagree', parseFloat($("#q17a5").val())]
				    ]);

				    // Set chart options
				    var q17o = {'title':'17. Teachers encourage you to participate in extracurricular activities.',
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
				      ['To a great extent', parseFloat($("#q18a1").val())],
				      ['Moderate', parseFloat($("#q18a2").val())],
				      ['Some what', parseFloat($("#q18a3").val())],
				      ['Very little', parseFloat($("#q18a4").val())],
				      ['Not at all', parseFloat($("#q18a5").val())]
				    ]);

				    // Set chart options
				    var q18o = {'title':'18. Efforts are made by the institute/teachers to inculcate soft skills, life skills and employability skills to make you ready for the world of work.',
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
				      ['Above 90%/', parseFloat($("#q19a1").val())],
				      ['70 to 89%', parseFloat($("#q19a2").val())],
				      ['50 to 69%', parseFloat($("#q19a3").val())],
				      ['30 to 49%', parseFloat($("#q19a4").val())],
				      ['Below 29%', parseFloat($("#q19a5").val())]
				    ]);

				    // Set chart options
				    var q19o = {'title':'19. What percentage of teachers use ICT tools such as LCD projector, Multimedia, etc. while teaching',
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
				      ['Strongly agree', parseFloat($("#q20a1").val())],
				      ['Agree', parseFloat($("#q20a2").val())],
				      ['Neutral', parseFloat($("#q20a3").val())],
				      ['Disagree', parseFloat($("#q20a4").val())],
				      ['Strongly disagree', parseFloat($("#q20a5").val())]
				    ]);

				    // Set chart options
				    var q20o = {'title':'20. The overall quality of the teaching-learning process in your institute is very good.',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q20chart = new google.visualization.PieChart(document.getElementById('q20'));
				    q20chart.draw(q20, q20o);
				    
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