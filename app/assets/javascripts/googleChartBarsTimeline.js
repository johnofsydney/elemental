
const doTheTimeline = function (e) {
  console.log("here");
  console.log(e);

  f1 = _.filter(e, function(i){
    return (typeof i.year === 'number' && i.year > 1000 )
  })



  // return typeof value === 'number'



  // console.log("filtered", f1);

  var counts = _.countBy(f1,'year');
  console.log("counts by year", counts);



  let version = _.pairs(counts)
  // console.log("Version", version);

  // let groups = _.groupBy(e, 'year')
  // console.log("groups", groups);
  //
  // let counts2 = _.countBy(groups, 'family')
  // console.log("counts2", counts2);


    barDataArray = version
    _.each(barDataArray, function(a) {
      a[0] = parseInt(a[0]);
    })



    barDataArray.unshift(["Year", "Number"])

    // console.log(barDataArray);


      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff() {
        var data = new google.visualization.arrayToDataTable(barDataArray);

        var options = {
          width: 800,
          legend: { position: 'none' },
          chart: {
            title: 'Timeline of Elements discovery / description'},
          axes: {
            x: {

            }
          },
          bar: { groupWidth: "50%" }
        };

        var chart = new google.charts.Bar(document.getElementById('discovery_timeline'));
        // Convert the Classic options to Material options.
        chart.draw(data, google.charts.Bar.convertOptions(options));
      };





}
