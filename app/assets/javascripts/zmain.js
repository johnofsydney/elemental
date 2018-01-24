// last file to load, hence the stupid z prefix.
// purpose of this file is to use document.ready to check what page we're on in order to start relevant functions













$(document).ready( function() {
  console.log("jquery ready");
  if ( $('#rotatingElement').length ) {
    // the following code will run IFF '#rotatingElement' exists on the current page.
    // if it exists as an empty div (on the element show page), before any content is added it will have length = 0
    // on other poages, it doesnt exist, it's null and therefore has no length.
    console.log("element show page... rendering three.js element");

    n = $('#rotatingElement').data('electrons')
    init(n);
  }

  if ( $('#regions_div').length ) {
    // similar for regions_div which is the geoChart container
    r = $('#regions_div').data('resources')
    // console.log(r);
    doTheGeoChart (r)
  }


  if ( $('#bar_chart_div').length ) {
    // similar for regions_div which is the geoChart container
    r = $('#bar_chart_div').data('resources')
    // console.log(r);
    doTheBarChart (r)
  }


  if ( $('#discovery_timeline').length ) {
    // similar for regions_div which is the geoChart container
    r = $('#discovery_timeline').data('elements')
    // console.log(r);
    doTheTimeline (r)
  }






  particlesJS.load('particles-js', '/particles.json', function (){
    console.log("file loaded")
  })


})


// https://stackoverflow.com/questions/18162197/rails-pass-data-to-javascript

// doTheTimeline
