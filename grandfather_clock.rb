# Grandfather Clock. Write a method which takes a block and calls it 
# once for each hour that has passed today. That way, if I were to pass in 
# the block do puts 'DONG!' end, it would chime (sort of) like a grandfather clock. 
# Test your method out with a few different blocks (including the one I just gave you). 
# Hint: You can use  Time.now.hour to get the current hour. 
# However, this returns a number between 0 and 23, 
# so you will have to alter those numbers in order to get ordinary clock-face numbers 
# (1 to 12).

def grandfather_clock(&block)
	current_hour = Time.now.hour
	if current_hour == 0
		current_hour = 12
	elsif current_hour >= 13
		current_hour -= 12
	end

	current_hour.times do
		block.call
	end
end

grandfather_clock {puts "DONG!"}