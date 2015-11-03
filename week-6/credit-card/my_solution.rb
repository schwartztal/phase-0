# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Brian Bensch].
# I spent [1.25] hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number (need to validate length)
# Output: true or false
# Steps:
# starting at second last digit, double every other digit
# add the individual digits from the resulting array (splitting anything greater than 10 into the component digits)
# mod 10 that result. if the remainder is zero return true, otherwise return false


# Initial Solution

# # Don't forget to check on initialization for a card length
# # of exactly 16 digits

# class CreditCard
#   def initialize(card_number)
#           raise ArgumentError.new ("Not a valid 16 digit card number") if card_number.to_s.length != 16
#           @card_number = card_number
#   end

# def check_card
#   self.check_sum
# end


# def check_sum
#   self.sum_digits
#   if @sum % 10 == 0
#     true
#   else
#     false
#   end
# end

# def split_to_digit
#   @split_card = @card_number.to_s.split(//).map!{|p| p.to_i}
# end

# def double_every_other_digit
#   self.split_to_digit
#   @doubled_digits = @split_card
#   i = 0
#   8.times do
#     @doubled_digits[i] = @doubled_digits[i] * 2
#     i += 2
#   end
# @doubled_digits
# end

# def sum_digits
#   self.double_every_other_digit
#   @sum = 0
#   @split_digits = @doubled_digits.join.split(//).map!{|p| p.to_i}
#   @split_digits.each{|x| @sum +=x}
# end

# end

# cc = CreditCard.new(6666666666666666)
# p cc.split_to_digit
# p cc.double_every_other_digit
# p cc.sum_digits
# p cc.check_card


# Refactored Solution

class CreditCard
  def initialize(card_number)
          raise ArgumentError.new ("Not a valid 16 digit card number") if card_number.to_s.length != 16
          @card_number = card_number
  end

def check_card
  self.sum_digits
  if @sum % 10 == 0
    true
  else
    false
  end
end

def split_to_digits_and_double
  @doubled_digits = @card_number.to_s.split(//).map!{|p| p.to_i}
   i = 0
  8.times do
    @doubled_digits[i] = @doubled_digits[i] * 2
    i += 2
  end
@doubled_digits
end

def sum_digits
  self.split_to_digits_and_double
  @sum = 0
  @split_digits = @doubled_digits.join.split(//).map!{|p| p.to_i}
  @split_digits.each{|x| @sum +=x}
end

end

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
Agreeing on how we would structure the various steps of the algorithm across multiple methods. I was leaning towards a single method, Brian leaned towards splitting every action into its own method. In the end we started with the more verbose each action as a method and then refactored down to 3 methods.
What new methods did you find to help you when you refactored?
  using self. to call other methods of the class
What concepts or learnings were you able to solidify in this challenge?
.join and .split usage