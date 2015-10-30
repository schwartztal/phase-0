=begin
5.6 Create Accountability Groups - Psuedocode

input = an array of names of the cohort group members
output = hash with keys (accountability group names 1,2,3,4,etc) and values (array of names of people in that group)

steps for a method that divides an array of names into groups of 4-5:
first randomly sort the people array
total number of groups: length of array divided by 4 rounded down
calculate number of 5 person groups : length of the array modulus 4. the remainder is how many groups of 5 we need
calculate number of 4 person groups: total number of groups - # of 5 person groups


create the hash with keys "Accountability Group x" where x is 1..total number of groups
add to hash the groups of 5 from the beginning range of the sorted array (destructively?)
add to hash the groups of 4 from the remaining names (or from the end?)

=end

#Initial Solution

cohort = File.read("./students.txt").split("\n").to_a

accountability_groups = Hash.new
def create_acct_groups (cohort, randomize)
  if randomize == "yes"
   cohort.shuffle!
 end
  total_groups = (cohort.size / 4).to_i
  groups_of_5 = cohort.size % 4
  groups_of_4 = total_groups - groups_of_5
  accountability_groups = {}
  i=1
  total_groups.times do |x|
    accountability_groups["Accountability Group #{x+1}"] = nil
  end
  groups_of_5.times do |x|
  accountability_groups["Accountability Group #{x+1}"] = cohort.slice!(0..4)
  i+=1
  end

  groups_of_4.times do |x|
    accountability_groups["Accountability Group #{i}"] = cohort.slice!(0..3)
    i+= 1
  end
  return accountability_groups
end

puts "Do you want assign groups randomly?"
randomize = gets.chomp.downcase
accountability_groups = create_acct_groups(cohort, randomize)
accountability_groups.each {|groups, names| puts  "#{groups} : #{names}"}


=begin
What was the most interesting and most difficult part of this challenge?
By far the most difficult part of this challenge for me was deciding how to solve the problem. Without any guideance from the challenge instructions on how to divvy up the cohort into groups I got a bit lost in the sea of possibilities and it took some serious effort to just pick one and stick with. Even as I got into the psuedocode new ideas to make the algorithm more efficient or possible corner cases that could cause issues kept popping into my head and I'd go off on a mental tangent to explore it. Reigning that in and staying on task to complete a MVP and only then start thinking about new possibilities was very tough.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Definitely, although in this case I re-wrote the psuedocode at least 5 times as I changed my mind about how I wanted to approach and solve the problem. This is probably a good thing... changing the psuedocode was relatively quick and easy compared to changing the code itself.

Was your approach for automating this task a good solution? What could have made it even better?


What data structure did you decide to store the accountability groups in and why?
A hash with the key being Accountability Group # and value holding the names of individuals in that group. I chose a Hash over an Array of Arrays because I wanted to be able to reference a group by their name down the road.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
Unfortuantely, I didn't do a good job following the initial solution vs re-factoring guidelines in this challenge and ended up making a bunch of changes to the initial solution so that when it came time to "re-factor" I'd already included all the improvements I could think of.

=end
