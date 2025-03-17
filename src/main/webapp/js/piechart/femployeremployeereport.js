$(document).ready(function(){
			
				google.charts.load('current', {'packages':['corechart']});
				google.charts.setOnLoadCallback(drawChart);

				function drawChart() {

				    // q1
				    var q1 = new google.visualization.DataTable();
				    q1.addColumn('string', 'Topping');
				    q1.addColumn('number', 'Slices');
				    q1.addRows([
				      ['Far from Satisfied', parseFloat($("#q1a1").val())],
				      ['Poor', parseFloat($("#q1a2").val())],
				      ['Satisfactory', parseFloat($("#q1a3").val())],
				      ['Good', parseFloat($("#q1a4").val())],
				      ['Excellent', parseFloat($("#q1a5").val())]
				    ]);

				    var q1o = {'title':'1. Ability to contribute to the goal of the organization',
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
				      ['Far from Satisfied', parseFloat($("#q2a1").val())],
				      ['Poor', parseFloat($("#q2a2").val())],
				      ['Satisfactory', parseFloat($("#q2a3").val())],
				      ['Good', parseFloat($("#q2a4").val())],
				      ['Excellent', parseFloat($("#q2a5").val())]
				    ]);

				    // Set chart options
				    var q2o = {'title':'2. Planning and organization skill',
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
				      ['Far from Satisfied', parseFloat($("#q3a1").val())],
				      ['Poor', parseFloat($("#q3a2").val())],
				      ['Satisfactory', parseFloat($("#q3a3").val())],
				      ['Good', parseFloat($("#q3a4").val())],
				      ['Excellent', parseFloat($("#q3a5").val())]
				    ]);

				    // Set chart options
				    var q3o = {'title':'3. Communication skill and Soft skill',
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
				      ['Far from Satisfied', parseFloat($("#q4a1").val())],
				      ['Poor', parseFloat($("#q4a2").val())],
				      ['Satisfactory', parseFloat($("#q4a3").val())],
				      ['Good', parseFloat($("#q4a4").val())],
				      ['Excellent', parseFloat($("#q4a5").val())]
				    ]);

				    // Set chart options
				    var q4o = {'title':'4. Relationship with Seniors and Subordinates',
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
				      ['Far from Satisfied', parseFloat($("#q5a1").val())],
				      ['Poor', parseFloat($("#q5a2").val())],
				      ['Satisfactory', parseFloat($("#q5a3").val())],
				      ['Good', parseFloat($("#q5a4").val())],
				      ['Excellent', parseFloat($("#q5a5").val())]
				    ]);

				    // Set chart options
				    var q5o = {'title':'5. Leadership, Team spirit and initiative',
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
				      ['Far from Satisfied', parseFloat($("#q6a1").val())],
				      ['Poor', parseFloat($("#q6a2").val())],
				      ['Satisfactory', parseFloat($("#q6a3").val())],
				      ['Good', parseFloat($("#q6a4").val())],
				      ['Excellent', parseFloat($("#q6a5").val())]
				    ]);

				    // Set chart options
				    var q6o = {'title':'6. Willingness to learn new techniques, adopt new ideas etc',
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
				      ['Far from Satisfied', parseFloat($("#q7a1").val())],
				      ['Poor', parseFloat($("#q7a2").val())],
				      ['Satisfactory', parseFloat($("#q7a3").val())],
				      ['Good', parseFloat($("#q7a4").val())],
				      ['Excellent', parseFloat($("#q7a5").val())]
				    ]);

				    // Set chart options
				    var q7o = {'title':'7. Ability to use work place equipment',
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
				      ['Far from Satisfied', parseFloat($("#q8a1").val())],
				      ['Poor', parseFloat($("#q8a2").val())],
				      ['Satisfactory', parseFloat($("#q8a3").val())],
				      ['Good', parseFloat($("#q8a4").val())],
				      ['Excellent', parseFloat($("#q8a5").val())]
				    ]);

				    // Set chart options
				    var q8o = {'title':'8. Ability to solve work place problems',
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
				      ['Far from Satisfied', parseFloat($("#q9a1").val())],
				      ['Poor', parseFloat($("#q9a2").val())],
				      ['Satisfactory', parseFloat($("#q9a3").val())],
				      ['Good', parseFloat($("#q9a4").val())],
				      ['Excellent', parseFloat($("#q9a5").val())]
				    ]);

				    // Set chart options
				    var q9o = {'title':'9. Innovativeness , creativity',
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
				      ['Far from Satisfied', parseFloat($("#q10a1").val())],
				      ['Poor', parseFloat($("#q10a2").val())],
				      ['Satisfactory', parseFloat($("#q10a3").val())],
				      ['Good', parseFloat($("#q10a4").val())],
				      ['Excellent', parseFloat($("#q10a5").val())]
				    ]);

				    // Set chart options
				    var q10o = {'title':'10. Involvement in social activities',
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
				      ['Far from Satisfied', parseFloat($("#q11a1").val())],
				      ['Poor', parseFloat($("#q11a2").val())],
				      ['Satisfactory', parseFloat($("#q11a3").val())],
				      ['Good', parseFloat($("#q11a4").val())],
				      ['Excellent', parseFloat($("#q11a5").val())]
				    ]);

				    // Set chart options
				    var  q11o = {'title':'11. Emphasis is on both fundamentals as well as latest developments',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var  q11chart = new google.visualization.PieChart(document.getElementById('q11'));
				    q11chart.draw(q11, q11o);
				    
				      //q12
				    var q12 = new google.visualization.DataTable();
				    q12.addColumn('string', 'Topping');
				    q12.addColumn('number', 'Slices');
				    q12.addRows([
				      ['Far from Satisfied', parseFloat($("#q12a1").val())],
				      ['Poor', parseFloat($("#q12a2").val())],
				      ['Satisfactory', parseFloat($("#q12a3").val())],
				      ['Good', parseFloat($("#q12a4").val())],
				      ['Excellent', parseFloat($("#q12a5").val())]
				    ]);

				    // Set chart options
				    var  q12o = {'title':'12. Imparts knowledge and skills required for the job market',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var  q12chart = new google.visualization.PieChart(document.getElementById('q12'));
				    q12chart.draw(q12, q12o);
				    
				    //q13
				    var q13 = new google.visualization.DataTable();
				    q13.addColumn('string', 'Topping');
				    q13.addColumn('number', 'Slices');
				    q13.addRows([
				      ['Far from Satisfied', parseFloat($("#q13a1").val())],
				      ['Poor', parseFloat($("#q13a2").val())],
				      ['Satisfactory', parseFloat($("#q13a3").val())],
				      ['Good', parseFloat($("#q13a4").val())],
				      ['Excellent', parseFloat($("#q13a5").val())]
				    ]);

				    // Set chart options
				    var  q13o = {'title':'13. Incorporates computer skills and other soft skills needed for employment.',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var  q13chart = new google.visualization.PieChart(document.getElementById('q13'));
				    q13chart.draw(q13, q13o);
				    
				  /*//q11
				    var q11 = new google.visualization.DataTable();
				    q11.addColumn('string', 'Topping');
				    q11.addColumn('number', 'Slices');
				    q11.addRows([
				      ['Far from Satisfied', parseFloat($("#q11a1").val())],
				      ['Not Satisfied', parseFloat($("#q11a2").val())],
				      ['Satisfied', parseFloat($("#q11a3").val())],
				      ['Happy', parseFloat($("#q11a4").val())],
				      ['Very Happy', parseFloat($("#q11a5").val())]
				    ]);

				    // Set chart options
				    var q11o = {'title':'11. Involvement in social activities',
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
				      ['Far from Satisfied', parseFloat($("#q12a1").val())],
				      ['Not Satisfied', parseFloat($("#q12a2").val())],
				      ['Satisfied', parseFloat($("#q12a3").val())],
				      ['Happy', parseFloat($("#q12a4").val())],
				      ['Very Happy', parseFloat($("#q12a5").val())]
				    ]);

				    // Set chart options
				    var q12o = {'title':'12. Simplicity and sense of belonging',
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
				      ['Far from Satisfied', parseFloat($("#q13a1").val())],
				      ['Not Satisfied', parseFloat($("#q13a2").val())],
				      ['Satisfied', parseFloat($("#q13a3").val())],
				      ['Happy', parseFloat($("#q13a4").val())],
				      ['Very Happy', parseFloat($("#q13a5").val())]
				    ]);

				    // Set chart options
				    var q13o = {'title':'13. Respect for values in life',
				    		'is3D': true, 
				    		'tooltip': {'text': 'percentage'},
				    		'legend': { 'position': 'labeled' },
				    		'height':300};

				    // Instantiate and draw our chart, passing in some options.
				    var q13chart = new google.visualization.PieChart(document.getElementById('q13'));
				    q13chart.draw(q13, q13o);*/
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