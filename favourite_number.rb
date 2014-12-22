# Write a program which asks for a person's favorite number. 
# Have your program add one to the number, 
# then suggest the result as a bigger and better favorite number. 
# (Do be tactful about it, though.)

puts "Enter your favorite number:"
number = gets.chomp

puts "I know a bigger and better number than this! It is #{1.to_s + number}!"