# I think another example method would be helpful here. 
# We'll call this one englishNumber. It will take a number, like 22, 
# and return the english version of it (in this case, the string 'twenty-two'). 
# For now, let's have it only work on integers from 0 to 100.

# Expand upon englishNumber. First, put in thousands. 
# So it should return 'one thousand' instead of 'ten hundred' and 'ten thousand' 
# instead of 'one hundred hundred'.

# Expand upon englishNumber some more. Now put in millions, so you get 'one million' 
# instead of 'one thousand thousand'. Then try adding billions and trillions. 
# How high can you go?

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

puts englishNumber(-5)
puts englishNumber(0)
puts englishNumber(9)
puts englishNumber(10)
puts englishNumber(11)
puts englishNumber(17)
puts englishNumber(32)
puts englishNumber(88)
puts englishNumber(99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(15423)
puts englishNumber(999999)
puts englishNumber(1999999)
puts englishNumber(112300000)
puts englishNumber(345678234)
puts englishNumber(5678139028)
puts englishNumber(28542016492)
puts englishNumber(1000000000000)



