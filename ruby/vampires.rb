#write out interview questions
#store user input 
#assign boolean values on variables 
#make comparative expressions 
#print results 


	puts "What is your name?"
	your_name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i 

	puts "What year were you born?"
	born_year = gets.chomp.to_i


	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_bread = gets.chomp
	
	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp


		current_year = 2017
		if age == current_year - born_year
			age = true
		else 
			age = false 
		end

		if garlic_bread == "yes"
			garlic_bread = true
		else
			garlic_bread = false
		end

		if insurance == "yes"
			insurance = true
		else
			insurance = false
		end


if age && (garlic_bread || insurance) 
	vampire = "Probably not a vampire."
end 

if !age && (!garlic_bread || !insurance)
	vampire = "Probably a vampire."
end

if !age && !garlic_bread && !insurance
	vampire = "Almost certainly a vampire."
end

if your_name == ("Drake Cula" || "Tu Fang")
	vampire = "Definitely a vampire."
end

if vampire
	print vampire
else
	print "Results inconclusive"
end 


