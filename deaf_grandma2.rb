# Write a Deaf Grandma program. Whatever you say to grandma 
# (whatever you type in), she should respond with  
# HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals). 
# If you shout, she can hear you (or at least she thinks so) and yells back, 
# NO, NOT SINCE 1938! To make your program really believable, 
# have grandma shout a different year each time; maybe any year 
# at random between 1930 and 1950. (This part is optional, 
# and would be much easier if you read the section on Ruby's 
# random number generator at the end of the methods chapter.) 
# You can't stop talking to grandma until you shout BYE.

# Extend your Deaf Grandma program: 
# What if grandma doesn't want you to leave? 
# When you shout BYE, she could pretend not to hear you. 
# Change your previous program so that you have to shout BYE three times in a row. 
# Make sure to test your program: if you shout BYE three times, 
# but not in a row, you should still be talking to grandma.

puts "HI, SONNY WHAT DO YOU WANT?!"
response = ""
number_of_byes = 0

while number_of_byes < 3
	response = gets.chomp
	if response == "BYE" and number_of_byes == 2
		number_of_byes += 1
		puts "BYE, SONNY!"
	elsif response == "BYE"
		number_of_byes += 1
		puts "WHAT ARE YOU SAYING?!" 
	else
		if response != response.upcase
			puts "HUH?! SPEAK UP, SONNY!"
		else
			puts "NO, NOT SINCE #{rand(1930..1950)}!"
		end
		number_of_byes = 0
	end
end