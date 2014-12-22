# So here's something for you to do in order to play around more with 
# center, ljust, and rjust: Write a program which will display 
# a Table of Contents

lineWidth = 40

puts "Table of Contents".center lineWidth
puts ""
puts "Chapter 1: Numbers".ljust(lineWidth / 2) + "page 1".rjust(lineWidth/2)
puts "Chapter 2: Letters".ljust(lineWidth / 2) + "page 72".rjust(lineWidth/2)
puts "Chapter 3: Variables".ljust(lineWidth / 2) + "page 118".rjust(lineWidth/2)

# Rewrite your Table of Contents program (from the chapter on methods). 
# Start the program with an array holding all of the information for your 
# Table of Contents (chapter names, page numbers, etc.). 
# Then print out the information from the array 
# in a beautifully formatted Table of Contents.

puts ""
puts "Done with Array"

chapters_array = ["Chapter 1: Numbers", "page 1", "Chapter 2: Letters", "page 72", "Chapter 3: Variables", "page 118"]

puts "Table of Contents".center lineWidth
chapters_array.each do |item|
	if chapters_array.index(item) % 2 == 0
		print item.ljust(lineWidth / 2)
	else
		puts item.rjust(lineWidth / 2)
	end
end