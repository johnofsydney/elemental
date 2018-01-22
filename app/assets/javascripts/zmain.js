// last file to load, hence the stupid z prefix.
// purpose of this file is to use document.ready to check what page we're on in order to start relevant functions


$(document).ready( function() {
  console.log("jquery ready");
  if ( $('#rotatingElement').length ) {
    // the following code will run IFF '#rotatingElement' exists on the current page.
    // if it exists as an empty div (on the element show page), before any content is added it will have length = 0
    // on other poages, it doesnt exist, it's null and therefore has no length.
    console.log("element show page... rendering three.js element");

    n = $('#electrons').data('electrons')
    init(n);
  }

  if ( $('#regions_div').length ) {
    // similar for regions_div which is the geoChart container
    r = $('#chart').data('resources')
    // console.log(r);
    doTheGeoChart (r)
  }

})


// https://stackoverflow.com/questions/18162197/rails-pass-data-to-javascript
