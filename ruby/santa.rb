class Santa
	attr_reader :gender, :age, :ethnicity 
	attr_accessor :cookie, :reindeer 

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
	end 

	def get_mad_at(reindeer)
		@reindeer_ranking.push(reindeer)
		puts "Move all the way to the back, #{reindeer}."
	end
end 




santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "no gender"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Korean"]
genders.length.times do |i|
	santas.push(Santa.new(genders[i], ethnicities[i]) )
end 

bad_santa = Santa.new("agender", "black")
bad_santa.speak
bad_santa.eat_milk_and_cookies("oatmeal")
puts bad_santa.celebrate_birthday
bad_santa.get_mad_at("Vixen")
