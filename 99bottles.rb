# "99 bottles of beer on the wall..." 
# Write a program which prints out the lyrics to that beloved classic, 
# that field-trip favorite: "99 Bottles of Beer on the Wall."

number_of_bottles = 99

while number_of_bottles > 0
	puts "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer."
	number_of_bottles -= 1
	puts "Take one down and pass it around, #{number_of_bottles} bottles of beer on the wall."
	puts ""
end