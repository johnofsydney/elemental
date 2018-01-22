console.log("geoChart Loaded");

const doTheGeoChart = function (r) {
  console.log("***do the geoChart*****");
  console.log(r);

  console.log(r[0].country.name);
  console.log(r[0].quantity);

  geoDataArray = [["Country", "Quantity"]]
  for (var i = 0; i < r.length; i++) {
    geoDataArray.push([r[i].country.name, r[i].quantity])
  }

  console.log(geoDataArray);
  google.charts.load('current', {
   'packages':['geochart'],
   // Note: you will need to get a mapsApiKey for your project.
   // See: https://developers.google.com/chart/interactive/docs/basic_load_libs#load-settings
   'mapsApiKey': 'AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY'
  });
  google.charts.setOnLoadCallback(drawRegionsMap);

  function drawRegionsMap() {
   var data = google.visualization.arrayToDataTable(geoDataArray);

   var options = {};

   var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

   chart.draw(data, options);
  }

}
