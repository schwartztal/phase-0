// Design Basic Game Solo Challenge

// This is a solo challenge

// My Game: the card game War in javascript
// Goals: Each player tries to collect all the cards
// Characters: 2 players
// Objects: the full deck of cards to be shuffled and dealt, each player's deck of cards
// Functions: shuffle and deal, play war (compare cards and give lower card to winner, removing from loser, take no action if tie)


// Pseudocode for MVP v1
// DEFINE function shuffle which accepts argument 'array'
//        fill in what shuffle does
// DEFINE object fullDeck which contains all 52 cards of a deck in an array
// DEFINE function 'deal' which accepts no arguments
//      SHUFFLES the fullDeck object and
//      CREATES a new object for each player and passes the appropriate number of cards (52/2) into that deck
//      OUTPUTS a "ready to play" message
//
// DEFINE function 'play' which accepts no argument
//
//      COMPARES the value of the card on top of each player's deck and
//        ADDS the cards to the winning player's deck and
//        REMOVES the card from the losing player's deck(s)
//        OUTPUTS the winner of the round and the number of cards remaining in each player's deck
//

//Psuedocode for MVP v2
// DEFINE object fullDeck which contains all 52 cards of a deck in an array
// DEFINE function startGame which accepts 1 argument: numPlayers
//      CREATE a global variable numPlayers with the value passed in
//      SHUFFLES the deck array and
//      CREATES a new object for each player and passes the appropriate number of cards (52/numPlayers) into that deck
//      OUTPUTS a "ready to play" message
// DEFINE function play which accepts 1 argument 'rounds'
//    LOOPS for the value of 'rounds'
//    COMPARES the value of the card on top of each player's deck
//      ADSS the cards to the winning player's deck and
//      REMOVES the card from the losing player's deck(s)
//
//
// Initial Code - MVP 1.0

//shuffle function based on Fisher-Yates shuffle algorithm found here: http://bost.ocks.org/mike/shuffle/
//comments added in-line to demonstrate understanding of found code

// function shuffle(array) {
// // create three variables for use in the shuffle: length of the array (i.e. # of cards to shuffle), a temporary placeholder variable, and a random selection from the array.
//   var currentElement = array.length;
//   var tempValue;
//   var randomElement ;

//   // While there are still elements that haven't been shuffled...
//   while (currentElement !== 0) {

//     // Pick an element at random from the remaining elements
//     randomElement = Math.floor(Math.random() * currentElement);
//     // decrease the remaining element counter by 1
//     currentElement -= 1;

//     // And swap it with the current element.
//     // place the value of the last position in the array into a temporary variable
//     tempValue = array[currentElement];
//     // replace the value of the last position in the array with the value from the randomly selected location
//     array[currentElement] = array[randomElement];
//     // replace the value of the randomly selected location with the temporary placeholder (holding the value that was in the last position of the array)
//     array[randomElement] = tempValue;
//   }
// //after every element in the array has been moved, the function returns the new array
//   return array;
// }


// var fullDeck = [
// {"Ace of Spades" : 1}, {"Ace of Hearts": 1}, {"Ace of Clubs": 1},{"Ace of Diamonds": 1},
// {"Two of Spades" : 2}, {"Two of Hearts": 2}, {"Two of Clubs": 2},{"Two of Diamonds": 2},
// {"Three of Spades" : 3}, {"Three of Hearts": 3}, {"Three of Clubs": 3},{"Three of Diamonds": 3},
// {"Four of Spades" : 4}, {"Four of Hearts": 4}, {"Four of Clubs": 4},{"Four of Diamonds": 4},
// {"Five of Spades" : 5}, {"Five of Hearts": 5}, {"Five of Clubs": 5},{"Five of Diamonds": 5},
// {"Six of Spades" : 6}, {"Six of Hearts": 6}, {"Six of Clubs": 6},{"Six of Diamonds": 6},
// {"Seven of Spades" : 7}, {"Seven of Hearts": 7}, {"Seven of Clubs": 7},{"Seven of Diamonds": 7},
// {"Eight of Spades" : 8}, {"Eight of Hearts": 8}, {"Eight of Clubs": 8}, {"Eight of Diamonds": 8},
// {"Nine of Spades" : 9}, {"Nine of Hearts": 9},{"Nine of Clubs": 9},{"Nine of Diamonds": 9},
// {"Ten of Spades" : 10}, {"Ten of Hearts": 10}, {"Ten of Clubs": 10},{"Ten of Diamonds": 10},
// {"Jack of Spades" : 11}, {"Jack of Hearts": 11}, {"Jack of Clubs": 11},{"Jack of Diamonds": 11},
// {"Queen of Spades" : 12}, {"Queen of Hearts": 12}, {"Queen of Clubs": 12},{"Queen of Diamonds": 12},
// {"King of Spades" : 13}, {"King of Hearts": 13}, {"King of Clubs": 13},{"King of Diamonds": 13}]

// //var fullDeck = [{"Ace of Spades" : 1}, {"Ace of Hearts": 1}, {"Ace of Clubs": 1},{"Ace of Diamonds": 1} ]
// var deck1= []
// var deck2 = []

// function deal(cards) {
//   shuffle(cards);
//   deck1 = fullDeck.slice(0,26);
//   deck2 = fullDeck.slice(26,52);
//   console.log("The deck has been shuffled and dealt to Players 1 and 2. Let's play!")
// }

// function play(){
//   var card1 = deck1.shift();
//   var card2 = deck2.shift();

//   for (key in card1) {
//     var player1 = (card1[key]);
//    console.log("Player 1 plays the ", key);
//   }
//   for (key in card2) {
//     var player2 = (card2[key]);
//  console.log("Player 2 plays the", key);
//   }

// if (player1 > player2) {
//  console.log("Player 1 wins the hand");
//   deck1.push(card1, card2);
// }
// else if (player2 > player1) {
//  console.log("Player 2 wins the hand");
//   deck2.push(card1, card2);
// }
// else {
//   console.log("It's a tie");
//   deck1.push(card1);
//   deck2.push(card2);
// }
//  // console.log("Player 1 now has " + deck1.length + " cards");
//   //console.log("Player 2 now has " + deck2.length + " cards");
// }


// // Driver Code

// deal(fullDeck);//console.log("deck 1 is " , deck1);
// //counter for how many hands played
// var handsPlayed = 0;
// var maxHands = 500;
// //loop to run the game indefinitely until someone "wins"

// while (deck1.length < 40) {
//   play(fullDeck);
//   handsPlayed++;
//   if (deck1.length <  10) {console.log("Player 2 wins!"); break;}
//   if (deck1.length > 39) {console.log("Player 1 wins!"); break;}
//   if (handsPlayed > maxHands) {console.log("Whew, we've played " + handsPlayed + " rounds and still can't determine a winner. Let's just go have a beer!"); break;}

// }
// if (handsPlayed < maxHands) {console.log("This game lasted for " + handsPlayed + " rounds");}

// Refactored Code


var fullDeck = [
{"Ace of Spades" : 1}, {"Ace of Hearts": 1}, {"Ace of Clubs": 1},{"Ace of Diamonds": 1},
{"Two of Spades" : 2}, {"Two of Hearts": 2}, {"Two of Clubs": 2},{"Two of Diamonds": 2},
{"Three of Spades" : 3}, {"Three of Hearts": 3}, {"Three of Clubs": 3},{"Three of Diamonds": 3},
{"Four of Spades" : 4}, {"Four of Hearts": 4}, {"Four of Clubs": 4},{"Four of Diamonds": 4},
{"Five of Spades" : 5}, {"Five of Hearts": 5}, {"Five of Clubs": 5},{"Five of Diamonds": 5},
{"Six of Spades" : 6}, {"Six of Hearts": 6}, {"Six of Clubs": 6},{"Six of Diamonds": 6},
{"Seven of Spades" : 7}, {"Seven of Hearts": 7}, {"Seven of Clubs": 7},{"Seven of Diamonds": 7},
{"Eight of Spades" : 8}, {"Eight of Hearts": 8}, {"Eight of Clubs": 8}, {"Eight of Diamonds": 8},
{"Nine of Spades" : 9}, {"Nine of Hearts": 9},{"Nine of Clubs": 9},{"Nine of Diamonds": 9},
{"Ten of Spades" : 10}, {"Ten of Hearts": 10}, {"Ten of Clubs": 10},{"Ten of Diamonds": 10},
{"Jack of Spades" : 11}, {"Jack of Hearts": 11}, {"Jack of Clubs": 11},{"Jack of Diamonds": 11},
{"Queen of Spades" : 12}, {"Queen of Hearts": 12}, {"Queen of Clubs": 12},{"Queen of Diamonds": 12},
{"King of Spades" : 13}, {"King of Hearts": 13}, {"King of Clubs": 13},{"King of Diamonds": 13}]

var deck1= [];
var deck2 = [];


function shuffle(array) {
  var currentElement = array.length, tempValue, randomElement ;

  while (currentElement !== 0) {
    randomElement = Math.floor(Math.random() * currentElement);
    currentElement -= 1;

    tempValue = array[currentElement];
    array[currentElement] = array[randomElement];
    array[randomElement] = tempValue;
  }
  return array;
}

function deal(cards) {
  shuffle(cards);
  deck1 = cards.slice(0,26);
  deck2 = cards.slice(26,52);
  console.log("The deck has been shuffled and dealt to Players 1 and 2. Let's play!")
}

function playRound(){
  var card1 = deck1.shift();
  var card2 = deck2.shift();

  for (key in card1) { var player1 = (card1[key]);}
  for (key in card2) {var player2 = (card2[key]);}

if (player1 > player2) {deck1.push(card1, card2);}
else if (player2 > player1) {deck2.push(card1, card2);}
else {deck1.push(card1); deck2.push(card2);}
}

function playGame(max){
  deal(fullDeck);
var maxHands = max;
var handsPlayed = 0;
while (deck1.length < 40) {
  playRound(fullDeck);
  handsPlayed++;
  if (deck1.length <  10) {console.log("Player 2 wins!"); break;}
  if (deck1.length > 39) {console.log("Player 1 wins!"); break;}
  if (handsPlayed > maxHands) {console.log("Whew, we've played " + handsPlayed + " rounds and still can't determine a winner. Let's just go have a beer!"); break;}
}
if (handsPlayed < maxHands) {console.log("This game lasted for " + handsPlayed + " rounds");}
}

// Driver Code
//call the function playGame with the desired number of rounds as the parameter
playGame(10000);








// Reflection
//What was the most difficult part of this challenge?
// By far the most difficut part of this challenge for me was adapting from the syntax of Ruby to Javascript. I kept trying to call methods and functions in the Ruby style and having it not work. Close runner up was having to create a shuffle function because it's not a built in method in Javascript as it is in Ruby.
//What did you learn about creating objects and functions that interact with one another?
// scope is important, i had some issues with creating objects within a function that needed to be accessed by other functions. the correct solution here was to define the objects outside the function and manipulate them from within the funcition (example is deck1 & deck2). Alternately there were a number of temporary objects that I needed only within the function and could disard after their use, so here the other approach was best: declare the variable within the scope of the function.
//Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work? Not really, but I learned about a number of built in methods for the initial solution. push and shift in particular... these take elements from the front of an array (shift) and add them to the end of an array (push).
//How can you access and manipulate properties of objects?
// in javascript your can directly access and manipulate properties of objects with the call object.property. I don't actually end up using this at all in my game since I've structured the cards as an array of hashes rather than as properties of an object.
//
//
//
//
//
//