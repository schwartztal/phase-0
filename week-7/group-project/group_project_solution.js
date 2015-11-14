
/*
User Story 1:
As a user I want to find the sum of two lists of numbers and have the answer returned as a new list named numSums.
*/
function sum(numberList1, numberList2){
  var numSums = [0,0];
  for (var i = 0; i < numberList1.length; i++){
    numSums[0] += numberList1[i];
  }
  for (var j = 0; j < numberList2.length; j++){
    numSums[1] += numberList2[j];
  }
  return numSums;
}

/*
User Story 2:
As a user I want to find a number that represents for a list of numbers: the sum of the numbers, divided by half the length of the list, plus the smallest value in the list. I want to do this for two lists of numbers and have the answer returned as a new list named numMeans.
*/
function mean(numberList1, numberList2){
  var numMeans = [];
  numMeans = sum(numberList1, numberList2);
  numMeans[0] = numMeans[0]/(numberList1.length/2) + Math.min.apply(null, numberList1);
  numMeans[1] = numMeans[1]/(numberList2.length/2) + Math.min.apply(null, numberList2);
  return numMeans;
}

/*
User Story 3:
As a user I want to find the median for a list of numbers. I want to do this for two lists of numbers at once and have the answer returned as a new list named numMedians.
*/
function median(numberList1, numberList2){
  var numMedians = [];
  var sortedList1 = [];
  var sortedList2 = [];
  sortedList1 = numberList1.sort(function(a, b){return a-b});
  sortedList2 = numberList2.sort(function(a, b){return a-b});

  if (sortedList1.length % 2 != 0) {
    numMedians[0] = sortedList1[Math.floor(sortedList1.length/2)];
  }
  else {
    numMedians[0] = (sortedList1[sortedList1.length / 2] + sortedList1[(sortedList1.length / 2) + 1]) / 2;
  }
  if (sortedList2.length % 2 != 0) {
    numMedians[1] = sortedList2[Math.floor(sortedList2.length/2)];
  }
  else {
    numMedians[1] = (sortedList2[sortedList2.length / 2] + sortedList1[(sortedList2.length / 2) + 1]) / 2;
  }
  return numMedians;

}



// DRIVER CODE

// sum
var arrayOne = [1, 1, 1, 1, 1, 1];
var arrayTwo = [2, 6, 4, 8, 10];

console.log(sum(arrayOne,arrayTwo));



// mean
console.log(mean(arrayOne,arrayTwo));

// median


console.log(median(arrayOne,arrayTwo));

