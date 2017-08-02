class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  # def speak(num_barks)
  # 	speak.times do |num_barks|
  # 		puts "Woof!"
  # 	end 
  # end

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
# jersey.speak(3)
jersey.roll_over 
jersey.dog_years(8)
jersey.sit
