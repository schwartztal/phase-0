#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
  attr_reader :name
  def initialize
    @name = "Tal Schwartz"
  end
end


class Greetings
  def initialize
    @name = NameData.new
  end

  def hello
    puts "Hello #{@name.name}! Great to see you working so hard today"
  end

end

greet = Greetings.new
greet.hello

# Reflection

=begin

Release 1
What are these methods doing?
recalling or changing the name, age and profession instance variables for the instance of Profile

How are they modifying or returning the value of instance variables?
implicitly by recalling the instance variable in question or by changing the instance variable to be whatever new argument was passed in to the method

Release 2
What changed between the last release and this release?
added attr_reader :age
What was replaced?
we removed the what_is_age method and replaced the call in line 58 to .age instead
Is this code simpler than the last?
much simpler since we A) don't have to define a method and B) can now directly access the value of the instance variable @age

Release 3
What changed between the last release and this release?
Now we added attr_writer :age
What was replaced?
Removed the method change_my_age and update the call in line 68 to .age =
Is this code simpler than the last?
Again yes, now we're writing directly to the instance variable age instead of through an additional step of a method

Release 6
What is a reader method?
a way to directly view the instance variables
What is a writer method?
a way to directly modify the instance variables
What do the attr methods do for you?
short hand notation and easily set up the read/write/both access to the instance variables
attr_reader = read
attr_writer = write
attr_accessor = both
Should you always use an accessor to cover your bases? Why or why not?
No definitely not, there are variables that you don't want modified outside the class definition.
What is confusing to you about these methods?
Nothing right now
=end