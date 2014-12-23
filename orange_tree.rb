# Make an OrangeTree class. It should have a  height method which returns its height, 
# and a oneYearPasses method, which, when called, ages the tree one year. 
# Each year the tree grows taller (however much you think an orange tree 
# should grow in a year), and after some number of years (again, your call) 
# the tree should die. For the first few years, it should not produce fruit, 
# but after a while it should, and I guess that older trees produce 
# more each year than younger trees... whatever you think makes most sense. 
# And, of course, you should be able to countTheOranges 
# (which returns the number of oranges on the tree), 
# and pickAnOrange (which reduces the @orangeCount by one and returns 
# a string telling you how delicious the orange was, 
# or else it just tells you that there are no more oranges to pick this year). 
# Make sure that any oranges you don't pick one year fall off before the next year.

class OrangeTree
	def initialize
		@height = 100
		@orangeCount = 0
		@age = 0
	end

	def height
		puts "The tree is #{@height} cm high."
	end

	def pickAnOrange
		if @orangeCount > 0
			puts "You've picked an orange! It was delicious!"
			@orangeCount -= 1
		else
			puts "There are no more oranges on the tree!"
		end
	end

	def countTheOranges
		puts "There are #{@orangeCount} oranges on the tree."
	end

	def oneYearPasses
		@height += 10
		@age += 1
		@orangeCount = 0
		if @age < 10
			if @age == 2
				@orangeCount += 3
				@previousYearCount = 3
			elsif @age >= 3
				@orangeCount = @previousYearCount * 2
				@previousYearCount = @orangeCount
			end
		else
			puts "The tree has died!"
			exit
		end
	end
end

tree = OrangeTree.new
tree.height
tree.countTheOranges
tree.oneYearPasses
tree.height
tree.countTheOranges
tree.oneYearPasses
tree.height
tree.countTheOranges
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.oneYearPasses
tree.height
tree.countTheOranges
tree.pickAnOrange
tree.oneYearPasses
tree.height
tree.countTheOranges
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.height
tree.countTheOranges
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses