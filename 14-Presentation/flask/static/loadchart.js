
// Load the Visualization API and the corechart package.
google.charts.load('current', {'packages':['corechart']});

// Set a callback to run when the Google Visualization API is loaded.
google.charts.setOnLoadCallback(drawChart);

// Callback that creates and populates a data table,
// instantiates the pie chart, passes in the data and
// draws it.
function drawChart() {

    // Create the data table.

    $.getJSON('data.json', function(data) {
	console.log(data);
	var chart_data = new google.visualization.DataTable();
	var i;
	for (i = 0; i < data.columns.length; i += 1)
	    chart_data.addColumn(data.columns[i].type,
				 data.columns[i].name);
	chart_data.addRows(data.rows);
	
	var options = {
	    hAxis: {
		title: 'Time'
	    },
	    vAxis: {
		title: 'Popularity'
	    }
	};
	
	var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
	chart.draw(chart_data, options);
    })
};
