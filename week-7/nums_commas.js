// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
/*
INPUT: Integer
OUTPUT: A string made with the numbers from the input integer with commas inserted every 3 numbers

DEFINE an empty object "commasAdded" that will hold the output

DEFINE a function called addCommas which accepts 1 parameter (integer number)
  DEFINE a variable commas that calculates how many commas need to be inserted by dividing integer length by 3 and rounding up, then subtracting 1
  TURN the integer in to a string
  SPLIT the string into an array of each number
  LOOP through the array elements length / 3 times
    SPLICE a comma element into the array every 3 positions counting from the end
  JOIN the commasAdded array elements back to a single string




*/

// Initial Solution

// var a = 12345678912345;
// var commasAdded = []

// function addCommas(integer){
//   temp = integer.toString().split("");
//   commas = Math.ceil(temp.length/3)-1;
//   console.log(commas);
//   for (var i=0; i < commas; i++){
//     console.log(i);
//     temp.splice(-3*(1+i)-i,0,",");
//     commasAdded = temp.join("");
//   }
//   return commasAdded;
// }

// addCommas(a)
// console.log(commasAdded)


// Refactored Solution
var a = 1234567891234567;
var commasAdded = []

function addCommas(integer){
  tempArray = integer.toString().split("");
  commas = Math.ceil((tempArray.length/3)-1);
  for (var i=0; i < commas; i++){
    commaLocation = -3*(1+i)-i;
    tempArray.splice(commaLocation,0,",");
    commasAdded = tempArray.join("");
  }
  return commasAdded;
}

addCommas(a)
console.log(commasAdded)

// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently? Fewer built in methods meant that we needed to approach this from a little bit more of a thoughtful perspective and be clever about how to use the available methods to create a working solution.
What did you learn about iterating over arrays in JavaScript? I didn't use the array iteration approach in my solution, but iterating over arrays is much harder in javascript since the enumerator methods from Ruby don't apply. Instead you use a for loop with a counter to iterate through each index in the array, essentialy coding by hand what .each does in Ruby
What was different about solving this problem in JavaScript?
Since we couldn't go through each position of the array more easily than writing a for loop anyway, I approached this problem different and incorporated the slice() method with a pre-calculate number of commas to insert and solved the problem directly instead of the split, reverse, insert, reverse, join approach we used last time.
What built-in methods did you find to incorporate in your refactored solution?
slice() was the big one, which allows you to replace or insert (in this case we inserted) a string into an array at a defined position (negative position counts from the end of the array and was used here)/