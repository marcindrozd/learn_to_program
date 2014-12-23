# One billion seconds... Find out the exact second you were born (if you can). 
# Figure out when you will turn (or perhaps when you did turn?) one billion seconds old. 
# Then go mark your calendar.

born_time = Time.mktime(1982,3,8,3,30)
billionth_second = born_time + 1000000000
puts billionth_second