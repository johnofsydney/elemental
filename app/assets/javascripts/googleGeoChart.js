
const doTheGeoChart = function (r) {
  console.log("***do the geoChart*****");

  geoDataArray = [["Country", "Quantity"]]
  for (var i = 0; i < r.length; i++) {
    geoDataArray.push([r[i].country.name, r[i].quantity])
  }

  console.log(geoDataArray);
  google.charts.load('current', {
   'packages':['geochart'],
   'mapsApiKey': 'AIzaSyB7nJABK2HEiQKo4V-FCEMWX5xag8vVJeA'
  });
  google.charts.setOnLoadCallback(drawRegionsMap);

  function drawRegionsMap() {
   var data = google.visualization.arrayToDataTable(geoDataArray);

   var options = {};

   var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

   chart.draw(data, options);
  }

}
