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
nd
