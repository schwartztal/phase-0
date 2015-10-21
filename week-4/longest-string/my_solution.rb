# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
	list_of_words.max_by {|x| x.length}
end


=begin
#first pass of solution
 def longest_string(list_of_words)
 	if list_of_words[0] != nil  
  		longest_word = ""
   		list_of_words.each do |x|
     		longest_word = x if x.length > longest_word.length
   		end
   		return longest_word
   	else
   		return nil
   	end
 end
=end