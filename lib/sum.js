var sum = function(array) {
  var total, i;
  total = array[0];
  for(i = 1; i < array.length; i++) {
    total += array[i];
  }
  return total;
};
