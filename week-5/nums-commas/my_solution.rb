# Numbers to Commas Solo Challenge

# I spent [1.25] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a postive integer 
# What is the output? (i.e. What should the code return?) a string with commas inserted every 3 numbers
# What are the steps needed to solve the problem?

#1) turn integer input to a string
#2) find the length of the string
#3) split string into 3 number long sections
#4) re-assemble pieces into a single string, inserting commas between each piece


# 1. Initial Solution
=begin
def separate_comma(input)
	length = input.to_s.length
	commas = ((length-1) / 3).to_i
	i=0
	comma_delimited = ""
		while i <= commas do 
			if i < commas
				comma_delimited << input.to_s.reverse[(3*i)..(3*i+2)] + ","
			else
				comma_delimited << input.to_s.reverse[(3*i)..(3*i+2)] 
			end
#	puts i
#	puts comma_delimited.reverse
			i += 1
		end
	return comma_delimited.reverse
	puts comma_delimited.reverse
end
=end


# 2. Refactored Solution

def separate_comma(input)
	input.to_s.chars.reverse.each_slice(3).map(&:join).join(",").reverse

end

# 3. Reflection
=begin
	
What was your process for breaking the problem down? What different approaches did you consider?
I broke the problem down by first analyzing the input to figure out how many commas would need to be inserted, then breaking the integer input to strings of 3 digits, and re-assembling with a comma. 
Was your pseudocode effective in helping you build a successful initial solution?
Yes, pretty effective although I decided to use a loop in my initial solution because I did not know the methods for directly  splitting and re-assembling the string. This wasn't reflected in the psuedocode version. 
What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
.chars (to split the entire string into an array built of each individual character)
.each_slice (to select 3 characters at a time)
.map (to join the the selected group of characters into one group)
.join (to join the groups of characters back into a single string and insert the comma)
How did you initially iterate through the data structure?
a while loop with a counter that built up to the calculated number of commas that needed to be inserted
Do you feel your refactored solution is more readable than your initial solution? Why?	
The refactored solution is much more condensed, but arguably less readable for me at the moment because I don't know the new methods applied very well. 
=end
