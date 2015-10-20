4.2 
Release 1

Puts: displays the output in the console on a new line
An Integer is a whole number (without a decimal point) while a Float is what's known as a "floating-point" number which has a decimal point and allows for a more precise description of the value. 

Integer division rounds to the nearest whole number, where float will compute the exact value of the division. 

Release 2

Hours in a Year: 
'''
irb(main):001:0> 24 * 365
=> 8760
'''

Minutes in a Decade:
'''
irb(main):002:0> 60 * 24 * 365 * 10
=> 5256000
'''

Release 5 - Exercises

[4.2.1](https://github.com/schwartztal/phase-0/blob/master/week-4/defining-variables.rb) 
[4.2.2](https://github.com/schwartztal/phase-0/blob/master/week-4/nums-letters.md)
[4.2.3](https://github.com/schwartztal/phase-0/blob/master/week-4/basic-math.rb)

Release 7 - Reflection

How does Ruby handle addition, subtraction, multiplication, and division of numbers? Pretty much as expected / as a calculator would. 
What is the difference between integers and floats? Integers are whole numbers while floats add a decimal place for more precision.
What is the difference between integer and float division? Integer division returns a quotient and remainder, and ruby will drop the remainder when returning the answer. Float division returns only a float quotient without a remainder. 
What are strings? Why and when would you use them? String are a collection of ASCII characters (typically letters and words) that are treated as such, without any numeric qualities by Ruby. You use them for user input, storing names/addresses/etc and returning user legible outputs. 
What are local variables? Why and when would you use them?
Local variables are usable only in the context in which they are declared (loop, function, etc) and are usable by other scopes. You might want to use them when you only need a variable temporarily (ie within a function) and do not need to call it again elsewhere in the program.
How was this challenge? Did you get a good review of some of the basics?
Good refresher of the content that I learned when applying for DBC. 
