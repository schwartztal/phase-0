# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #make an instance variable letter and then pick at random from an array of letters:  b i n g o
  #make an instance variable number and generate a random number from 0-99 then add 1

# Check the called column for the number called.
  #

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution
# require 'pp'

# class BingoBoard
# attr_reader :bingo_board

#   def initialize(*board)
#     @bingo_board = board
#     self.new_board
#   end

# def new_board
#   empty_column = Array.new(5)
#   @column_b = empty_column.map{|x| x = rand(14)+1}
#   @column_i = empty_column.map{|x| x = rand(14)+15}
#   @column_n = empty_column.map{|x| x = rand(14)+30}
#   @column_g = empty_column.map{|x| x = rand(14)+45}
#   @column_o = empty_column.map{|x| x = rand(14)+60}
#   @bingo_board = [@column_b, @column_i, @column_n, @column_g, @column_o].transpose
# end



# def call
#   @letter = ["B","I","N","G","O"].sample
#   case
#   when @letter == "B" then @number = 1 + rand(14)
#   when @letter == "I" then @number = 15 + rand(14)
#   when @letter == "N" then @number = 30 + rand(14)
#   when @letter == "G" then @number = 45 + rand(14)
#   when @letter == "O" then @column = 60 + rand(14)
#   end
#   p " Now calling #{@letter}#{@number}"
#   self.check
# end

# def check
#   case
#   when @letter == "B" then @column = 0
#   when @letter == "I" then @column = 1
#   when @letter == "N" then @column = 2
#   when @letter == "G" then @column = 3
#   when @letter == "O" then @column = 4
#   end

#   @transposed_board =  @bingo_board.transpose
#   @transposed_board[@column].map!{|x| x = x == @number ? "x" : x}
#   @bingo_board = @transposed_board.transpose
# end

# end

# Refactored Solution
require 'pp'

class BingoBoard
attr_reader :bingo_board

  def initialize(*board)
    @bingo_board = board
    self.new_board
  end

def new_board
  empty_column = Array.new(5)
  column_b = (1..15).to_a.shuffle.take(5)
  column_i = (16..30).to_a.shuffle.take(5)
  column_n = (31..45).to_a.shuffle.take(5)
  column_g = (46..60).to_a.shuffle.take(5)
  column_o = (61..75).to_a.shuffle.take(5)
  @bingo_board = [column_b, column_i, column_n, column_g, column_o].transpose
end



def call
  @letter = ["B","I","N","G","O"].sample
  case
  when @letter == "B" then @number = 1 + rand(14)
  when @letter == "I" then @number = 15 + rand(14)
  when @letter == "N" then @number = 30 + rand(14)
  when @letter == "G" then @number = 45 + rand(14)
  when @letter == "O" then @number = 60 + rand(14)
  end
  p " Now calling #{@letter} #{@number}"
  self.check
end

def check
  case
  when @letter == "B" then @column = 0
  when @letter == "I" then @column = 1
  when @letter == "N" then @column = 2
  when @letter == "G" then @column = 3
  when @letter == "O" then @column = 4
  end

  @transposed_board =  @bingo_board.transpose
  @transposed_board[@column].map!{|x| x = x == @number ? "x" : x}
  @bingo_board = @transposed_board.transpose
end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
 15.times do
 new_game.call
 end
pp new_game.bingo_board

#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
I actually had an incredibly difficult time psuedocoding this challenge, to the point of giving up pretty early on and moving to the initial solution. My psuedocode in previous challenges has looked pretty similiar to the prompts that we were given for this challenge and frankly I didn't and still don't really know waht to put in addition to the prompts without using any language specific methods or approaches. This is definitely an area of weakness that I want to focus on in future challenges and the on-site portion of the course.

What are the benefits of using a class for this challenge?
The complexity of the board, the calls and checking the answers is all handled in the class and the driver code remains clean and simple. It also allows the methods #call and #check to be defined seperately so you could access #check on it's own, but also link them so that every time you #call a new number, it will also #check whether that number was on the board.


How can you access coordinates in a nested array?
by calling the coordinates of the nested array as such: array[i][j] which gives the j index of the array in index position i of the parent array. further layers of nesting work in the same manner, just add another index position to the end of the call to reference the element of interest.

What methods did you use to access and modify the array?
.transpose which flips rows & columns - i used this to make accessing the guess location much simpler. Since the arrays are arranged by rows but the call is for a column, the most direct way i could think of pulling each of the possible answers for the letter was to tranpose the array and then iterate over each position in the array index that now represents the letter called.
.map once the array had been transformed and we've selected the column of interest to go through each element of that array

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
 #transpose which is kind of an easy example to pick for this reflection answer. It assumes that self is an array of arrays and then flips the rows and columns and returns a new array of arrays. The length of the subarrays must match (ie it must be a square 2 dimensional array, not rectangular) or the method will return an error.

How did you determine what should be an instance variable versus a local variable?
I actually used all instance variables until reading this question in the reflection. After going back to look at the code I found I could refactor one additional step and change a few of the instance variables into local variables. The distinction is whether the variables are needed anywhere outside of the method in which they are created and modified. Most of my variables were re-used elsewhere, but the columns in my new_board method don't need to exist after serving their purpose of creating the new board so it's better to use local variables there.

What do you feel is most improved in your refactored solution?
The new_board method was updated to fix a bug that would sometimes insert the same value more than once in the board. This is because I was using rand() on each index position to generate the number, but this method has no knowledge of numbers that were previously generated so in my testing I found that sometimes I would get a new board that didn't look quite right with duplicates. Switching to a pre-defined array, shuffling and then just picking 5 both ensures that there won't be any duplicates and is a slightly more straightforward to read code.


=end
