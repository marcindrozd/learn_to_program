# "Ninety-nine bottles of beer..." Using englishNumber and your old program, 
# write out the lyrics to this song the right way this time. 
# Punish your computer: have it start at 9999. 
# (Don't pick a number too large, though, because writing all of that to 
# the screen takes your computer quite a while. 
# A hundred thousand bottles of beer takes some time; and if you pick a million, 
# you'll be punishing yourself as well!

def englishNumber number
	if number < 0 # No negative numbers.
		return "Please enter a number that isn't negative."
	end
	if number == 0
		return 'zero'
	end

	# No more sepcial cases! No more returns!

	numString = "" # This is the string we will return.

	onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	# "left" is how much of the number we still have left to write out.
	# "write" is the part we are writing out right now.

	left = number

	write = left / 1000000000 # How many billions left to write out?
	left = left - write * 1000000000 # Subtract off those millions.

	if write > 0
		# Using recurrence to call back the original method
		billions = englishNumber write
		numString = numString + billions + " billion"
		if left > 0
			# So we don't write two billionfifty-one"
			numString = numString + " "
		end
	end

	write = left / 1000000 # How many millions left to write out?
	left = left - write * 1000000 # Subtract off those millions.

	if write > 0
		# Using recurrence to call back the original method
		millions = englishNumber write
		numString = numString + millions + " million"
		if left > 0
			# So we don't write 'two millionfifty-one'
			numString = numString + " "
		end
	end

	write = left / 1000 # How many thousands left to write out?
	left = left - write * 1000 # Subtract off those thousands.

	if write > 0
		# Using recurrence to call back the original method
		thousands = englishNumber write
		numString = numString + thousands + " thousand"
		if left > 0
			# So we don't write 'two thousandfifty-one'
			numString = numString + " "
		end
	end

	write = left / 100 # How many hundreds left to write out?
	left = left - write * 100 # Subtract off those hundreds.

	if write > 0
		# Using recurrence to call back the original method
		hundreds = englishNumber write
		numString = numString + hundreds + " hundred"
		if left > 0
			# So we don't write 'two hundredfifty-one'...
			numString = numString + " "
		end
	end

	write = left / 10 # How many tens left to write out?
	left = left - write * 10 # Subtract off those tens.

	if write > 0
		if ((write == 1) and (left > 0))
			# Since we can't write 'tenty-two' instead of 'twelve',
			# we have to make a special exception for these.
			numString = numString + teenagers[left - 1]
			# The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'
			# Since we took care of the digit in the ones place already,
			# we have nothing left to write
			left = 0
		else
			numString = numString + tensPlace[write - 1]
			# The "-1" is because tensPlace[3] is 'forty', not 'thirty'
		end

		if left > 0
			# So we don't write 'sixtyfour'...
			numString = numString + "-"
		end
	end

	write = left # How many ones left to write out?
	left = 0 # Subtract off thoe ones.

	if write > 0
		numString = numString + onesPlace[write - 1]
		# The "-1" is because onesPlace[3] is 'four', not 'three'.
	end

	# Now we just return "numString
	numString
end

number_of_bottles = 99

while number_of_bottles > 0
	puts "#{englishNumber(number_of_bottles).capitalize} #{number_of_bottles == 1 ? "bottle" : "bottles"} of beer on the wall, #{englishNumber(number_of_bottles)} #{number_of_bottles == 1 ? "bottle" : "bottles"} of beer."
	number_of_bottles -= 1
	puts "Take one down and pass it around, #{englishNumber(number_of_bottles)} #{number_of_bottles == 1 ? "bottle" : "bottles"} of beer on the wall."
	puts ""
end

