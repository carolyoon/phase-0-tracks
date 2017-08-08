# Write out interview questions
# Store answers as variables
# Set conditionals using if/elsif statements
# Create loop for interview set to the number of employees processed
# Create loop for allergies 
# 	"sunshine" and "done" stop the loop
# Adjust the conditionals to include the allergies loop,
# Print out ending message. 

puts "How many employees will be processed?"
employees_processed = gets.chomp.to_i

until employees_processed == 0 do 

puts "What is your name?"
user_name = gets.chomp

puts "How old are you?"
user_age = gets.chomp

puts "What year were you born?"
year_born = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? ('yes' or 'no')"
order_garlic_bread = gets.chomp

puts "Would you like to enroll in company's health insurance? ('yes' or 'no')"
enroll_health_insurance = gets.chomp

valid_input = false

until valid_input 
puts "Name any allergies, one at a time. Type 'done' when finished."
allergies = gets.chomp
  if allergies == "sunshine" 
  puts "Probably a vampire."
  valid_input = true
    elsif allergies == "done"
  valid_input = true
  else
  end
end



current_year = 2017

if user_age == (current_year - year_born.to_i)
  age_result = true
else
  age_result = false
end


if user_name == "Drake Cula" || user_name == "Tu Fang"
puts "Definitely a vampire." 
elsif (user_age == true) && (order_garlic_bread == "yes" || enroll_health_insurance == "yes")
puts "Probably not a vampire."
elsif (user_age == false) && (order_garlic_bread != "yes") && (enroll_health_insurance != "yes")
puts "Almost certainly a vampire."
elsif (user_age == false) && (order_garlic_bread != "yes" || enroll_health_insurance != "yes")
puts "Probably a vampire."
elsif (allergies != "sunshine")
puts "Results inconclusive."
else
end
employees_processed -= 1 
end

print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."  


