
const doTheBarChart = function (r) {

  barDataArray = [["Element", "Quantity"]]
  for (var i = 0; i < r.length; i++) {
    barDataArray.push([r[i].element.name, r[i].quantity])
  }

  google.charts.load('current', {'packages':['bar']});
  google.charts.setOnLoadCallback(drawStuff);

  function drawStuff() {
    var data = new google.visualization.arrayToDataTable(barDataArray);

    var options = {
      width: 800,
      legend: { position: 'none' },
      chart: {
        title: 'Quantities of Resource (Tonnes)'},
      axes: {
        x: {
          // 0: { side: 'top', label: 'White to move'} // Top x-axis.
        }
      },
      bar: { groupWidth: "50%" }
    };

    var chart = new google.charts.Bar(document.getElementById('bar_chart_div'));
    // Convert the Classic options to Material options.
    chart.draw(data, google.charts.Bar.convertOptions(options));
  };

}
