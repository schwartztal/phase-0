# Pad an Array

# I worked on this challenge [by myself, with: Jon Clayton]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size do
    array << value
  end
  return array
  # Your code here
end

def pad(array, min_size, value = nil) #non-destructive
  new = [] + array
  while new.length < min_size do
    new << value
  end
  return new
end
=end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  array.fill(value,array.length,min_size-array.length)
end

def pad(array, min_size, value = 'x') #non-destructive
	Array.new(array).fill(value,array.length,min_size-array.length)
  
end

=begin
# 4. Reflection


Were you successful in breaking the problem down into small steps?
Yes, we did pretty well in breaking down the problem into each of the requesite steps 
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Yes, the psuedocode served as a good guide for writing our initial code. The only challenge we ran into was that we ended up not needing some of the steps described in psuedocode because our while loop negated them.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
The initial solution we passed to rspec was, because we tested in the code itself to see if the output was as expected. That said, we initially struggled with making the non-destructive method actually be non-destructive. But we found that forcing a new array and completing that action before modifying it was the trick .
When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes we found the .fill method which let us do the entire operation in a single line
How readable is your solution? Did you and your pair choose descriptive variable names?
Pretty readable I think, we only created a single variable which we could have named something a little more descriptive than new... perhaps new_array.
What is the difference between destructive and non-destructive methods in your own words?
destructive method alters the object being operated on while non-destructive leaves the object itself alone and instead creates a new copy with the modifications.

