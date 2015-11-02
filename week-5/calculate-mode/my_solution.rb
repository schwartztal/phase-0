# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array of strings and integers
# What is the output? (i.e. What should the code return?) the most frequently found element in the array
# What are the steps needed to solve the problem?
# create a new hash that will hold count information
# go through each element in the array and increment the count for hash key of that string/value
# return an array of the keys for the largest values in the hash.


# 1. Initial Solution
=begin
def mode(array)
  count = Hash.new(0)
  array.each do |x|
    count[x] += 1
  end
  array_max_count = count.values.max
  most_common = count.delete_if do |key, value| value < array_max_count end
  most_common.keys.to_a
end

#b = [1, 2, 3, 4, 5, 5, 5, 7]
#mode(b)
=end
# 3. Refactored Solution

def mode(array)
  count = Hash.new(0)
  array.each do |x|
    count[x] += 1
  end
  array_max_count = count.values.max
  most_common = count.delete_if do |key, value| value < array_max_count end
  most_common.keys.to_a
end



# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
Following the instrucitons, I used a hash. This makes sense on one level because it allows us to create an intermediary data structure that has all the keys and their frequencies and this could be useful if we wanted to do something else with it rather than just find the mode. On the other hand this introduced some complexity and couldn't be refactored to be as efficient as if we'd stayed with just an array.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?


What issues/successes did you run into when translating your pseudocode to code?
Finding the right method to extract the most common keys, or the hash keys with the largest value wasn't easy. Even in the final solution I couldn't figure out why the re-factor to a single line of count.values.max didn't work.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
Good ole trusty .each do and the new to me .delete_if do. Neither was difficult to implement but there's something about the manner in which .delete_if iterates through the array that I don't understand and required me to add an extra step of calcuating the max value outside of the loop.