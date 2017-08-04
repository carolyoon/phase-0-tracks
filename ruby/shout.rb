# module Shout
  
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + "!" + " :)"
#   end 

# end

# puts Shout.yell_angrily("I'm angry")
# puts Shout.yell_happily("I'm happy")

module Shout
	def shout_cheer(team)
		puts "Lets go #{team}!!!" 
	end 
end 

class Cheerleader
	include Shout
end

class Football_fans
	include Shout 
end 

cheerleader = Cheerleader.new
cheerleader.shout_cheer("Lakers")
fan = Football_fans.new
fan.shout_cheer("Chargers")