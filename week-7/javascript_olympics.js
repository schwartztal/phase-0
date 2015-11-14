 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up


// Bulk Up
var athlete1 = {name: "Sarah Hughes", event: "Ladies Singles"}
var athlete2 = {name: "Bob Hughes", event: "Mens Singles"}
var athletes = [athlete1, athlete2]

function eventWon(athletes) {
  for (var i=0; i < athletes.length; i++) {
    athletes[i].win = athletes[i].name + " won the event " + athletes[i].event;
    console.log(athletes[i].win);

  }
}
eventWon(athletes)


// // Jumble your words

var string = "StringToReverse"
function reverseString(string){
  console.log(string.split("").reverse().join(""));
}

reverseString(string)

// 2,4,6,8

var evenArray =[]

function evenNumbers(array){

for (var i=0; i < array.length; i++){
  if(array[i] % 2 == 0){
    evenArray.push(array[i])
    }
  }
}

evenNumbers([1,2,3,4,5,6])
console.log(evenArray)

// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?

What are constructor functions?
Constructor functions use the constructor "this" as a placeholder for the object being modified and allow you to define the properties of the object using this.property = "property". Rather than the literal notation object { property : "property" }
How are constructors different from Ruby classes (in your research)?
They're similiar in some ways, but JS constructors don't automatically inherit the class properties when instantiated.

