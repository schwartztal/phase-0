
=begin
Psuedocode
1) Create new list
method name: create
input with list name
output empty hash with list name

2) Add an item with quantity
method name: add
input with list name, item name and quantity to be added
output list with item & quantity added to it

3) Remove an item
method name: remove
input with list name, item name to be removed
output list with item removed

4) Update quantity for items in list
  method name: update
  input with list name, item name and new quantity
  output list with item quantity updated

5) Print the list
method name: print
input with list name
output print of the list
=end



def create_list
  Hash.new
end

def add_item(list, item, quantity)
  list[item] = quantity
end

def remove_item(list, item)
  list.delete(item)
end

def update_item(list, item, quantity)
  list[item] = quantity
end

def print_list(list)
  list.each do |item,quantity|
  	puts "#{quantity} #{item}"
  end
end

grocery_list = create_list
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
remove_item(grocery_list, "Lemonade")
update_item(grocery_list, "Ice Cream", 1)
#print_list(grocery_list)

puts "What would you like to do next? Pick from the following options:"
puts "Create a new list"
puts "Add an item"
puts "Remove an item"
puts "Update quantity"
puts "Print the list"
action = gets.chomp.downcase

if action == "create"
	puts "Create a new list! What would you like to name your list?"
	name = gets.chomp
end

=begin

GPS 2.2 Reflection 	

What did you learn about pseudocode from working on this challenge? Psuedocode was a really handy way to quickly map out the inputs required and the outputs desired for the behaviors we wanted each method to perform. This was a useful guide when we went to implement the first pass of code. 
What are the tradeoffs of using Arrays and Hashes for this challenge? A hash is the most fitting solution since we have a list of items & quantities, which conveniently maps perfectly to the key => value pairs of hashes. An array would also be possible, but probably not the best fit. 
What does a method return? By default a method returns the list line of code in it's definition. It's also possible to explicitly set what a method returns with Return
What kind of things can you pass into methods as arguments? variables, strings, integers or floats
How can you pass information between methods? You can call a method from within another method and pass the information in as an argument. 
What concepts were solidified in this challenge, and what concepts are still confusing? 

	
=end
