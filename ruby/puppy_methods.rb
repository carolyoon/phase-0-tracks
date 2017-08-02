#Release 1
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_barks)
  	num_barks.times do 
  		puts "Woof!"
  	end 
  end

  def roll_over
  	puts "*rolls over* "
  end 

  def dog_years(human_years)
  	dog_age = human_years * 7
  	puts dog_age 
  end

  def sit
  	puts "*sits*"
  end 

  def initialize 
  	puts "Initializing new puppy instance..."
  end
end

jersey = Puppy.new

jersey.fetch("toy")
jersey.speak(3)
jersey.roll_over 
jersey.dog_years(8)
jersey.sit

#Release 2 
=begin
	
-create puppy class, initialize it and add a couple instance methods
-use a loop to make 50 instances of the class
-modify loop to store in data structure
-iterate over data to call instance methods.
	
=end


class Puppy
	
	def initialize
	end 

	def high_five
		puts "*holds one paw up to hand*"	
	end

	def growl
		puts "Grrrrr!"
	end
end 

pup_data = []

50.times do |pup_name|
	pup_name = Puppy.new
	pup_data << pup_name 
end 

pup_data.each do |pup_name|
	pup_name.high_five
	pup_name.growl
end 



