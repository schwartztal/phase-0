# Your Names
# 1) Dan Andersen
# 2)

# We spent [#] hours on this challenge.
# Things to refactor:
# 1) Error handling is confusing (move error counter to error section of code)
#    - initialize error_couter at 0 and count up
#    - return error as the error arise instead of creating an error counter
# 2)
# Bakery Serving Size portion calculator.

# defines our method, arguments, and starting values for our local variables
def serving_size_calc(item_to_make, order_quantity)
  recipes = {"cookie" => 1, "cake" =>  5, "pie" => 7}


  # Iterates through "library" hash and evaluates whether or not the item to make is in the library
  # AKA Validates the input
#   error_counter = 3
#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end
#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

  if recipes[item_to_make] == nil
  raise ArgumentError.new("#{item_to_make} is not a valid input")
end
  # Creates variable "serving_size" whith number of servings to make for the given "item_to_make"
#   serving_size = library.values_at(item_to_make)[0]
  needed_ingredients = recipes[item_to_make]
  # Calculates the leftovers based on the order size and the serving size
  leftover_ingredients = order_quantity % needed_ingredients

  # Specifies a particular condition where "if serving_size_mod = 0" do the following...
#   case serving_size_mod
#   when 0
#     # returns number of servings that can be made with any given item and whether or not you will have leftovers (if so, how many)
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end

  suggested_item = leftover_ingredients / recipes["cookie"]

  if leftover_ingredients == 0
    "Calculations complete: Make #{order_quantity/needed_ingredients} of #{item_to_make}"
  else
    "Calculations complete: Make #{order_quantity/needed_ingredients} of #{item_to_make}, you have #{leftover_ingredients} leftover ingredients. Suggested baking items: #{suggested_item} of cookies"
  end


end

# p serving_size_calc("pie", 7)
 p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)
#

# Case would be good for

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
  It's super important for anyone who will read your code later to make it flow logically, to pick variable names that are relevant and descrptive and to put in comments for anything clever or not immediately discernable that you're trying to do
Did you learn any new methods? What did you learn about them?
#values_at for hashes which lets you pull the values for multiple keys out at once and put them into an array
What did you learn about accessing data in hashes?
data in hashes can be accessed directly by calling the hash["key"]
What concepts were solidified when working through this challenge?



