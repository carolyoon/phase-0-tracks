def hamster
	puts "What is the hamster's name?"
	hamster_name = gets.chomp

	puts "What is the hamster's volume level, from a scale of 1-10?"
	volume = gets.chomp.to_s 

	puts "What is the hamster's fur color?"
	color = gets.chomp

	puts "Is this hamster a good or bad candidate for adoption?"
	candidate = gets.chomp

	puts "What is the hamster's approximate age?"
	age = gets.chomp.to_s
		if age == ""
			age = nil
		end
	puts "The hamster's name is #{hamster_name}."
	puts "#{hamster_name}'s volume level is #{volume}."
	puts "#{hamster_name}'s fur color is #{color}."
	puts "#{hamster_name} is a #{candidate} candidate for adoption."
	puts "#{hamster_name} is approximately #{age} years old." 
end

hamster  