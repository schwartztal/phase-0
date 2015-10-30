# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides (>0)
# Output: an object "Die" with property sides and method roll which returns a random numer between 1 and the # of sides
# Steps: initalize the die with a number of sides, returning an error if sides < 1.
# create a method sides that returns the # of sides in the die
# create a method roll that returns a random number between 1 and # of sides



# 1. Initial Solution

class Die
  def initialize(sides)
        if sides < 1
          raise ArgumentError.new("Please enter a valid number of sides")
        end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
     p rand(@sides) + 1
  end
end

dice = Die.new(6)
#dice.sides
dice.roll

# 3. Refactored Solution







# 4. Reflection
=begin

What is an ArgumentError and why would you use one?
ArgumentError is the general error code for when an argument being passed into a method or class does not meet the criteria required (or otherwise defined) for that argument. You use it to notify users that their arguments being passed in are not valid.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
rand() was used in conjunction with the instance variable @sides to roll the dice within the pre-defined range of integers that represent the number of sides on the die

What is a Ruby class?
A Ruby class is way to organize groupings of objects with similiar and pre-defined behaviors and variables. It's a convenient and efficient way to group the methods because you can set them up once in the class and then churn out a bunch of objects. One neat aspect of classes is that they inherit properties from their parent class (or superclass) but can also override those properties easily.

Why would you use a Ruby class?
When you will be creating multiple objects that each need to have the same methods, and you don't want to define the methods over and over.

What is the difference between a local variable and an instance variable?
A local variable is available only within the scope or context in which it was created (a loop or method for example). An instance variable is tied to a particular instance of a class and forms a part of the state of an object. In plain english this means that a local variable of height = 5 is used temporarily for whatever operation we're executing. While @height = 5 sets the height to 5 and makes that variable available for use anywhere within the class.

Where can an instance variable be used?
An instance variable can be used inside a class.

=end