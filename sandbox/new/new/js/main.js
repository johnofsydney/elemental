console.log("loaded");

var numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ];
var bumpyArr = ["hello", "maytag", [[[["sigmonster"]], "swizzle"]]];
var uncompactedArr = [ "hello", false, NaN, undefined, "quantom bogo-sort" ];

var arrToTransform = [[ "age", "location" ], [ NaN, undefined ]];

//
// Create an array of every five numbers between 30 and 101
// Turn bumpyArr into one flat array (no nested arrays)
// Remove all of the falsey elements in the uncompactedArr

// Find all of the unique elements in the following arrays - [ 1, 25, 100 ], [ 1, 14, 25 ] and 24, Infinity, -0

// Find the index of the first element in numbers that is over 7 and is even

// Turn arrToTransform into an object that looks like this - { age: NaN, location: undefined }



r5 = _.range(30, 101, 5)
console.log(r5);


f1 = _.flatten(bumpyArr)
console.log(f1);

tr1 = _.compact(uncompactedArr)
console.log(tr1);

un = _.unique(_.flatten([[ 1, 25, 100 ], [ 1, 14, 25 ],[24, Infinity, -0]]))

fi = _.findIndex(numbers, function(n) {
  return ((n > 7) && (n % 2 === 0))
})
console.log(fi);






$(document).ready( function() {
  console.log("ready");
})
