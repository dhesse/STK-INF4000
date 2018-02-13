google.charts.load('current', {packages: ['corechart']});

google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    
    
    $.getJSON('chartdata.json', function(json_data) {
        var data = new google.visualization.DataTable();
        data.addColumn('number', 'Time');
        data.addColumn('number', 'Count');
        data.addRows(json_data);
        var chart = new google.visualization.LineChart(document.getElementById('chart_goes_here'));
    chart.draw(data);
    });
}