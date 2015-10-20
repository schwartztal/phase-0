#first_name = nil
#middle_name = nil
#last_name = nil


first_name = gets.chomp
puts 'Okay ' + first_name + ' what is your middle name?'
middle_name = gets.chomp
puts ' and your last name? '
last_name = gets.chomp
puts 'Hi ' + first_name + ' ' +  middle_name + ' ' + last_name + ' very nice to meet you!'



puts 'What is your favorite number?'
fav_number = gets.chomp.to_i
better_number = fav_number + 1
puts 'That\'s a pretty good number, but have you considered ' + better_number.to_s + ' ? It\'s pretty clearly bigger and better! '


=begin
How do you define a local variable?

variable = nil

or

variable = initial_value

How do you define a method?

	def method_name(args)
		do some stuff here
	end

What is the difference between a local variable and a method?

A local variable is a string, float or integer which can be used in the current scope. A method is a pre-defined or user-defined modification or set of modifications to the input args that are passed in when called. 


How do you run a ruby program from the command line?
	ruby ruby_file_name.rb
How do you run an RSpec file from the command line?
	rspec spec_file_name.rb

What was confusing about this material? What made sense?
	Pretty much all made sense. The one issue I ran into that had me scratching my head was on 4.3.2 when the rspec was looking for the method to ouptut a string as defined by the solution, but instead I was displaying the string with puts which actually returned nil for the method. Good to know!

=end


