#create a program that will allow an interior designer to enter specific information about each client.
#the information incudes the client's name, age, number of children, decor theme, etc.
#use symbols for keys unless you need a string.

#Prompt the designer/user for all of this information 
#Convert any user input to the appropriate data type

puts "Enter the client's full name: "
client_name = gets.chomp

puts "Enter the client's age: "
client_age = gets.chomp.to_i

puts "Enter the number of children the client has: "
client_children = gets.chomp.to_i

puts "Enter the client's preferred decor theme: "
client_theme = gets.chomp

puts "Enter the client's preferred color scheme: "
client_color = gets.chomp

puts "Does the client want to remodel the entire home (Yes/No)?"
client_home = gets.chomp.downcase
	if client_home == "yes"
		client_home = true
		puts "The entire home includes the closets and garage. "
	else 
		puts "Exclude the closets and garage."
		client_home = false
	end 

puts "Enter the client's budget range: "
client_budget = gets.chomp.to_i 

#Print the hash back out to the screen when the designer has answered all of the questions.
client_data = {
	"name" => client_name, 
	age: client_age, 
	children: client_children, 
	theme: client_theme, 
	color: client_color, 
	home: client_home, 
	budget: client_budget
}

p client_data 

#Give the user the opportunity to update a key (no need to loops.)
#If designer says "none", skip it. If not, ask for a new value and update the selected key. 
puts "Are there any changes you would like to make? Enter 'none' if everything is correct."
designer_input = gets.chomp.downcase
	if designer_input == "none"
		puts "Client Data profile is complete."
	else 
		puts "What changes would you like to make? Choose from 'Name', 'Age', 'Children', 'Theme', 'Color', 'Home', 'Budget': "
		data_correction = gets.chomp.downcase.to_sym #to_sym used to change string to symbol per instructions
	end 

	p data_correction

	if data_correction == :name
		puts "Enter the correct name: "
		client_data["name"] = gets.chomp
	elsif data_correction == :age
		puts "Enter the correct age: "
		client_data[:age] = gets.chomp.to_i
	elsif data_correction == :children 
		puts "Enter the correct number of children:"
		client_data[:children] = gets.chomp.to_i
	elsif data_correction == :theme
		puts "Enter the correct preferred decor theme: "
		client_data[:theme] = gets.chomp
	elsif data_correction == :color
		puts "Enter the correct preferred color scheme: "
		client_data[:color] = gets.chomp
	elsif data_correction == :home
		puts "Does the client actually want to remodel the entire home? (Yes/No) "
		client_data[:home] = gets.chomp
	elsif data_correction == :budget
		puts "Enter the correct budget range: "
		client_data[:budget] = gets.chomp
	end 

	p client_data 

