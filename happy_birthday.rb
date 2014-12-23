# Happy Birthday! Ask what year a person was born in, then the month, then the day. 
# Figure out how old they are and give them a big SPANK! 
# for each birthday they have had.

puts "What year were you born?"
year = gets.chomp
puts "What month were you born?"
month = gets.chomp
puts "What day were you born?"
day = gets.chomp

birthday = Time.mktime(year.to_i, month.to_i, day.to_i)
current_time = Time.new
difference_in_seconds = current_time - birthday

seconds_in_year = 365 * 24 * 60 * 60

number_of_birthdays = difference_in_seconds.to_i / seconds_in_year

number_of_birthdays.times { puts "SPANK!" }