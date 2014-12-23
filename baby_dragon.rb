# Let's say we want to make a simple virtual pet, a baby dragon. 
# Like most babies, it should be able to eat, sleep, and poop, 
# which means we will need to be able to feed it, put it to bed, 
# and take it on walks. Internally, our dragon will need to keep track of 
# if it is hungry, tired, or needs to go, but we won't be able to see 
# that when we interact with our dragon, just like you can't ask a human baby, 
# "Are you hungry?". We'll also add a few other fun ways we can interact 
# with our baby dragon, and when he is born we'll give him a name. 
# (Whatever you pass into the  new method is passed into the initialize method for you.)

# Write a program so that you can interact with your baby dragon. 
# You should be able to enter commands like  feed and walk, 
# and have those methods be called on your dragon. 
# Of course, since what you are inputting are just strings, 
# you will have to have some sort of method dispatch, 
# where your program checks which string was entered, 
# and then calls the appropriate method.

class Dragon
	def initialize name
		@name = name
		@asleep = false
		@stuffInBelly = 10 # He's full.
		@stuffInIntestine = 0 # He doesn't need to go.

		puts @name + " is born."
	end

	def start
		while true
			puts "#{@name} is looking at you. What are you going to do?"
			command = gets.chomp
			distributor(command)
		end
	end

	def distributor(command)
		case command.downcase
			when "feed" then feed
			when "walk" then walk
			when "put to bed" then putToBed
			when "toss" then toss
			when "rock" then rock
			else puts "I don't know what to do. Try something else."
		end
	end

	private

	def feed
		puts "You feed " + @name + "."
		@stuffInBelly = 10
		passageOfTime
	end

	def walk
		puts "You walk " + @name + "."
		@stuffInIntestine = 0
		passageOfTime
	end

	def putToBed
		puts "You put " + @name + " to bed."
		@asleep = true
		3.times do
			if @asleep
				passageOfTime
			end
			if @asleep
				puts @name + " snores, filling the room with smoke."
			end
		end
		if @asleep
			@asleep = false
			puts @name + " wakes up slowly."
		end
	end

	def toss
		puts "You toss " + @name + " up into the air."
		puts "He giggles, which singes your eyebrows."
		passageOfTime
	end

	def rock
		puts "You rock " + @name + " gently."
		@asleep = true
		puts "He briefly dozes off..."
		passageOfTime
		if @asleep
			@asleep = false
			puts "...but wakes when you stop."
		end
	end

	def hungry?
		@stuffInBelly <= 2
	end

	def poopy?
		@stuffInIntestine >= 8
	end

	def passageOfTime
		if @stuffInBelly > 0
			# Move food from belly to intestine.
			@stuffInBelly -= 1
			@stuffInIntestine += 1
		else # Our dragon is starving!
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts @name + " is starving! In desperation, he ate YOU!"
			exit # This quits the program.
		end

		if @stuffInIntestine >= 10
			@stuffInIntestine = 0
			puts "Whoops! " + @name + " had an accident..."
		end

		if hungry?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts @name + "'s stomach grumbles..."
		end

		if poopy?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts @name + " does the potty dance..."
		end
	end
end

pet = Dragon.new "Norbert"
pet.start