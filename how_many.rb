# Write a program which tells you:
# 1. how many hours are in a year?
# 2. how many minutes are in a decade?
# 3. how many seconds old are you?
#
# Here's a tougher question:
# 4. If I am 1204 million seconds old, how old am I?

years_in_a_decade = 10
days_in_a_year = 365
hours_in_a_day = 24
minutes_in_an_hour = 60
seconds_in_a_minute = 60
my_age = 32
chris_age_in_seconds = 1204000000

# 1.
hours_in_a_year = days_in_a_year * hours_in_a_day

# 2.
minutes_in_a_decade = years_in_a_decade * hours_in_a_year * minutes_in_an_hour

# 3.
seconds_old = my_age * hours_in_a_year * minutes_in_an_hour * seconds_in_a_minute

# 4.
chris_age = chris_age_in_seconds / (hours_in_a_year * minutes_in_an_hour * seconds_in_a_minute)

puts "There are #{hours_in_a_year} hours in a year."
puts "There are #{minutes_in_a_decade} minutes in a decade."
puts "I am #{seconds_old} seconds old."
puts "Chris Pine is #{chris_age} years old."
