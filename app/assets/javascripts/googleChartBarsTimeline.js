
const doTheTimeline = function (e) {
  console.log(e);



  // console.log(e[0].name);
  // console.log(e[0].year);
  //
  barDataArray = [["Family"]]
  //
  //
  //
  for (var i = 0; i < e.length; i++) {
    // console.log(i);
    // console.log((e[i].family));
    if (barDataArray[0].indexOf(e[i].family) === -1) {
      // console.log("yes");
      barDataArray[0].push(e[i].family)
    }

    for (var j = 0; j < e.length; j++) {
      if (e[i].year && ( barDataArray[j][0] !== e[i].year )  ) {
        barDataArray.push([e[i].year])



      }
    }

    console.log(barDataArray[i][0]);

    // console.log(barDataArray);

  }


  //
  //
  // for (var i = 0; i < e.length; i++) {
  //   barDataArray.push([e[i].year, 1])
  // }
  //
  // console.log(barDataArray);




  //
  //
  // google.charts.load('current', {'packages':['bar']});
  // google.charts.setOnLoadCallback(drawStuff);
  //
  // function drawStuff() {
  //   var data = new google.visualization.arrayToDataTable(barDataArray);
  //
  //   var options = {
  //     width: 800,
  //     legend: { position: 'none' },
  //     chart: {
  //       title: 'Discovery of elements'},
  //     axes: {
  //       x: {
  //         // 0: { side: 'top', label: 'White to move'} // Top x-axis.
  //       }
  //     },
  //     bar: { groupWidth: "10%" }
  //   };
  //
  //   var chart = new google.charts.Bar(document.getElementById('discovery_timeline'));
  //   // Convert the Classic options to Material options.
  //   chart.draw(data, google.charts.Bar.convertOptions(options));
  // };
  //




}
