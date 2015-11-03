# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 1) a guess expressed as an integer or 2) a query about whether the game was just solved
# Output: 1) result of the guess (low, high, correct) or 2) true / false
# Steps:
# keep track of the last guess and whether it was correct, update with each guess
# compare the guess to the answer and return the associated response.



# Initial Solution

# class GuessingGame
#   def initialize(answer)
#    if answer.kind_of?(Integer) == false
#     raise ArgumentError.new("What, are you trying to make this a trick game?! Please enter a valid integer answer for this game")
#   end
#     @answer = answer
#     @lastguess = nil
#     @solved = false
#   end

#   # Make sure you define the other required methods, too
#   def solved?
#     @solved
#   end

#   def guess(entry)
#     if entry > @answer
#       :high
#       @solved = false
#     elsif entry < @answer
#       :low
#       @solved = false
#     else
#       :correct
#       @solved = true
#     end
#   end
# end

# game = GuessingGame.new(10)
# game.solved?
# game.guess(10)
# game.solved?


# Refactored Solution

class GuessingGame
  def initialize(answer)
   if answer.kind_of?(Integer) == false
    raise ArgumentError.new("What, are you trying to make this a trick game?! Please enter a valid integer answer for this game")
  end
    @answer = answer
    @solved = false
  end

  # Make sure you define the other required methods, too
  def solved?
    @solved
  end

  def guess(entry)
    if entry > @answer
      @solved = false
      :high
    elsif entry < @answer
      @solved = false
      :low
    else
      @solved = true
      :correct
    end
  end
end






# Reflection

=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

When should you use instance variables? What do they do for you?
  You use instance variables when you want to be able to store those and access those variables outside of the scope in which they are set. Instance variables become a characteristic of the instantiated class object and can be recalled directly or used in another method.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  symbols are immutable (meaning unchangeable) string objects. The benefits of symbols is that they can't be accidentally altered in a subsequent part of the program and break the location in which they're reference. They're also computationally more efficient than strings in that each instance of a symbol is the same objectid, where each instance of a string is a different objectid (makes sense since each string could subesequently be changed or modified).

= end