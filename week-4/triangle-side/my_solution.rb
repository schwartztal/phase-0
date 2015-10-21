# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!

  if (a <= 0 || b <= 0 || c<=0)
  	false
  elsif ((a+b<=c)|| (a+c<=b)||(c+b<=a))
  	false
  else
  	true
  end
end