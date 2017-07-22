def interview
	puts "What is your name?"
	your_name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i 

	puts "What year were you born?"
	born_year = gets.chomp.to_i
		if age == 2017 - born_year
			return true
		else 
			return false
		end

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_bread = gets.chomp
		if garlic_bread == "yes"
			return true
		else
			return false
		end

	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp
		if insurance == "yes"
			return true
		else
			return false
		end
	end
interview

