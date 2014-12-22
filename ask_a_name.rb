# Write a program which asks for a person's first name, then middle, then last. 
# Finally, it should greet the person using their full name.

puts "Enter your first name:"
first_name = gets.chomp
puts "Enter your middle name:"
middle_name = gets.chomp
puts "Enter your last name:"
last_name = gets.chomp

puts "Hello, #{first_name + " " + middle_name + " " + last_name}!"