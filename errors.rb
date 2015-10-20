# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# phase-0 [week4] :> ruby errors.rb
# errors.rb:170: syntax error, unexpected end-of-input, expecting keyword_end

# 1. What is the name of the file with the error?	
# error.rb
# 2. What is the line number where the error occurs?
#	line 170
# 3. What is the type of error message?
# syntax
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end to the input, when it was expecting an "end"
# 5. Where is the error in the code?
# The error is between line 15 and 16, where we need a new line with an end to finish the while loop.
# 6. Why did the interpreter give you this error?
# As written, the while loop is infinite (without an end) and can not complete evaluation

# --- error -------------------------------------------------------

#south_park
# errors.rb:38:in `<main>': undefined local variable or method `south_park' for main:Object (NameError )
# 1. What is the line number where the error occurs?
# 38
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# that the variable or method in question is 'south_park'
# 4. Where is the error in the code?
# on line 38, the entire snippet that was executed
# 5. Why did the interpreter give you this error?
# because we need to tell Ruby what south_park is (either a variable or method)

# --- error -------------------------------------------------------

# cartman()
# errors.rb:53:in `<main>': undefined method `cartman' for main:Object (NoMethodError) 
# 1. What is the line number where the error occurs?
# 53
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# method in question is named cartman
# 4. Where is the error in the code?
# in line 53, we are invoking the method cartman, but this has not yet been defined
# 5. Why did the interpreter give you this error?
# we are invoking the method cartman, but this has not yet been defined so Ruby does not know what to do with it

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

#errors.rb:68:in `cartmans_phrase': wrong number of arguments (1 for 0) (ArgumentError)
#	from errors.rb:72:in `<main>'
#
# 1. What is the line number where the error occurs?
# 68
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# it's the wrong number of arguments. 1 is being passed in, 0 are expected. It also tells us that this error came from line 72.
# 4. Where is the error in the code?
# in the definition of the method 'cartmans_phrase' 
# 5. Why did the interpreter give you this error?
# as defined currently, no args are expected so when the argument "I hate Kyle" is passed in, Ruby does not know what to do with this.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

#errors.rb:90:in `cartman_says': wrong number of arguments (0 for 1) (ArgumentError)
#	from errors.rb:94:in `<main>'

# 1. What is the line number where the error occurs?
# 90
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# error came from line 94, wrong number of arguments, expected 1 and got 0
# 4. Where is the error in the code?
# in line 94
# 5. Why did the interpreter give you this error?
# we did not pass an argument when calling the cartman_says method



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

#errors.rb:114:in `cartmans_lie': wrong number of arguments (1 for 2) (ArgumentError)
#	from errors.rb:118:in `<main>'
#
# 1. What is the line number where the error occurs?
# 114
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# error came from line 118, it was the wrong number of arguments, expected 2 but received 1
# 4. Where is the error in the code?
# line 118
# 5. Why did the interpreter give you this error?
# metho cartmans_lie expects 2 arguments, but was passed only 1 argument

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"
#errors.rb:136:in `*': String can't be coerced into Fixnum (TypeError)
#	from errors.rb:136:in `<main>'

# 1. What is the line number where the error occurs?
# 136
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# that a string can't be coerced into Fixnum
# 4. Where is the error in the code?
# line 136
# 5. Why did the interpreter give you this error?
# because we attempted to multiply "Respect my authoritay!" times. In other words we attempted to execute a method which requires Integers or Floats but passed in a string. 

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0

#errors.rb:153:in `/': divided by 0 (ZeroDivisionError)
#	from errors.rb:153:in `<main>'

# 1. What is the line number where the error occurs?
# 153
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# line 153
# 5. Why did the interpreter give you this error?
# because we asked Ruby to do the impossible and divide by zero

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

#errors.rb:171:in `require_relative': cannot load such file -- /Users/tschwart/Documents/Phase-0/phase-0/cartmans_essay.md (LoadError)
#	from errors.rb:171:in `<main>'

# 1. What is the line number where the error occurs?
# 171
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# could not load file, and details of where it attempted to find the file
# 4. Where is the error in the code?
# line 171
# 5. Why did the interpreter give you this error?
# we referenced another file to load in, but that file does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
	For this exercise, all of the errors were pretty straighforward and error messages were very descriptive. If pushed to pick one, the error from line 136 with the "coerced Fixnum" message was the most unclear.
How did you figure out what the issue with the error was?
	Having previously read in the Pine book commentary about this exact error, so previous knowledge of how to read the error message. 
Were you able to determine why each error message happened based on the code? 
	Yes, this was quite doable with the given examples and only a few lines of code max in this exercise. 
When you encounter errors in your future code, what process will you follow to help you debug?
	Similar to this exercise, answering the 5 questions provided in order will lead to looking in the right places and using everything we can from the error message to point us in the right direction.
=end
