# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
	array_1 + array_2
end

#alternate solution 1
#def array_concat(array_1, array_2)
#	array_1.concat(array_2)
#end

=begin
verbose solution
def array_concat(array_1, array_2)
  array_2.each do |x| 
  	array_1 << x
  end
  array_1
end
=end
