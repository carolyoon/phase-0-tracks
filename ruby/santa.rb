class Santa
	attr_reader :celebrate_birthday, :get_mad_at, :eat_milk_and_cookies, :speak, :santa_instance 
	attr_accessor :age, :gender, :reindeer 

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

	def santa_instance
		puts "Santa is #{@age} year old, #{@ethnicity}, #{@gender} who loves to deliver presents."
	end 

end 

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "no gender"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Korean"]
genders.length.times do |i|
	santas.push(Santa.new(genders[i], ethnicities[i]) )
end 

#driver code 
bad_santa = Santa.new("male", "black")
bad_santa.speak
bad_santa.eat_milk_and_cookies("oatmeal")
puts bad_santa.celebrate_birthday
bad_santa.get_mad_at("Vixen")
bad_santa.santa_instance

#random Santa generator 
class Random_santa
	attr_reader :random_genders, :random_ethnicities, :random_age

def random_genders 
	genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "no gender"]
	rand_gender = genders.sample
	@rand_gender = rand_gender
end

def random_ethnicities
	ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Korean"]
	rand_ethnicity = ethnicities.sample
	@rand_ethnicity = rand_ethnicity 
end 

def random_age
	rand_age = rand(140)
	@rand_age = rand_age
end 

puts "Welcome to the Santa Program! Type start to begin: "
enter = gets.chomp 

santas = []

i = 0
while i < 100 do 
		rand_santa = Random_santa.new
		rand_santa.random_genders
		rand_santa.random_ethnicities
		rand_santa.random_age

		#driver code 
		puts "----------------------------------"
		puts "#{rand_santa.random_genders}"
		puts "#{rand_santa.random_ethnicities}"
		puts "#{rand_santa.random_age}"
		puts '-----------------------------------'

		i += 1 
	end 
end 




