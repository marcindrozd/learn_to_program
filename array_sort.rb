# Write the program we talked about at the very beginning of this chapter.

words_array = []

puts "Enter the words to be sorted and press Enter after each of those."
puts "Enter blank line to end typing."
word = gets.chomp

while word != "" do
	words_array << word.downcase
	word = gets.chomp
end

puts words_array.sort.join(", ")